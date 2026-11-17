#include "clcd.h"
#include <xc.h>

void init_clcd() {

  TRISD = 0;
  TRISC = TRISC & 0xF8;
  __delay_ms(15);
  clcd_write(EIGHT_BIT, INS);
  __delay_us(4100);
  clcd_write(EIGHT_BIT, INS);
  __delay_us(100);
  clcd_write(EIGHT_BIT, INS);
  __delay_us(100);
  CURSOR_HOME;
  __delay_us(100);
  TWOLINE_5x8_MATRIX_8BIT;
  __delay_us(100);
  DISPLAY_ON_CURSOR_OFF;
  __delay_us(100);
  CLEAR;
  __delay_us(100);
}

void clcd_write(unsigned char byte, unsigned char control) {

  CLCD_RS = control;
  PORT = byte;

  CLCD_EN = HI;
  CLCD_EN = LO;
  PORT_DIR = INPUT;
  CLCD_RW = HI;
  CLCD_RS = INS;
  do {

    CLCD_EN = HI;
    CLCD_EN = LO;
  } while (BUSY);
  CLCD_RW = LO;
  PORT_DIR = OUTPUT;
}

void clcd_putch(const unsigned char data, unsigned char addr) {

  clcd_write(addr, INS);
  clcd_write(data, DATA);
}

void clcd_print(const char *data, unsigned char addr) {

  clcd_write(addr, INS);
  while (*data != '\0') {

    clcd_write(*data++, DATA);
  }
}
