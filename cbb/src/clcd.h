#ifndef CLCD_H
#define CLCD_H

#define _XTAL_FREQ                                                             \
  20000000UL // Match your crystal frequency (e.g., 8MHz or 20MHz
#define INPUT 0xFF
#define OUTPUT 0x00
#define CLCD_RW RC0
#define CLCD_RS RC1
#define CLCD_EN RC2
#define BUSY RD7
#define PORT PORTD
#define PORT_DIR TRISD7

#define HI 1
#define LO 0

#define DATA 1
#define INS 0

#define LINE1(x) (0x80 + (x))
#define LINE2(x) (0xC0 + (x))
#define TWOLINE_5x8_MATRIX_8BIT clcd_write(0x38, INS)
#define CLEAR clcd_write(0x01, INS)
#define CURSOR_HOME clcd_write(0x02, INS)
#define DISPLAY_ON_CURSOR_OFF clcd_write(0x0C, INS)
#define EIGHT_BIT 0x33
#define LEFT clcd_write(0x18, INS);
#define RIGHT clcd_write(0x1C, INS);

void init_clcd(void);
void clcd_write(unsigned char byte, unsigned char control);
void clcd_putch(const unsigned char data, unsigned char addr);
void clcd_print(const char *data, unsigned char addr);
#endif
