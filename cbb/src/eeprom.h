#ifndef EEPROM_H
#define EEPROM_H

#define WRITE 0xA0
#define READ 0xA1

#define MAX_EVENT 10
#define LOG_KEY_ADDR 0x02 // key to verify initialize or not
#define LOG_INDEX_ADDR 0x03
#define LOG_COUNT_ADDR 0x04
#define LOG_START_ADDR 0x05
#define LOG_EVENT_SIZE 5
// #define PASSWD_ADDR 0x40
// #define PASSWD_SIZE 4
// #define PASSWD_KEY_ADDR 0x44
// #define PASSWD_KEY 0x5A

void init_event_log();
unsigned char old_event_index();
void i2c_eeprom_write(unsigned char address, unsigned char data);
unsigned char i2c_eeprom_read(unsigned char address);
void i2c_eeprom_save_data(unsigned int count);
unsigned int load_data();
unsigned char get_event_count();

#endif
