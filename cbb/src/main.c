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

/*
 * Switch Implementations : -
 *
 * SW1	Increases the vehicle gear value.
 * SW2	Decreases the vehicle gear value.
 * SW3	Selects the collision (C_).
 * SW8  Long Press	Opens the Main Menu from the Dashboard.
 * SW8  Short press scrolls down through the main menu options.
 * SW9  Short Press scrolls up through the main menu options.
 * SW9  Exits the current menu or screen and returns to the previous
 *      menu.
 * SW8  Set Time - Increments the currently selected time field.
 * SW9  Set Time (Short Press)	Selects the next time field (Hours → Minutes →
 * Seconds). SW9  Set Time (Long Press)	Saves the updated time to the RTC and
 * returns to the Main Menu.
 *
 */

#include "adc.h"
#include "black_box.h"
#include "clcd.h"
#include "eeprom.h"
#include "i2c.h"
#include "mkp.h"
#include "rtc.h"
#include "uart.h"
#include <xc.h>

#define _XTAL_FREQ 20000000UL

State_t state;

/* Initializing the components */
void init_config() {
  rtc_time_t time;
  init_clcd();
  init_i2c();
  init_event_log();
  init_rtc();
  init_mkp();
  init_uart();
  init_adc();
  init_rtc();
  // rtc_set_time();
  state = e_dashboard;
}

void main(void) {
  init_config();

  while (1) {
    // Detect key press

    switch (state) {
    case e_dashboard:
      // Display dashboard
      view_dashboard();
      break;

    case e_main_menu:
      // Display mainmenu
      display_main_menu();
      break;

    case e_view_log:
      // Display logs
      view_log();
      break;

    case e_download_log:
      // Download logs
      download_log();
      break;

    case e_clear_log:
      // Clear the logs
      clear_log();

      clcd_print("Logs cleared     ", LINE1(0));
      clcd_print("                 ", LINE2(0));

      __delay_ms(2000);
      state = e_main_menu;
      break;

    case e_set_time:
      // set time to RTC
      set_time();
      break;
    }
  }
}
