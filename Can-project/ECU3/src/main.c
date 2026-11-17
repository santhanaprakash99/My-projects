
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

#include "can.h"
#include "clcd.h"
#include "msg_id.h"
#include <stdint.h>
#include <xc.h>

uint16_t msg_id;
uint8_t data[8];
uint8_t len = 0;
void main(void) {
  init_can();
  init_clcd();
  while (1) {
    can_receive(&msg_id, data, &len);
    data[len] = '\0';

    if (msg_id == SPEED_MSG_ID) {

      clcd_print("SP", LINE1(0));
      clcd_print(data, LINE2(0));
    }
    if (msg_id == GEAR_MSG_ID) {

      clcd_print("EV", LINE1(4));
      clcd_print(data, LINE2(4));
    }
    if (msg_id == RPM_MSG_ID) {

      clcd_print("RPM", LINE1(6));
      clcd_print(data, LINE2(6));
    }
    if (msg_id == INDICATOR_MSG_ID) {

      clcd_print("IND", LINE1(12));
      if (data[0] == 1) {

        clcd_print("<-", LINE2(12));
      } else if (data[0] == 2) {

        clcd_print("->", LINE2(12));
      } else {

        clcd_print("_", LINE2(12));
      }
    }
  }
}
