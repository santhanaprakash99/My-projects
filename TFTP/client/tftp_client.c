#include "tftp_client.h"
#include "tftp.h"
#include <arpa/inet.h>
#include <asm-generic/socket.h>
#include <fcntl.h>
#include <netinet/in.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <unistd.h>

char cur_mode[16] = "default";

ssize_t read_block(int filefd, char *buffer, char *mode);
void write_block(int filefd, char *buffer, ssize_t len, char *mode);

int main() {
  char command[256];
  tftp_client_t client;
  memset(&client, 0, sizeof(client)); // Initialize client structure

  // Main loop for command-line interface
  while (1) {
    int opt;
    printf("tftp> ");
    printf("\n1.Connect\n2.Put\n3.Get\n4.Mode\n5.Exit\n");

    if (scanf("%d", &opt) != 1) {

      while (getchar() != '\n')
        ;
      continue;
    }
    while (getchar() != '\n')
      ;
    switch (opt) {

    case 1: {
      printf("Enter the ip address: ");
      fgets(command, sizeof(command), stdin);
      command[strcspn(command, "\n")] = '\0';
      connect_to_server(&client, command, PORT);
      break;
    }
    case 2: {

      printf("Enter the filename : ");
      fflush(stdout);
      fgets(command, sizeof(command), stdin);
      command[strcspn(command, "\n")] = '\0';
      put_file(&client, command);
      break;
    }
    case 3: {
      printf("Enter the filename : ");
      fflush(stdout);
      fgets(command, sizeof(command), stdin);
      command[strcspn(command, "\n")] = '\0';
      get_file(&client, command);
      break;
    }
    case 4: {

      printf("Enter the mode name : ");
      fflush(stdout);
      fgets(command, sizeof(command), stdin);
      command[strcspn(command, "\n")] = '\0';
      if (strcmp(command, "octet") == 0 || strcmp(command, "netascii") == 0) {
        strcpy(cur_mode, command);
      } else {
        strcpy(cur_mode, "default");
      }
      printf("Mode set to %s\n", cur_mode);
      break;
    }
    case 5:
      disconnect(&client);
      printf("Exiting....\n");
      exit(EXIT_SUCCESS);
    default:
      printf("Invalid option!\n");
      exit(EXIT_FAILURE);
    }
  }

  return 0;
}

// This function is to initialize socket with given server IP, no packets sent
// to server in this function
void connect_to_server(tftp_client_t *client, char *ip, int port) {

  // Create UDP socket
  client->sockfd = socket(AF_INET, SOCK_DGRAM, 0);
  if (client->sockfd < 0) {
    perror("Socket failed");
    return;
  }
  if (inet_pton(AF_INET, ip, &client->server_addr.sin_addr) <= 0) {
    printf("Invalid ip!!\n");
    client->sockfd = -1;
    return;
  }

  struct timeval time;
  time.tv_sec = TIMEOUT_SEC;
  time.tv_usec = 0;

  if (setsockopt(client->sockfd, SOL_SOCKET, SO_RCVTIMEO, &time, sizeof(time)) <
      0) {

    perror("recive timeout");
    return;
  }
  if (setsockopt(client->sockfd, SOL_SOCKET, SO_SNDTIMEO, &time, sizeof(time)) <
      0) {

    perror("send timeout");
    return;
  }

  // Set up server address
  client->server_addr.sin_family = AF_INET;
  client->server_addr.sin_port = htons(port);
  client->server_addr.sin_addr.s_addr = inet_addr(ip);
  client->server_len = sizeof(client->server_addr);

  printf("Connected to %s : %d\n", ip, port);
}

