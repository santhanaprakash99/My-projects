#include "uart.h"
#include "pic18f4580.h"
#include <xc.h>

void init_uart() {

  /* Seriel initialization */
  RX_PIN = 1;
  TX_PIN = 0;

  /* Enabling 8bit mode */
  TX9 = 0;

  TXEN = 1;
  SYNC = 0;
  SENDB = 0;
  BRGH = 1;

  SPEN = 1;
  RX9 = 0;
  CREN = 1;

  BRG16 = 0;

  /* set to 10 for 115200, 64 for 19200 and 129 for 9600 */
  SPBRG = 129;
  TXIF = 0;
  RCIF = 0;
}
void putch(char data) {

  while (!TXIF) {

    continue;
  }
  // TXIF = 0;
  TXREG = data;
}

int getch() {
  if (OERR) {

    CREN = 0;
    CREN = 1;
  }

  while (!RCIF) {

    continue;
  }
  return RCREG;
}

int puts(const char *s) {

  while (*s) {

    putch(*s++);
  }
  return 0;
}
unsigned char getche() {

  unsigned char c;
  putch(c = getch());

  return (c);
}
