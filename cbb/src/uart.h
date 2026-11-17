#ifndef UART_H
#define UART_H

#define RX_PIN TRISC7
#define TX_PIN TRISC6

void init_uart(void);
void putch(char data);
int getch(void);
int puts(const char *s);
unsigned char getche(void);

#endif
