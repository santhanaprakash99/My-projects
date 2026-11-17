
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
#include "mkp.h"
#include <xc.h>

#define _XTAL_FREQ 20000000UL
static unsigned char menu_index = 0;

/* To display the main menu */
void display_main_menu(void) {
  unsigned char key;
  unsigned int count;

  while (1) {
    if (menu_index == 0) {
      clcd_print(">1.View log     ", LINE1(0));
      clcd_print(" 2.Download log  ", LINE2(0));
    } else if (menu_index == 1) {
      clcd_print(" 1.View log     ", LINE1(0));
      clcd_print(">2.Download log  ", LINE2(0));
    } else if (menu_index == 2) {
      clcd_print(" 2.Download log  ", LINE1(0));
      clcd_print(">3.Clear log    ", LINE2(0));
    } else {

      clcd_print(" 3.Clear log    ", LINE1(0));
      clcd_print(">4.Set time      ", LINE2(0));
    }

    key = scan_key();

    if (key == SW8 || key == SW9) {

      __delay_ms(10);
      if (scan_key() != key)
        continue;
      count = 0;
      while (scan_key() == key) {

        __delay_ms(10);
        if (count < 100) {

          count++;
        }
      }

      /* Menu selection */
      if (count >= 100) {
        if (key == SW8) {
          if (menu_index == 0)
            state = e_view_log;
          else if (menu_index == 1)
            state = e_download_log;
          else if (menu_index == 2)
            state = e_clear_log;
          else
            state = e_set_time;
        } else {
          state = e_dashboard;
        }
        return;
      }

      /* Short press: scroll */
      if (key == SW8 && menu_index > 0)
        menu_index--;
      else if (key == SW9 && menu_index < 3)
        menu_index++;
    }
  }
}
