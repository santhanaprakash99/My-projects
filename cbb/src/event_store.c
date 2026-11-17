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
#include "eeprom.h"
#include "rtc.h"

#define LOG_KEY 0xA5

static unsigned char write_index;
static unsigned char event_count;

/* Initialize the event logs */
void init_event_log() {

  unsigned char log_key;
  log_key = i2c_eeprom_read(LOG_KEY_ADDR);
  write_index = i2c_eeprom_read(LOG_INDEX_ADDR);
  event_count = i2c_eeprom_read(LOG_COUNT_ADDR);

  if (log_key != LOG_KEY || write_index >= MAX_EVENT ||
      event_count > MAX_EVENT) {

    write_index = 0;
    event_count = 0;

    i2c_eeprom_write(LOG_INDEX_ADDR, write_index);
    i2c_eeprom_write(LOG_COUNT_ADDR, event_count);
    i2c_eeprom_write(LOG_KEY_ADDR, LOG_KEY);
  }
}

/* Store the events in the external EEPROM */
void event_store() {

  unsigned char address;
  address = LOG_START_ADDR + (write_index * LOG_EVENT_SIZE);

  i2c_eeprom_write(address, event_time.hour);
  i2c_eeprom_write(address + 1, event_time.min);
  i2c_eeprom_write(address + 2, event_time.sec);
  i2c_eeprom_write(address + 3, event_gear);
  i2c_eeprom_write(address + 4, event_speed);

  write_index++;

  if (write_index >= MAX_EVENT) {
    write_index = 0;
  }
  if (event_count < MAX_EVENT) {

    event_count++;
  }

  i2c_eeprom_write(LOG_INDEX_ADDR, write_index);
  i2c_eeprom_write(LOG_COUNT_ADDR, event_count);
}

/* To get the current event count */
unsigned char get_event_count() { return event_count; }

/* To get the old event index */
unsigned char old_event_index() {

  if (event_count == MAX_EVENT) {

    return write_index;
  }
  return 0;
}

/* To Clear the log */
void clear_log() {

  write_index = 0;
  event_count = 0;

  i2c_eeprom_write(LOG_INDEX_ADDR, write_index);
  i2c_eeprom_write(LOG_COUNT_ADDR, event_count);
}
