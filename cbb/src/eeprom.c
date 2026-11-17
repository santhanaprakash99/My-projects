#include "eeprom.h"
#include "i2c.h"
#include <xc.h>
#define _XTAL_FREQ 20000000UL

void i2c_eeprom_write(unsigned char address, unsigned char data) {

  i2c_start();
  i2c_write(WRITE);
  if (i2c_is_nack()) {

    i2c_stop();
    return;
  }
  i2c_write(address);
  i2c_write(data);

  i2c_stop();
  __delay_ms(5);
}
unsigned char i2c_eeprom_read(unsigned char address) {

  unsigned char data;

  i2c_start();
  i2c_write(WRITE);
  i2c_write(address);
  i2c_rep_start();
  i2c_write(READ);
  data = i2c_read();
  i2c_stop();

  return data;
}
void i2c_eeprom_save_data(unsigned int count) {

  unsigned char high_byte;
  unsigned char low_byte;

  high_byte = count / 256;
  low_byte = count % 256;

  i2c_eeprom_write(0x00, high_byte);
  __delay_ms(5);
  i2c_eeprom_write(0x01, low_byte);
  __delay_ms(5);
}
unsigned int load_data() {

  unsigned char high_byte;
  unsigned char low_byte;
  unsigned int count;

  high_byte = i2c_eeprom_read(0x00);
  low_byte = i2c_eeprom_read(0x01);

  count = (high_byte * 256UL) + low_byte;
  if (count > 9999) {

    count = 0;
  }
  return count;
}
