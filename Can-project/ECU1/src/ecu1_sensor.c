#include "ecu1_sensor.h"
#include "adc.h"
#include "can.h"
#include "clcd.h"
#include "mkp.h"
#include "msg_id.h"
#define _XTAL_FREQ 20000000UL

unsigned char speed[3];
// unsigned char collision = 0;
unsigned char key;
uint16_t msg_id;
uint8_t data[9];
uint8_t len = 0;
const char ev[][3] = {"ON", "GN", "G1", "G2", "G3", "G4", "G5", "GR", "C_"};

uint16_t get_speed() {

  unsigned int adc_value;
  unsigned int value;
  adc_value = read_adc(CHANNEL4);
  value = (adc_value * 100UL) / 1023;

  speed[0] = (value / 10) + '0';
  speed[1] = (value % 10) + '0';
  speed[2] = '\0';

  // clcd_print("SPEED", LINE1(0));
  // clcd_print(speed, LINE2(0));
  can_transmit(SPEED_MSG_ID, speed, 2);
  __delay_ms(80);
  len = 0;
  return value;
}

unsigned char get_gear_pos() {

  static unsigned char index = 0;
  key = read_mkp(EDGE);
  if (key == SW1) {
    if (index < 7) {
      index++;
    }
  } else if (key == SW2) {

    if (index > 0) {
      index--;
    }
  } else if (key == SW3) {
    can_transmit(GEAR_MSG_ID, ev[8], 2);
    __delay_ms(80);
    // clcd_print("GEAR", LINE1(7));
    // clcd_print("C_", LINE2(7));

    return index;
  }
  can_transmit(GEAR_MSG_ID, ev[index], 2);
  __delay_ms(80);
  // clcd_print("GEAR", LINE1(7));
  // clcd_print(ev[index], LINE2(7));

  return index;
}
