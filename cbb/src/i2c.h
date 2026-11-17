#ifndef I2C_H
#define I2C_H

void init_i2c();
void i2c_idle();
void i2c_ack();
void i2c_no_ack();
unsigned char i2c_is_nack();
void i2c_rx_mode();
void i2c_start();
void i2c_rep_start();
void i2c_stop();
void i2c_write(unsigned char data);
unsigned char i2c_read();

#endif
