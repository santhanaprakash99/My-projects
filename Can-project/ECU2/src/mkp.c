#include "mkp.h"
#include <xc.h>

void init_mkp(void) {

  ADCON1 = 0x0F;
  TRISB = 0x1E;
  RBPU = 0;

  MKP_PORT = MKP_PORT | 0xE0;
}

unsigned char scan_key(void) {

  ROW1 = LOW;
  ROW2 = HIGH;
  ROW3 = HIGH;

  if (COL1 == LOW) {

    return 1;
  } else if (COL2 == LOW) {

    return 4;
  } else if (COL3 == LOW) {

    return 7;
  } else if (COL4 == LOW) {

    return 10;
  }
  ROW1 = HIGH;
  ROW2 = LOW;
  ROW3 = HIGH;

  if (COL1 == LOW) {

    return 2;
  } else if (COL2 == LOW) {

    return 5;
  } else if (COL3 == LOW) {

    return 8;
  } else if (COL4 == LOW) {

    return 11;
  }
  ROW1 = HIGH;
  ROW2 = HIGH;
  ROW3 = LOW;
  ROW3 = LOW;

  if (COL1 == LOW) {

    return 3;
  } else if (COL2 == LOW) {

    return 6;
  } else if (COL3 == LOW) {

    return 9;
  } else if (COL4 == LOW) {

    return 12;
  }
  return 0xFF;
}

unsigned char read_mkp(unsigned char trigger) {

  static unsigned char flag = 1, key;

  if (trigger == EDGE) {

    key = scan_key();
    if (key != 0xFF && flag == 1) {

      flag = 0;
      return key;
    } else if (key == 0xFF) {

      flag = 1;
    }
  } else if (trigger == LEVEL) {

    return scan_key();
  }
  return 0xFF;
}
