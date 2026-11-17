
/*
 * Name     :   Santhanaprakash M
 * Batch id :   26001_069
 * Title    :   Can based automotive dashboard
 * Overview :   The project implements an automotive dashboard system using
 * three PIC18F4580 microcontrollers communicating through the CAN protocol.
 *              ECU1 handles vehicle speed measurement and gear selection, while
 * ECU2 manages engine RPM and indicator control. ECU3 receives vehicle data
 * from ECU1 and ECU2 through the CAN bus. ECU3 displays the received
 * information on the dashboard, providing centralized vehicle monitoring.
 */

#include "adc.h"
#include "can.h"
#include "digital_keypad.h"
#include "ecu2sensor.h"
#include "mkp.h"
#include "msg_id.h"
#include "ssd.h"
#include <stdint.h>
#include <xc.h>

#define _XTAL_FREQ 20000000UL
extern unsigned char digit[];
unsigned char indicator_data[1];
unsigned char prev_ind_data = 255;
unsigned char ssd[4];
extern uint8_t rdata[9];
unsigned int count = 0;
void main(void) {
  init_adc();
  init_ssd();
  init_can();
  init_mkp();
  init_digital_keypad();

  TRISB &= 0x3C;

  while (1) {

    get_rpm();
    unsigned char key = read_digital_keypad(STATE_CHANGE);
    if (key == SWITCH1) {

      cur_ind_status = e_ind_left;
      count = 0;

    } else if (key == SWITCH2) {

      cur_ind_status = e_ind_right;
      count = 0;
    } else if (key == SWITCH3) {

      cur_ind_status = e_ind_off;
      count = 0;
    }

    /*if (indicator_data[0] != prev_ind_data) {

      can_transmit(INDICATOR_MSG_ID, indicator_data, 1);
      prev_ind_data = indicator_data[0];
    }*/

    process_indicator();
    if (cur_ind_status == e_ind_left) {

      LEFT_IND_OFF();
      RIGHT_IND_OFF();
      if (count < 500) {
        LEFT_IND_ON();
      }

    } else if (cur_ind_status == e_ind_right) {
      LEFT_IND_OFF();
      RIGHT_IND_OFF();
      if (count < 500) {
        RIGHT_IND_ON();
      }
    } else {

      LEFT_IND_OFF();
      RIGHT_IND_OFF();
    }
    count++;
    if (count >= 1000) {

      count = 0;
    }
    display_ssd(ssd);
  }
}
