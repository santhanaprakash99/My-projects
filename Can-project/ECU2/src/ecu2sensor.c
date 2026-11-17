#include "ecu2sensor.h"
#include "adc.h"
#include "can.h"
#include "msg_id.h"
#include "ssd.h"
#include "uart.h"
#include <stdint.h>

#define _XTAL_FREQ 20000000UL

unsigned char digit[] = {SSD_ZERO, SSD_ONE, SSD_TWO,   SSD_THREE, SSD_FOUR,
                         SSD_FIVE, SSD_SIX, SSD_SEVEN, SSD_EIGHT, SSD_NINE};
volatile IndicatorStatus prev_ind_status = e_ind_off;
volatile IndicatorStatus cur_ind_status = e_ind_off;
unsigned char ssd[4];
unsigned int adc_value;
unsigned int value;
uint16_t msg_id;
uint8_t rdata[9];
uint8_t len = 0;

uint16_t get_rpm() {

  adc_value = read_adc(CHANNEL4);
  value = (adc_value * 6000UL) / 1023;

  ssd[3] = (value % 10) + '0';
  ssd[2] = ((value / 10) % 10) + '0';
  ssd[1] = ((value / 100) % 10) + '0';
  ssd[0] = ((value / 1000) % 10) + '0';

  can_transmit(RPM_MSG_ID, ssd, 4);
  __delay_ms(80);
  return value;
}

IndicatorStatus process_indicator() {
  if (prev_ind_status != cur_ind_status) {

    if (prev_ind_status == e_ind_left) {

      LEFT_IND_OFF();
    } else if (prev_ind_status == e_ind_right) {

      RIGHT_IND_OFF();
    }

    if (cur_ind_status == e_ind_left) {

      LEFT_IND_ON();
    } else if (cur_ind_status == e_ind_right) {

      RIGHT_IND_ON();
    } else {

      LEFT_IND_OFF();
      RIGHT_IND_OFF();
    }
    rdata[0] = (cur_ind_status == e_ind_left)    ? 1
               : (cur_ind_status == e_ind_right) ? 2
                                                 : 0;
    can_transmit(INDICATOR_MSG_ID, rdata, 1);
    __delay_ms(10);
    prev_ind_status = cur_ind_status;
  }
  return cur_ind_status;
}
