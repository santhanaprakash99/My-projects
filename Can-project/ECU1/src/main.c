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
#include "clcd.h"
#include "ecu1_sensor.h"
#include "mkp.h"
#include "msg_id.h"
#include "uart.h"

void main(void) {

  unsigned char speed[3];
  init_adc();
  init_mkp();
  init_clcd();
  init_can();
  while (1) {
    get_speed();
    get_gear_pos();
  }
}
