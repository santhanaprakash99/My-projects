CC = xc8-cc

DFP = /opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8

CFLAGS = -mcpu=18F4580 \
         -mdfp=$(DFP) \
         -O0 \
         -Iinclude \
         -mdefault-config-bits \
         -mrom=0-3000

SRC = $(wildcard src/*.c)
OUT = build/main.elf

all:
	mkdir -p build
	$(CC) $(CFLAGS) -o $(OUT) $(SRC)

clean:
	rm -rf build/*
