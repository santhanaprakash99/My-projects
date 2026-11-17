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

#include "rtc.h"
#include <xc.h>

/* Enum for maintaining the app state */
typedef enum {
  e_dashboard,
  e_main_menu,
  e_view_log,
  e_set_time,
  e_download_log,
  e_clear_log
} State_t;

extern State_t state; // App state
extern rtc_time_t event_time;
extern unsigned char event_gear;
extern unsigned char event_speed;

// Function declarations

// Dashboard function declaration
void view_dashboard(void);

// Storing events function declaration
void event_store(void);

// main menu function declaration
void display_main_menu(void);

// View log function declaration
void view_log(void);

// Set time function declaration
void set_time(void);

// Download log function _decleration
void download_log(void);

// Clear log function declaration
void clear_log(void);
