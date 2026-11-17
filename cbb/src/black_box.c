/*
 * Author   : Santhanaprakash M
 * Batch    : 26001B
 * Batch id : 26001_069
 * Title    : CAR BLACK BOX project
 * overview : The Black Box project is a PIC18F4580-based embedded system that
 * records vehicle events such as gear changes, speed and time using EEPROM and
 * RTC. It provides a dashboard, event log viewing, UART log downloading, log
 * clearing and RTC time setting through a CLCD and keypad.
 */

#include "black_box.h"
#include "adc.h"
#include "clcd.h"
#include "eeprom.h"
#include "mkp.h"
#include "rtc.h"
#include "uart.h"

const char ev[][3] = {"ON", "GN", "G1", "G2", "G3", "G4", "G5", "GR", "C_"};
static unsigned char gear = 0;
static unsigned char prev_gear;
static unsigned char first_read = 1;
unsigned char event_gear;
unsigned char event_speed;

rtc_time_t event_time;

/* To view dashboard information */
void view_dashboard() {

  unsigned char key;
  rtc_time_t time;
  unsigned short adc_value;
  unsigned char speed;
  unsigned char flag;
  char line1[] = "TIME     EV SP ";
  char line2[] = "00:00:00 G3 00 ";
  /* Read current time */
  flag = rtc_read(&time);

  if (flag) {
    line2[0] = (time.hour / 10) + '0';
    line2[1] = (time.hour % 10) + '0';
    line2[3] = (time.min / 10) + '0';
    line2[4] = (time.min % 10) + '0';
    line2[6] = (time.sec / 10) + '0';
    line2[7] = (time.sec % 10) + '0';
  }
  /* Read speed from potentiometer */
  adc_value = read_adc(CHANNEL4);
  speed = (adc_value * 99UL) / 1023;

  key = read_mkp(EDGE);

  if (key == SW8) {

    unsigned int count = 0;
    while (read_mkp(LEVEL) == SW8) {

      __delay_ms(10);
      count++;
      if (count >= 100) {

        state = e_main_menu;

        return;
      }
    }
  }

  if (gear != 8) {
    if (key == SW1 && gear < 7) {

      gear++;
    } else if (key == SW2 && gear > 0) {
      gear--;
    } else if (key == SW3) {

      gear = 8;
    }
  }

  line2[9] = ev[gear][0];
  line2[10] = ev[gear][1];

  line2[12] = (speed / 10) + '0';
  line2[13] = (speed % 10) + '0';

  /* Display dashboard */
  clcd_print(line1, LINE1(0));
  clcd_print(line2, LINE2(0));

  /* Save the data to eeprom */

  if (flag) {
    if (first_read) {

      prev_gear = gear;
      first_read = 0;
    } else if (gear != prev_gear) {

      event_time = time;
      event_gear = gear;
      event_speed = speed;

      event_store();

      prev_gear = gear;
    }
  }
}

/* Download the logs through UART protocol */
void download_log() {

  unsigned char count;
  unsigned char address;
  unsigned char hour;
  unsigned char min;
  unsigned char sec;
  unsigned char gear;
  unsigned char speed;
  unsigned char event_index;
  unsigned char start_index;
  count = get_event_count(); // To get the current event count
  if (count == 0) {

    puts("No logs available");
    putch('\r');
    putch('\n');

    state = e_main_menu;
    return;
  }

  start_index = old_event_index();
  puts("  TIME    GEAR   SPEED");
  putch('\r');
  putch('\n');

  for (event_index = 0; event_index < count; event_index++) {

    address = LOG_START_ADDR +
              (((start_index + event_index) % MAX_EVENT) * LOG_EVENT_SIZE);

    hour = i2c_eeprom_read(address);
    min = i2c_eeprom_read(address + 1);
    sec = i2c_eeprom_read(address + 2);
    gear = i2c_eeprom_read(address + 3);
    speed = i2c_eeprom_read(address + 4);

    putch('0' + hour / 10);
    putch('0' + hour % 10);
    putch(':');
    putch('0' + min / 10);
    putch('0' + min % 10);
    putch(':');
    putch('0' + sec / 10);
    putch('0' + sec % 10);
    puts("    ");

    if (gear < 9) {

      putch(ev[gear][0]);
      putch(ev[gear][1]);
    } else {

      putch('_');
      putch('_');
    }

    puts("     ");
    putch('0' + speed / 10);
    putch('0' + speed % 10);

    putch('\r');
    putch('\n');
  }
  state = e_main_menu;
}

/* To set the time to RTC */
void set_time() {

  rtc_time_t time;
  rtc_read(&time);
  unsigned char key;
  unsigned char field = 0;
  unsigned char press;

  clcd_print("Set time          ", LINE1(0));
  while (1) {
    /* Display selected fields to edit */
    if (field == 0) {
      clcd_print("Edit:Hours     ", LINE1(0));

    } else if (field == 1) {
      clcd_print("Edit:Mins     ", LINE1(0));

    } else if (field == 2) {
      clcd_print("Edit:Secs     ", LINE1(0));
    }
    /* Display time */
    clcd_putch((time.hour / 10) + '0', LINE2(0));
    clcd_putch((time.hour % 10) + '0', LINE2(1));
    clcd_putch(':', LINE2(2));
    clcd_putch((time.min / 10) + '0', LINE2(3));
    clcd_putch((time.min % 10) + '0', LINE2(4));
    clcd_putch(':', LINE2(5));
    clcd_putch((time.sec / 10) + '0', LINE2(6));
    clcd_putch((time.sec % 10) + '0', LINE2(7));
    clcd_print("                    ", LINE2(0));

    key = read_mkp(EDGE);
    if (key == SW8) {

      if (field == 0) {
        time.hour++;
        if (time.hour >= 24) {

          time.hour = 0;
        }
      } else if (field == 1) {

        time.min++;
        if (time.min >= 60) {

          time.min = 0;
        }
      } else if (field == 2) {

        time.sec++;
        if (time.sec >= 60) {

          time.sec = 0;
        }
      }
    } else if (key == SW9) {

      press = 0;
      while (read_mkp(LEVEL) == SW9) {

        __delay_ms(10);
        press++;
        if (press >= 100) {

          write_time_rtc(&time);
          state = e_main_menu;
          return;
        }
      }
      field++;
      if (field >= 3) {

        field = 0;
      }
    }
  }
}
