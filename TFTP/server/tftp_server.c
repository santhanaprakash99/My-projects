#include "tftp.h"
#include <arpa/inet.h>
#include <asm-generic/socket.h>
#include <bits/types/struct_iovec.h>
#include <bits/types/struct_timeval.h>
#include <fcntl.h>
#include <netinet/in.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <unistd.h>

/* Name     : Santhanaprakash M
 * Batch    : 26001B
 * Date     : 19.09.2026
 * Title    : Trivial File Transfer Protocol (TFTP)
 * Overview : Trivial File Transfer Protocol (TFTP) is a simple file transfer
 * protocol (RFC 1350) mainly used for file transfer. It supports limited
 * features (no authentication, no directory listing) and focuses on simplicity.
 * Modes: netascii, octet (binary)*/

void handle_client(int sockfd, struct sockaddr_in client_addr,
                   socklen_t client_len, tftp_packet *packet);

int main() {
  int sockfd;
  struct sockaddr_in server_addr, client_addr;
  socklen_t client_len = sizeof(client_addr);
  tftp_packet packet;

  // Create UDP socket

  sockfd = socket(AF_INET, SOCK_DGRAM, 0);
  if (sockfd < 0) {

    perror("Socket failed");
    exit(EXIT_FAILURE);
  }

  struct timeval time;
  time.tv_sec = TIMEOUT_SEC;
  time.tv_usec = 0;
  if (setsockopt(sockfd, SOL_SOCKET, SO_RCVTIMEO, &time, sizeof(time)) < 0) {

    perror("Receive timeout");
    return -1;
  }
  if (setsockopt(sockfd, SOL_SOCKET, SO_SNDTIMEO, &time, sizeof(time)) < 0) {

    perror("send timeout");
    return -1;
  }
  // Set up server address
  memset(&server_addr, 0, sizeof(server_addr));
  server_addr.sin_family = AF_INET;
  server_addr.sin_port = htons(PORT);
  server_addr.sin_addr.s_addr = htonl(INADDR_ANY);

  // Bind the socket
  if (bind(sockfd, (struct sockaddr *)&server_addr, sizeof(server_addr)) < 0) {

    perror("Bind failed");
    close(sockfd);
    exit(EXIT_FAILURE);
  }

  printf("TFTP Server listening on port %d...\n", PORT);

  // Main loop to handle incoming requests
  while (1) {
    int n = recvfrom(sockfd, &packet, BUFFER_SIZE, 0,
                     (struct sockaddr *)&client_addr, &client_len);
    if (n < 0) {
      continue;
    }

    handle_client(sockfd, client_addr, client_len, &packet);
  }

  close(sockfd);
  return 0;
}

