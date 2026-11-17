#ifndef SSD_H
#define SSD_H

#define SSD_ZERO 0xE7
#define SSD_ONE 0x21
#define SSD_TWO 0xCB
#define SSD_THREE 0x6B
#define SSD_FOUR 0x2D
#define SSD_FIVE 0x6E
#define SSD_SIX 0xEE
#define SSD_SEVEN 0x23
#define SSD_EIGHT 0xEF
#define SSD_NINE 0x6F
#define SSD_DOT 0x10
#define SSD_BLANK 0x00
#define SSD_C 0xC6

void init_ssd();
void display_ssd(unsigned char data[]);

#endif
