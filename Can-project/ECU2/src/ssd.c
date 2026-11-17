#include "ssd.h"
#include <xc.h>

void init_ssd() {

  TRISD = 0x00;
  TRISA = TRISA & 0xF0;
}

void display_ssd(unsigned char data[]) {

  for (int i = 0; i < 4; i++) {

    PORTD = data[i];
    PORTA = (PORTA & 0xF0) | (1 << i);

    for (int j = 1000; j--;)
      ;
  }
}