void put_file(tftp_client_t *client, char *filename) {
  // Send WRQ request and send file
  if (client->sockfd < 0) {

    printf("Error : Not connected to any server.\n");
    return;
  }
  int filefd = open(filename, O_RDONLY);
  if (filefd < 0) {

    perror("file open failed");
    return;
  }
  printf("Sending %s...\n", filename);
  tftp_packet pkt;
  memset(&pkt, 0, sizeof(pkt));
  pkt.opcode = htons(WRQ);
  strcpy(pkt.body.request.filename, filename);
  strcpy(pkt.body.request.mode, cur_mode);

  sendto(client->sockfd, &pkt, sizeof(pkt), 0,
         (struct sockaddr *)&client->server_addr, client->server_len);
  int n =
      recvfrom(client->sockfd, &pkt, sizeof(pkt), 0,
               (struct sockaddr *)&client->server_addr, &client->server_len);
  if (n < 0) {

    perror("Receive failed");
    close(filefd);
    return;
  }
  uint16_t opcode = ntohs(pkt.opcode);
  if (opcode == ERROR) {

    printf("Server error %u : %s\n", ntohs(pkt.body.error_packet.error_code),
           pkt.body.error_packet.error_msg);
    close(filefd);
    return;
  }
  if (n < 4 || ntohs(pkt.opcode) != ACK) {
    perror("WRQ failed");
    close(filefd);
    return;
  }
  printf("Ack received for block 0\n");
  uint16_t block = 1;
  ssize_t bytes_read;
  while (1) {
    pkt.opcode = htons(DATA);
    pkt.body.data_packet.block_number = htons(block);

    bytes_read = read_block(filefd, pkt.body.data_packet.data, cur_mode);
    if (bytes_read < 0) {
      perror("Read failed");
      break;
    }
    sendto(client->sockfd, &pkt, 4 + bytes_read, 0,
           (struct sockaddr *)&client->server_addr, client->server_len);

    n = recvfrom(client->sockfd, &pkt, sizeof(pkt), 0,
                 (struct sockaddr *)&client->server_addr, &client->server_len);

    if (n < 0) {
      perror("Receive failed");
      break;
    }
    if (n < 4) {
      printf("Failed to receive ACK.\n");
      break;
    }
    uint16_t opcode = ntohs(pkt.opcode);
    uint16_t ack_block = ntohs(pkt.body.ack_packet.block_number);
    if (opcode == ERROR) {

      printf("Server error %u : %s\n", ntohs(pkt.body.error_packet.error_code),
             pkt.body.error_packet.error_msg);
      break;
    }
    if (opcode == ACK && ack_block == block) {
      printf("Ack received for block %u\n", block);
      block++;
      if (bytes_read < 512) {

        printf("File upload completed successfully!\n");
        break;
      }
    } else {
      printf("ACK mismatch : Expected block %d, got %d", block, ack_block);
      break;
    }
  }
  close(filefd);
}
void get_file(tftp_client_t *client, char *filename) {
  // Send RRQ and recive file
  if (client->sockfd < 0) {
    printf("Error: Not connected to any server!!\n");
    return;
  }
  int filefd = open(filename, O_WRONLY | O_CREAT | O_TRUNC, 0644);
  if (filefd < 0) {
    perror("file open failed");
    return;
  }
  printf("Recieving %s....\n", filename);
  tftp_packet pkt;
  memset(&pkt, 0, sizeof(pkt));
  pkt.opcode = htons(RRQ);
  strcpy(pkt.body.request.filename, filename);
  strcpy(pkt.body.request.mode, cur_mode);

  if (sendto(client->sockfd, &pkt, sizeof(pkt), 0,
             (struct sockaddr *)&client->server_addr, client->server_len) < 0) {

    perror("RRQ failed");
    close(filefd);
    return;
  }

  // tftp_packet data_pkt;
  uint16_t block = 1;
  // ssize_t bytes_read;
  while (1) {

    int n =
        recvfrom(client->sockfd, &pkt, sizeof(pkt), 0,
                 (struct sockaddr *)&client->server_addr, &client->server_len);
    if (n < 0) {
      perror("Receive failed");
      //        printf("File download failed!\n");
      close(filefd);
      return;
    }
    if (n < 4) {

      printf("Error recieving packet\n");
      return;
    }
    uint16_t opcode = ntohs(pkt.opcode);
    uint16_t recv_block = ntohs(pkt.body.data_packet.block_number);

    if (opcode == ERROR) {
      printf("Server error %u : %s\n", ntohs(pkt.body.error_packet.error_code),
             pkt.body.error_packet.error_msg);
      close(filefd);
      unlink(filename);
      return;
    }

    if (opcode == DATA && recv_block == block) {

      ssize_t data_len = n - 4;
      write_block(filefd, pkt.body.data_packet.data, data_len, cur_mode);

      tftp_packet ack_pkt;
      ack_pkt.opcode = htons(ACK);
      ack_pkt.body.ack_packet.block_number = htons(block);
      if (sendto(client->sockfd, &ack_pkt, 4, 0,
                 (struct sockaddr *)&client->server_addr,
                 client->server_len) < 0) {

        perror("Ack failed");
        // printf("File downloaded failed\n");
        break;
      }
      printf("Data block %u received, ACK sent\n", block);
      block++;

      if (data_len < 512) {
        printf("File download completed successfully!\n");
        break;
      }
    }
  }

  close(filefd);
}

void disconnect(tftp_client_t *client) {
  // close fd
  if (client->sockfd >= 0) {
    close(client->sockfd);
    client->sockfd = -1;
    memset(&client->server_addr, 0, sizeof(client->server_addr));
    client->server_len = 0;
    printf("Disconnected from server.\n");
  } else {
    printf("NO active connection to disconnect.\n");
  }
}
