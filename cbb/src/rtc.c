#include "rtc.h"
#include "i2c.h"
#include <xc.h>

void init_rtc() {

  unsigned char dummy;
  /* stop the clock */
  dummy = rtc_read_reg(SEC_ADDR);
  rtc_write_reg(SEC_ADDR, dummy | 0x80);
  /* Set 24 hr format */
  dummy = rtc_read_reg(HOUR_ADDR);
  rtc_write_reg(HOUR_ADDR, dummy & 0xBF);
  /* Start the clock */
  dummy = rtc_read_reg(SEC_ADDR);
  rtc_write_reg(SEC_ADDR, dummy & 0x7F);
}
/* Convert the bcd value to decimal value */
static unsigned char bcd_to_decimal(unsigned char bcd) {
  return ((bcd >> 4) * 10) + (bcd & 0x0F);
}
/* Convert the decimal value to bcd */
static unsigned char decimal_to_bcd(unsigned char decimal) {
  return ((decimal / 10) << 4) | (decimal % 10);
}

/* checking data sent or not using ack/nack */
static unsigned char rtc_write_check(unsigned char data) {

  i2c_write(data);
  if (i2c_is_nack()) {

    return 0;
  }
  return 1;
}

/* For explictly/hardcoded setting the time */
void rtc_set_time() {

  i2c_start();
  i2c_write(RTC_WRITE);
  i2c_write(SEC_ADDR);
  // 23:59:00
  i2c_write(0x00); // sec
  i2c_write(0x59); // min
  i2c_write(0x23); // hour
  i2c_write(0x03); // day of week
  i2c_write(0x28); // date
  i2c_write(0x10); // month
  i2c_write(0x26); // year

  i2c_stop();
}

/* Write time to the RTC from user */
unsigned char write_time_rtc(rtc_time_t *time) {

  i2c_start();
  i2c_write(RTC_WRITE);
  i2c_write(SEC_ADDR);
  i2c_write(decimal_to_bcd(time->sec));
  i2c_write(decimal_to_bcd(time->min));
  i2c_write(decimal_to_bcd(time->hour));

  i2c_stop();
}

/* read time from RTC */
unsigned char rtc_read(rtc_time_t *time) {
  unsigned char raw[7];
  unsigned char i;

  i2c_start();
  if (!rtc_write_check(RTC_WRITE)) {

    i2c_stop();
    return 0;
  }
  if (!rtc_write_check(SEC_ADDR)) {

    i2c_stop();
    return 0;
  }
  i2c_rep_start();
  if (!rtc_write_check(RTC_READ)) {

    i2c_stop();
    return 0;
  }

  for (i = 0; i < 7; i++) {

    raw[i] = i2c_read();
    if (i < 6) {

      i2c_ack();
    } else {

      i2c_no_ack();
    }
  }
  i2c_stop();

  /* Converting bcd value to decimal value */
  time->sec = bcd_to_decimal(raw[0] & 0x7F);
  time->min = bcd_to_decimal(raw[1] & 0x7f);
  time->hour = bcd_to_decimal(raw[2] & 0x3F);
  time->day = raw[3] & 0x07;
  time->date = bcd_to_decimal(raw[4] & 0x3F);
  time->month = bcd_to_decimal(raw[5] & 0x1F);
  time->year = bcd_to_decimal(raw[6]);

  return 1;
}

void rtc_write_reg(unsigned char address, unsigned char data) {

  i2c_start();
  i2c_write(RTC_WRITE);
  i2c_write(address);
  i2c_write(data);
  i2c_stop();
}

unsigned char rtc_read_reg(unsigned char address) {

  unsigned char data;
  i2c_start();
  i2c_write(RTC_WRITE);
  i2c_write(address);
  i2c_rep_start();
  i2c_write(RTC_READ);

  data = i2c_read();
  i2c_no_ack();
  i2c_stop();

  return data;
}
