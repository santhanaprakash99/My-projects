#ifndef RTC_H
#define RTC_H

#define RTC_READ 0xD1
#define RTC_WRITE 0xD0

#define SEC_ADDR 0x00
#define MIN_ADDR 0x01
#define HOUR_ADDR 0x02
#define DAY_ADDR 0x03
#define DATE_ADDR 0x04
#define MONTH_ADDR 0x05
#define YEAR_ADDR 0x06
#define CNTL_ADDR 0x07

typedef struct {

  unsigned char sec;
  unsigned char min;
  unsigned char hour;
  unsigned char day;
  unsigned char date;
  unsigned char month;
  unsigned char year;
} rtc_time_t;

void init_rtc();
void rtc_write_reg(unsigned char address, unsigned char data);
unsigned char rtc_read_reg(unsigned char data);
static unsigned char rtc_write_check(unsigned char data);
static unsigned char bcd_to_decimal(unsigned char bcd);
static unsigned char decimal_to_bcd(unsigned char decimal);
void rtc_set_time();
unsigned char rtc_read(rtc_time_t *time);
unsigned char write_time_rtc(rtc_time_t *time);

#endif
