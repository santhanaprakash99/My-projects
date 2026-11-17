/*
 * Author   : Santhanaprakash M
 * Batch    : 26001B
 * Batch id : 26001_069
 * Title    : CAR BLACK BOX project
 * overview : The Black Box project is a PIC18F4580-based embedded system that
 *            records vehicle events such as gear changes, speed and time using
 * EEPROM and RTC. It provides a dashboard, event log viewing, UART log
 * downloading, log clearing and RTC time setting through a CLCD and keypad.
 */

#include "black_box.h"
#include "clcd.h"
#include "eeprom.h"
#include "mkp.h"
#include <xc.h>

#define _XTAL_FREQ 20000000UL

const char ev[][3] = {"ON", "GN", "G1", "G2", "G3", "G4", "G5", "GR", "C_"};

/* To view the logs */
void view_log() {

  unsigned char count;
  unsigned char address;
  unsigned char hour;
  unsigned char min;
  unsigned char sec;
  unsigned char gear;
  unsigned char speed;
  unsigned char key;
  unsigned char event_index;
  unsigned char start_index;

  char line1[] = "TIME     EV SP ";
  char line2[] = "00:00:00 G3 00 ";

  count = get_event_count(); // get the current event count
  if (count == 0) {

    clcd_print("No logs!!     ", LINE1(0));
    clcd_print("                 ", LINE2(0));
    while (1) {
      key = read_mkp(EDGE);
      if (key == SW9) {
        state = e_main_menu;
        return;
      }
    }
  }

  start_index = old_event_index();
  event_index = count - 1;

  while (1) {
    address = LOG_START_ADDR +
              (((start_index + event_index) % MAX_EVENT) * LOG_EVENT_SIZE);

    hour = i2c_eeprom_read(address);
    min = i2c_eeprom_read(address + 1);
    sec = i2c_eeprom_read(address + 2);
    gear = i2c_eeprom_read(address + 3);
    speed = i2c_eeprom_read(address + 4);

    line2[0] = (hour / 10) + '0';
    line2[1] = (hour % 10) + '0';
    line2[3] = (min / 10) + '0';
    line2[4] = (min % 10) + '0';
    line2[6] = (sec / 10) + '0';
    line2[7] = (sec % 10) + '0';

    if (gear < 9) {

      line2[9] = ev[gear][0];
      line2[10] = ev[gear][1];
    }

    line2[12] = (speed / 10) + '0';
    line2[13] = (speed % 10) + '0';

    clcd_print(line1, LINE1(0));
    clcd_print(line2, LINE2(0));

    key = read_mkp(EDGE);
    if (key == SW8) {

      __delay_ms(10);
      if (event_index > 0) {

        event_index--;
      }
    } else if (key == SW9) {

      unsigned char press = 0;
      __delay_ms(10);
      if (read_mkp(LEVEL) == SW9) {
        while (read_mkp(LEVEL) == SW9) {

          __delay_ms(10);
          press++;
          if (press >= 100) {

            state = e_main_menu;
            return;
          }
        }
        if (event_index < count - 1) {
          event_index++;
        }
      }
    }
  }
}
