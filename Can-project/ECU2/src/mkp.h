#ifndef MKP_H
#define MKP_H

#define LEVEL 0
#define EDGE 1

#define ROW3 PORTBbits.RB7
#define ROW2 PORTBbits.RB6
#define ROW1 PORTBbits.RB5

#define COL4 PORTBbits.RB4
#define COL3 PORTBbits.RB3
#define COL2 PORTBbits.RB2
#define COL1 PORTBbits.RB1

#define SW1 1
#define SW2 2
#define SW3 3
#define SW4 4
#define SW5 5
#define SW6 6
#define SW7 7
#define SW8 8
#define SW9 9
#define SW10 10
#define SW11 11
#define SW12 12
#define ALL_RELEASED 0xFF

#define HIGH 1
#define LOW 0
#define MKP_PORT PORTB

void init_mkp(void);
unsigned char scan_key(void);
unsigned char read_mkp(unsigned char trigger);

#endif
