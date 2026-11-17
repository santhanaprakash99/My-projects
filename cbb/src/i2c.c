#include "i2c.h"
#include "pic18f4580.h"
#include <xc.h>

void init_i2c() {

  /* pins config */
  TRISC3 = 1;
  TRISC4 = 1;
  SMP = 1;
  CKE = 1;

  SSPCON1 = 0x28;
  SSPADD = 0x31;

  SSPIF = 0;
  BCLIF = 0;
}

void i2c_idle() {

  while (!SSPIF)
    ;
  SSPIF = 0;
}
void i2c_start() {

  SSPIF = 0;
  SEN = 1;
  i2c_idle();
}

void i2c_stop() {

  SSPIF = 0;
  PEN = 1;
  i2c_idle();
}

void i2c_rep_start() {
  SSPIF = 0;
  RSEN = 1;
  i2c_idle();
}

void i2c_write(unsigned char data) {

  SSPIF = 0;
  SSPBUF = data;
  i2c_idle();
}

void i2c_rx_mode() {

  SSPIF = 0;
  RCEN = 1;
  i2c_idle();
}

void i2c_no_ack() {
  SSPIF = 0;
  ACKDT = 1;
  ACKEN = 1;
  i2c_idle();
}

unsigned char i2c_read() {

  unsigned char data;
  i2c_rx_mode();
  data = SSPBUF;
  // i2c_no_ack();
  return data;
}

void i2c_ack() {

  SSPIF = 0;
  ACKDT = 0;
  ACKEN = 1;
  i2c_idle();
}
unsigned char i2c_is_nack() { return ACKSTAT; }