void handle_client(int sockfd, struct sockaddr_in client_addr,
                   socklen_t client_len, tftp_packet *packet) {
  // Extract the TFTP operation (read or write) from the received packet and
  // call send_file or receive_file accordingly

  uint16_t opcode = ntohs(packet->opcode);
  char *file = packet->body.request.filename;
  char *mode = packet->body.request.mode;

  char client_ip[INET_ADDRSTRLEN];
  inet_ntop(AF_INET, &(client_addr.sin_addr), client_ip, INET_ADDRSTRLEN);
  uint16_t client_port = ntohs(client_addr.sin_port);

  printf("\nClient connected from %s : %d\n", client_ip, client_port);

  if (opcode == WRQ) {

    printf("Received WRQ for file : %s\n", file);
    int filefd = open(file, O_WRONLY | O_CREAT | O_TRUNC, 0644);
    if (filefd < 0) {
      perror("file open failed");

      tftp_packet err_pkt;
      memset(&err_pkt, 0, sizeof(err_pkt));
      err_pkt.opcode = htons(ERROR);
      err_pkt.body.error_packet.error_code = htons(2);
      strcpy(err_pkt.body.error_packet.error_msg,
             "Cannot create file on the server");
      sendto(sockfd, &err_pkt,
             4 + strlen(err_pkt.body.error_packet.error_msg) + 1, 0,
             (struct sockaddr *)&client_addr, client_len);
      return;
    }
    tftp_packet ack_pkt, data_pkt;
    ack_pkt.opcode = htons(ACK);
    ack_pkt.body.ack_packet.block_number = htons(0);
    sendto(sockfd, &ack_pkt, 4, 0, (struct sockaddr *)&client_addr, client_len);

    uint16_t block = 1;

    while (1) {

      socklen_t addr_len = sizeof(client_addr);
      int n = recvfrom(sockfd, &data_pkt, sizeof(data_pkt), 0,
                       (struct sockaddr *)&client_addr, &addr_len);
      if (n < 4)
        continue;

      uint16_t opcode = ntohs(data_pkt.opcode);

      if (opcode == ERROR) {

        printf("Client sent error %u : %s\n",
               ntohs(data_pkt.body.error_packet.error_code),
               data_pkt.body.error_packet.error_msg);
        close(filefd);
        return;
      }
      uint16_t data_block = ntohs(data_pkt.body.data_packet.block_number);
      printf("received packet :  opcode=%u block=%u len=%d exp=%u\n", opcode,
             data_block, n, block);

      if (opcode == DATA && data_block == block) {
        ssize_t data_len = n - 4;
        write_block(filefd, data_pkt.body.data_packet.data, data_len, mode);

        ack_pkt.opcode = htons(ACK);
        ack_pkt.body.ack_packet.block_number = htons(block);
        sendto(sockfd, &ack_pkt, 4, 0, (struct sockaddr *)&client_addr,
               addr_len);

        block++;
        if (data_len < 512) {

          printf("File %s received successfully!\n", file);
          break;
        }
      }
    }
    close(filefd);
  } else if (opcode == RRQ) {

    printf("Received RRQ for file : %s\n", file);
    int filefd = open(file, O_RDONLY);
    if (filefd < 0) {
      perror("open file failed for RRQ");

      tftp_packet err_pkt;
      memset(&err_pkt, 0, sizeof(err_pkt));
      err_pkt.body.error_packet.error_code = htons(1); // File not found
      strcpy(err_pkt.body.error_packet.error_msg, "File not found");
      sendto(sockfd, &err_pkt,
             4 + strlen(err_pkt.body.error_packet.error_msg) + 1, 0,
             (struct sockaddr *)&client_addr, client_len);
      return;
    }
    tftp_packet data_pkt, ack_pkt;
    uint16_t block = 1;
    ssize_t bytes_read;

    while (1) {

      data_pkt.opcode = htons(DATA);
      data_pkt.body.data_packet.block_number = htons(block);
      // socklen_t addr_len = client_len;

      bytes_read = read_block(filefd, data_pkt.body.data_packet.data, mode);
      if (bytes_read < 0) {
        perror("Read failed");
        break;
      }
      while (1) {
        sendto(sockfd, &data_pkt, 4 + bytes_read, 0,
               (struct sockaddr *)&client_addr, client_len);
        socklen_t addr_len = sizeof(client_addr);

        int n = recvfrom(sockfd, &ack_pkt, sizeof(ack_pkt), 0,
                         (struct sockaddr *)&client_addr, &addr_len);

        if (n >= 4 && n >= 0) {

          uint16_t opcode = ntohs(ack_pkt.opcode);
          if (opcode == ERROR) {

            printf("Client sent error %u : %s\n",
                   ntohs(ack_pkt.body.error_packet.error_code),
                   ack_pkt.body.error_packet.error_msg);
            close(filefd);
            return;
          }
          uint16_t ack_block = ntohs(ack_pkt.body.ack_packet.block_number);
          if (opcode == ACK && ack_block == block) {
            break;
          }
        }

        printf("Ack fail for block %d, resending...\n", block);
      }
      block++;
      if (bytes_read < 512) {
        printf("File %s sent successfully.\n", file);
        break;
      }
    }
    close(filefd);
  }
}
