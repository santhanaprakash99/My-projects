#include "tftp.h"
#include <string.h>
#include <sys/types.h>
#include <unistd.h>

ssize_t read_block(int filefd, char *buffer, char *mode) {

  ssize_t size = (strcmp(mode, "octet") == 0) ? 1 : 512;

  if (strcmp(mode, "netascii") == 0) {
    int count = 0;
    char ch;
    while (count < size && read(filefd, &ch, 1) > 0) {
      if (ch == '\n') {
        buffer[count++] = '\r';
        if (count < size) {
          buffer[count++] = '\n';
        } else {
          buffer[count] = ch;
        }
      }
    }
    return count;
  }
  return read(filefd, buffer, size);
}
void write_block(int filefd, char *buffer, ssize_t len, char *mode) {

  if (strcmp(mode, "netascii") == 0) {
    for (int i = 0; i < len; i++) {
      if (buffer[i] == '\r' && i + 1 < len && buffer[i + 1] == '\n') {
        continue;
      }
      write(filefd, &buffer[i], 1);
    }
  } else {
    write(filefd, buffer, len);
  }
}
