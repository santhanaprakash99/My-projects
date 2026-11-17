subtitle "Microchip MPLAB XC8 C Compiler v4.00 build 20260614213421 Og1 "

pagewidth 120
	processor	18F4580
include "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/18f4580.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
skiprom24 macro arg1
	btfsc arg1,7
endm
	global	__ramtop
	global	__accesstop
# 54 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "/opt/microchip/mplabx/v5.35/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8/pic/include/proc/pic18f4580.h"
TOSU equ 0FFFh ;# 
	debug_source C
	FNCALL	_main,_get_gear_pos
	FNCALL	_main,_get_speed
	FNCALL	_main,_init_adc
	FNCALL	_main,_init_can
	FNCALL	_main,_init_clcd
	FNCALL	_main,_init_mkp
	FNCALL	_init_clcd,_clcd_write
	FNCALL	_get_speed,___lldiv
	FNCALL	_get_speed,___lmul
	FNCALL	_get_speed,___lwdiv
	FNCALL	_get_speed,___lwmod
	FNCALL	_get_speed,_can_transmit
	FNCALL	_get_speed,_read_adc
	FNCALL	_get_gear_pos,_can_transmit
	FNCALL	_get_gear_pos,_read_mkp
	FNCALL	_read_mkp,_scan_key
	FNCALL	_can_transmit,_set_msg_id_std
	FNROOT	_main
	global	read_mkp@flag
	global	read_digital_keypad@once
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"src/mkp.c"
	line	72

;initializer for read_mkp@flag
	db	low(01h)
	file	"src/digital_keypad.c"
	line	7

;initializer for read_digital_keypad@once
	db	low(01h)
	global	_ev
psect	mediumconst,class=MEDIUMCONST,space=0,reloc=2,noexec
global __pmediumconst
__pmediumconst:
	db	0
	file	"src/ecu1_sensor.c"
	line	15
_ev:
	db	low(04Fh)
	db	low(04Eh)
	db	low(0)
	db	low(047h)
	db	low(04Eh)
	db	low(0)
	db	low(047h)
	db	low(031h)
	db	low(0)
	db	low(047h)
	db	low(032h)
	db	low(0)
	db	low(047h)
	db	low(033h)
	db	low(0)
	db	low(047h)
	db	low(034h)
	db	low(0)
	db	low(047h)
	db	low(035h)
	db	low(0)
	db	low(047h)
	db	low(052h)
	db	low(0)
	db	low(043h)
	db	low(05Fh)
	db	low(0)
	global __end_of_ev
__end_of_ev:
	global	_ev
	global	read_mkp@key
	global	get_gear_pos@index
	global	_len
	global	_key
	global	_speed
	global	_RXFCON0
_RXFCON0	set	0xDD4
	global	_TXB0DLC
_TXB0DLC	set	0xF45
	global	_TXB0EIDL
_TXB0EIDL	set	0xF44
	global	_TXB0EIDH
_TXB0EIDH	set	0xF43
	global	_TXB0SIDH
_TXB0SIDH	set	0xF41
	global	_TXB0SIDL
_TXB0SIDL	set	0xF42
	global	_TXB0D0
_TXB0D0	set	0xF46
	global	_TXB0REQ
_TXB0REQ	set	0x7A03
	global	_RCREG
_RCREG	set	0xFAE
	global	_TXREG
_TXREG	set	0xFAD
	global	_SPBRG
_SPBRG	set	0xFAF
	global	_PORTBbits
_PORTBbits	set	0xF81
	global	_PORTB
_PORTB	set	0xF81
	global	_TRISB
_TRISB	set	0xF93
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_PORTC
_PORTC	set	0xF82
	global	_PORTD
_PORTD	set	0xF83
	global	_TRISC
_TRISC	set	0xF94
	global	_TRISD
_TRISD	set	0xF95
	global	_RXB0DLC
_RXB0DLC	set	0xF65
	global	_RXB0SIDH
_RXB0SIDH	set	0xF61
	global	_RXB0SIDL
_RXB0SIDL	set	0xF62
	global	_RXB0CONbits
_RXB0CONbits	set	0xF60
	global	_RXB0CON
_RXB0CON	set	0xF60
	global	_BRGCON3
_BRGCON3	set	0xF72
	global	_BRGCON2
_BRGCON2	set	0xF71
	global	_BRGCON1
_BRGCON1	set	0xF70
	global	_ECANCON
_ECANCON	set	0xF77
	global	_CANSTAT
_CANSTAT	set	0xF6E
	global	_CANCON
_CANCON	set	0xF6F
	global	_ADCON0
_ADCON0	set	0xFC2
	global	_ADRESL
_ADRESL	set	0xFC3
	global	_ADRESH
_ADRESH	set	0xFC4
	global	_RXB0D0
_RXB0D0	set	0xF66
	global	_RCIF
_RCIF	set	0x7CF5
	global	_TXIF
_TXIF	set	0x7CF4
	global	_BRG16
_BRG16	set	0x7DC3
	global	_CREN
_CREN	set	0x7D5C
	global	_RX9
_RX9	set	0x7D5E
	global	_SPEN
_SPEN	set	0x7D5F
	global	_BRGH
_BRGH	set	0x7D62
	global	_SENDB
_SENDB	set	0x7D63
	global	_SYNC
_SYNC	set	0x7D64
	global	_TXEN
_TXEN	set	0x7D65
	global	_TX9
_TX9	set	0x7D66
	global	_TRISC6
_TRISC6	set	0x7CA6
	global	_TRISC7
_TRISC7	set	0x7CA7
	global	_RBPU
_RBPU	set	0x7F8F
	global	_RD7
_RD7	set	0x7C1F
	global	_RC0
_RC0	set	0x7C10
	global	_TRISD7
_TRISD7	set	0x7CAF
	global	_RC2
_RC2	set	0x7C12
	global	_RC1
_RC1	set	0x7C11
	global	_RXB0IF
_RXB0IF	set	0x7D20
	global	_RXB0FUL
_RXB0FUL	set	0x7B07
	global	_TRISB3
_TRISB3	set	0x7C9B
	global	_TRISB2
_TRISB2	set	0x7C9A
	global	_GO
_GO	set	0x7E11
	global	_ADON
_ADON	set	0x7E10
	global	_VCFG0
_VCFG0	set	0x7E0C
	global	_VCFG1
_VCFG1	set	0x7E0D
	global	_GODONE
_GODONE	set	0x7E11
	global	_ADCS2
_ADCS2	set	0x7E02
	global	_ADCS1
_ADCS1	set	0x7E01
	global	_ADCS0
_ADCS0	set	0x7E00
	global	_ACQT0
_ACQT0	set	0x7E03
	global	_ACQT1
_ACQT1	set	0x7E04
	global	_ACQT2
_ACQT2	set	0x7E05
	global	_ADFM
_ADFM	set	0x7E07
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = always
	config default_idlocs  = always
	file	"build/main.s"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pbssCOMRAM
__pbssCOMRAM:
	global	_data
	global	_data
_data:
       ds      9
	global	_msg_id
	global	_msg_id
_msg_id:
       ds      2
read_mkp@key:
       ds      1
get_gear_pos@index:
       ds      1
	global	_len
_len:
       ds      1
	global	_key
_key:
       ds      1
	global	_speed
_speed:
       ds      3
psect	dataCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pdataCOMRAM
__pdataCOMRAM:
	file	"src/mkp.c"
	line	72
read_mkp@flag:
       ds      1
psect	dataCOMRAM
	file	"src/digital_keypad.c"
	line	7
read_digital_keypad@once:
       ds      1
	file	"build/main.s"
	line	#
psect	cinit
; Initialize objects allocated to COMRAM (2 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	tblrd*+ ;fetch initializer
	movff	tablat, __pdataCOMRAM+0		
	tblrd*+ ;fetch initializer
	movff	tablat, __pdataCOMRAM+1		
	line	#
; Clear objects allocated to COMRAM (18 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	18
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_clcd_write:	; 1 bytes @ 0x0
?_read_mkp:	; 1 bytes @ 0x0
?_init_mkp:	; 1 bytes @ 0x0
?_init_adc:	; 1 bytes @ 0x0
?_init_can:	; 1 bytes @ 0x0
?_set_msg_id_std:	; 1 bytes @ 0x0
?_init_clcd:	; 1 bytes @ 0x0
?_get_gear_pos:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_scan_key:	; 1 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	?_read_adc
?_read_adc:	; 2 bytes @ 0x0
?_get_speed:	; 2 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	clcd_write@control
clcd_write@control:	; 1 bytes @ 0x0
	global	read_mkp@trigger
read_mkp@trigger:	; 1 bytes @ 0x0
	global	set_msg_id_std@id
set_msg_id_std@id:	; 2 bytes @ 0x0
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x0
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
??_read_mkp:	; 1 bytes @ 0x0
??_init_mkp:	; 1 bytes @ 0x0
??_init_adc:	; 1 bytes @ 0x0
??_init_can:	; 1 bytes @ 0x0
??_scan_key:	; 1 bytes @ 0x0
	ds   1
	global	clcd_write@byte
clcd_write@byte:	; 1 bytes @ 0x1
??_clcd_write:	; 1 bytes @ 0x1
	ds   1
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x2
??_read_adc:	; 1 bytes @ 0x2
??_set_msg_id_std:	; 1 bytes @ 0x2
??_init_clcd:	; 1 bytes @ 0x2
	ds   2
?_can_transmit:	; 1 bytes @ 0x4
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x4
	global	read_adc@reg_val
read_adc@reg_val:	; 2 bytes @ 0x4
	global	can_transmit@msg_id
can_transmit@msg_id:	; 2 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
??___lwdiv:	; 1 bytes @ 0x4
??___lwmod:	; 1 bytes @ 0x4
	ds   2
	global	read_adc@channel
read_adc@channel:	; 1 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	global	can_transmit@data
can_transmit@data:	; 2 bytes @ 0x6
	ds   2
	global	can_transmit@len
can_transmit@len:	; 1 bytes @ 0x8
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x8
??___lmul:	; 1 bytes @ 0x8
	ds   1
??_can_transmit:	; 1 bytes @ 0x9
	ds   3
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0xC
	global	can_transmit@ptr
can_transmit@ptr:	; 2 bytes @ 0xC
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0xC
	ds   2
	global	can_transmit@i
can_transmit@i:	; 2 bytes @ 0xE
	ds   2
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x10
??_get_gear_pos:	; 1 bytes @ 0x10
	ds   4
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x14
??___lldiv:	; 1 bytes @ 0x14
	ds   4
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0x18
	ds   1
??_get_speed:	; 1 bytes @ 0x19
	ds   2
	global	get_speed@adc_value
get_speed@adc_value:	; 2 bytes @ 0x1B
	ds   2
	global	get_speed@value
get_speed@value:	; 2 bytes @ 0x1D
	ds   2
??_main:	; 1 bytes @ 0x1F
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    27
;!    Data        2
;!    BSS         18
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     31      51
;!    BANK0           160      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    can_transmit@data	PTR const unsigned char  size(2) Largest target is 27
;!		 -> ev(CODE[27]), speed(COMRAM[3]), 
;!
;!    can_transmit@ptr	PTR unsigned char  size(2) Largest target is 1
;!		 -> TXB0D0(SFR_2[1]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_get_speed
;!    _init_clcd->_clcd_write
;!    _get_speed->___lldiv
;!    ___lldiv->___lmul
;!    _get_gear_pos->_can_transmit
;!    _can_transmit->_set_msg_id_std
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 3     3      0    1267
;!                       _get_gear_pos
;!                          _get_speed
;!                           _init_adc
;!                           _init_can
;!                          _init_clcd
;!                           _init_mkp
;! ---------------------------------------------------------------------------------
;! (1) _init_mkp                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _init_clcd                                            1     1      0      62
;!                                              2 COMRAM     1     1      0
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (2) _clcd_write                                           2     1      1      62
;!                                              0 COMRAM     2     1      1
;! ---------------------------------------------------------------------------------
;! (1) _init_can                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _init_adc                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _get_speed                                            6     6      0     942
;!                                             25 COMRAM     6     6      0
;!                            ___lldiv
;!                             ___lmul
;!                            ___lwdiv
;!                            ___lwmod
;!                       _can_transmit
;!                           _read_adc
;! ---------------------------------------------------------------------------------
;! (2) _read_adc                                             7     5      2      52
;!                                              0 COMRAM     7     5      2
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              5     1      4     161
;!                                              0 COMRAM     5     1      4
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              7     3      4     164
;!                                              0 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! (2) ___lmul                                              12     4      8      94
;!                                              0 COMRAM    12     4      8
;! ---------------------------------------------------------------------------------
;! (2) ___lldiv                                             13     5      8     164
;!                                             12 COMRAM    13     5      8
;!                             ___lmul (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _get_gear_pos                                         2     2      0     263
;!                                             16 COMRAM     2     2      0
;!                       _can_transmit
;!                           _read_mkp
;! ---------------------------------------------------------------------------------
;! (2) _read_mkp                                             1     1      0      30
;!                                              0 COMRAM     1     1      0
;!                           _scan_key
;! ---------------------------------------------------------------------------------
;! (3) _scan_key                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _can_transmit                                        12     7      5     233
;!                                              4 COMRAM    12     7      5
;!                     _set_msg_id_std
;! ---------------------------------------------------------------------------------
;! (3) _set_msg_id_std                                       4     2      2      45
;!                                              0 COMRAM     4     2      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _get_gear_pos
;!     _can_transmit
;!       _set_msg_id_std
;!     _read_mkp
;!       _scan_key
;!   _get_speed
;!     ___lldiv
;!       ___lmul (ARG)
;!     ___lmul
;!     ___lwdiv
;!     ___lwmod
;!     _can_transmit
;!     _read_adc
;!   _init_adc
;!   _init_can
;!   _init_clcd
;!     _clcd_write
;!   _init_mkp
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BIGRAM            1535      0       0      0.0%
;!BITBIGSFRllh       410      0       0      0.0%
;!BITBANK5           256      0       0      0.0%
;!BANK5              256      0       0      0.0%
;!BITBANK4           256      0       0      0.0%
;!BANK4              256      0       0      0.0%
;!BITBANK3           256      0       0      0.0%
;!BANK3              256      0       0      0.0%
;!BITBANK2           256      0       0      0.0%
;!BANK2              256      0       0      0.0%
;!BITBANK1           256      0       0      0.0%
;!BANK1              256      0       0      0.0%
;!BITBIGSFRlll       212      0       0      0.0%
;!BITBANK0           160      0       0      0.0%
;!BANK0              160      0       0      0.0%
;!BITCOMRAM           95      0       0      0.0%
;!COMRAM              95     31      51     53.7%
;!BITBIGSFRh          82      0       0      0.0%
;!BITBIGSFRlh         61      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0      51      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 21 in file "src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  speed           3    0        unsigned char [3]
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_get_gear_pos
;;		_get_speed
;;		_init_adc
;;		_init_can
;;		_init_clcd
;;		_init_mkp
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"src/main.c"
	line	21
global __ptext0
__ptext0:
psect	text0
	file	"src/main.c"
	line	21
	
_main:
;incstack = 0
	callstack 28
	line	24
	
l1742:
	call	_init_adc	;wreg free
	line	25
	
l1744:
	call	_init_mkp	;wreg free
	line	26
	
l1746:
	call	_init_clcd	;wreg free
	line	27
	
l1748:
	call	_init_can	;wreg free
	line	29
	
l1750:
	call	_get_speed	;wreg free
	line	30
	
l1752:
	call	_get_gear_pos	;wreg free
	goto	l1750
	global	start
	goto	start
	callstack 0
	line	32
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_init_mkp

;; *************** function _init_mkp *****************
;; Defined at:
;;		line 4 in file "src/mkp.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	file	"src/mkp.c"
	line	4
global __ptext1
__ptext1:
psect	text1
	file	"src/mkp.c"
	line	4
	
_init_mkp:
;incstack = 0
	callstack 30
	line	6
	
l1432:
	movlw	low(0Fh)
	movwf	((c:4033))^0f00h,c	;volatile
	line	7
	movlw	low(01Eh)
	movwf	((c:3987))^0f00h,c	;volatile
	line	8
	
l1434:
	bcf	c:(32655/8),(32655)&7	;volatile
	line	10
	
l1436:
	movf	((c:3969))^0f00h,c,w	;volatile
	iorlw	low(0E0h)
	movwf	((c:3969))^0f00h,c	;volatile
	line	11
	
l235:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_mkp
	__end_of_init_mkp:
	signat	_init_mkp,89
	global	_init_clcd

;; *************** function _init_clcd *****************
;; Defined at:
;;		line 4 in file "src/clcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=0
	file	"src/clcd.c"
	line	4
global __ptext2
__ptext2:
psect	text2
	file	"src/clcd.c"
	line	4
	
_init_clcd:
;incstack = 0
	callstack 29
	line	6
	
l1658:
	clrf	((c:3989))^0f00h,c	;volatile
	line	7
	
l1660:
	movf	((c:3988))^0f00h,c,w	;volatile
	andlw	low(0F8h)
	movwf	((c:3988))^0f00h,c	;volatile
	line	8
	
l1662:
	asmopt push
asmopt off
movlw	98
movwf	(??_init_clcd+0)^00h,c
	movlw	102
u777:
decfsz	wreg,f
	bra	u777
	decfsz	(??_init_clcd+0)^00h,c,f
	bra	u777
asmopt pop

	line	9
	
l1664:
	movlw	low(0)
	movwf	((c:clcd_write@control))^00h,c
	movlw	(033h)&0ffh
	
	call	_clcd_write
	line	10
	
l1666:
	asmopt push
asmopt off
movlw	27
movwf	(??_init_clcd+0)^00h,c
	movlw	158
u787:
decfsz	wreg,f
	bra	u787
	decfsz	(??_init_clcd+0)^00h,c,f
	bra	u787
	nop2
asmopt pop

	line	11
	
l1668:
	movlw	low(0)
	movwf	((c:clcd_write@control))^00h,c
	movlw	(033h)&0ffh
	
	call	_clcd_write
	line	12
	
l1670:
	asmopt push
asmopt off
	movlw	166
u797:
decfsz	wreg,f
	bra	u797
	nop2
asmopt pop

	line	13
	
l1672:
	movlw	low(0)
	movwf	((c:clcd_write@control))^00h,c
	movlw	(033h)&0ffh
	
	call	_clcd_write
	line	14
	
l1674:
	asmopt push
asmopt off
	movlw	166
u807:
decfsz	wreg,f
	bra	u807
	nop2
asmopt pop

	line	15
	
l1676:
	movlw	low(0)
	movwf	((c:clcd_write@control))^00h,c
	movlw	(02h)&0ffh
	
	call	_clcd_write
	line	16
	
l1678:
	asmopt push
asmopt off
	movlw	166
u817:
decfsz	wreg,f
	bra	u817
	nop2
asmopt pop

	line	17
	
l1680:
	movlw	low(0)
	movwf	((c:clcd_write@control))^00h,c
	movlw	(038h)&0ffh
	
	call	_clcd_write
	line	18
	
l1682:
	asmopt push
asmopt off
	movlw	166
u827:
decfsz	wreg,f
	bra	u827
	nop2
asmopt pop

	line	19
	
l1684:
	movlw	low(0)
	movwf	((c:clcd_write@control))^00h,c
	movlw	(0Ch)&0ffh
	
	call	_clcd_write
	line	20
	
l1686:
	asmopt push
asmopt off
	movlw	166
u837:
decfsz	wreg,f
	bra	u837
	nop2
asmopt pop

	line	21
	
l1688:
	movlw	low(0)
	movwf	((c:clcd_write@control))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	22
	
l1690:
	asmopt push
asmopt off
	movlw	166
u847:
decfsz	wreg,f
	bra	u847
	nop2
asmopt pop

	line	23
	
l135:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_clcd
	__end_of_init_clcd:
	signat	_init_clcd,89
	global	_clcd_write

;; *************** function _clcd_write *****************
;; Defined at:
;;		line 25 in file "src/clcd.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;;  control         1    0[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_clcd
;;		_clcd_putch
;;		_clcd_print
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,group=0
	line	25
global __ptext3
__ptext3:
psect	text3
	file	"src/clcd.c"
	line	25
	
_clcd_write:
;incstack = 0
	callstack 29
	line	27
	movwf	((c:clcd_write@byte))^00h,c
	
l1568:
	btfsc	((c:clcd_write@control))^00h,c,0
	goto	u571
	goto	u570
u571:
	bsf	c:(31761/8),(31761)&7	;volatile
	goto	u585
u570:
	bcf	c:(31761/8),(31761)&7	;volatile
u585:
	line	28
	
l1570:
	movff	(c:clcd_write@byte),(c:3971)	;volatile
	line	30
	
l1572:
	bsf	c:(31762/8),(31762)&7	;volatile
	line	31
	
l1574:
	bcf	c:(31762/8),(31762)&7	;volatile
	line	32
	
l1576:
	bsf	c:(31919/8),(31919)&7	;volatile
	line	33
	
l1578:
	bsf	c:(31760/8),(31760)&7	;volatile
	line	34
	
l1580:
	bcf	c:(31761/8),(31761)&7	;volatile
	line	37
	
l1582:
	bsf	c:(31762/8),(31762)&7	;volatile
	line	38
	
l1584:
	bcf	c:(31762/8),(31762)&7	;volatile
	line	39
	
l1586:
	btfsc	c:(31775/8),(31775)&7	;volatile
	goto	u591
	goto	u590
u591:
	goto	l1582
u590:
	
l139:
	line	40
	bcf	c:(31760/8),(31760)&7	;volatile
	line	41
	bcf	c:(31919/8),(31919)&7	;volatile
	line	42
	
l140:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clcd_write
	__end_of_clcd_write:
	signat	_clcd_write,8313
	global	_init_can

;; *************** function _init_can *****************
;; Defined at:
;;		line 15 in file "src/can.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2,group=0
	file	"src/can.c"
	line	15
global __ptext4
__ptext4:
psect	text4
	file	"src/can.c"
	line	15
	
_init_can:
;incstack = 0
	callstack 30
	line	17
	
l1336:
	bcf	c:(31898/8),(31898)&7	;volatile
	line	18
	bsf	c:(31899/8),(31899)&7	;volatile
	line	22
	
l1338:
	movlw	(01Fh)&0ffh
	andwf	((c:3951))^0f00h,c	;volatile
	
l1340:
	bsf	(0+(7/8)+(c:3951))^0f00h,c,(7)&7	;volatile
	line	25
	
l1342:
		movlw	128
	xorwf	((c:3950))^0f00h,c,w	;volatile
	btfss	status,2
	goto	u361
	goto	u360

u361:
	goto	l1342
u360:
	
l92:
	line	29
	clrf	((c:3959))^0f00h,c	;volatile
	line	32
	
l1344:
	movlw	low(0E1h)
	movwf	((c:3952))^0f00h,c	;volatile
	line	33
	movlw	low(01Bh)
	movwf	((c:3953))^0f00h,c	;volatile
	line	35
	movlw	low(03h)
	movwf	((c:3954))^0f00h,c	;volatile
	line	41
	
l1346:
	movlb	13	; () banked
	clrf	((3540))&0ffh	;volatile
	line	43
	
l1348:; BSR set to: 13

	movlw	(01Fh)&0ffh
	andwf	((c:3951))^0f00h,c	;volatile
	
l1350:; BSR set to: 13

	movf	((c:3951))^0f00h,c,w	;volatile
	line	46
	
l1352:; BSR set to: 13

	clrf	((c:3936))^0f00h,c	;volatile
	line	48
	
l1354:; BSR set to: 13

	bsf	((c:3936))^0f00h,c,5	;volatile
	line	49
	
l1356:; BSR set to: 13

	bsf	((c:3936))^0f00h,c,6	;volatile
	line	50
	
l93:; BSR set to: 13

	return	;funcret
	callstack 0
GLOBAL	__end_of_init_can
	__end_of_init_can:
	signat	_init_can,89
	global	_init_adc

;; *************** function _init_adc *****************
;; Defined at:
;;		line 4 in file "src/adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,group=0
	file	"src/adc.c"
	line	4
global __ptext5
__ptext5:
psect	text5
	file	"src/adc.c"
	line	4
	
_init_adc:; BSR set to: 13

;incstack = 0
	callstack 30
	line	6
	
l1334:
	bsf	c:(32263/8),(32263)&7	;volatile
	line	12
	bcf	c:(32261/8),(32261)&7	;volatile
	line	13
	bsf	c:(32260/8),(32260)&7	;volatile
	line	14
	bcf	c:(32259/8),(32259)&7	;volatile
	line	20
	bcf	c:(32256/8),(32256)&7	;volatile
	line	21
	bsf	c:(32257/8),(32257)&7	;volatile
	line	22
	bcf	c:(32258/8),(32258)&7	;volatile
	line	25
	bcf	c:(32273/8),(32273)&7	;volatile
	line	28
	bcf	c:(32269/8),(32269)&7	;volatile
	line	30
	bcf	c:(32268/8),(32268)&7	;volatile
	line	33
	clrf	((c:4036))^0f00h,c	;volatile
	line	34
	clrf	((c:4035))^0f00h,c	;volatile
	line	37
	bsf	c:(32272/8),(32272)&7	;volatile
	line	38
	
l33:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_adc
	__end_of_init_adc:
	signat	_init_adc,89
	global	_get_speed

;; *************** function _get_speed *****************
;; Defined at:
;;		line 17 in file "src/ecu1_sensor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  value           2   29[COMRAM] unsigned int 
;;  adc_value       2   27[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2  189[None  ] unsigned short 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___lldiv
;;		___lmul
;;		___lwdiv
;;		___lwmod
;;		_can_transmit
;;		_read_adc
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2,group=0
	file	"src/ecu1_sensor.c"
	line	17
global __ptext6
__ptext6:
psect	text6
	file	"src/ecu1_sensor.c"
	line	17
	
_get_speed:
;incstack = 0
	callstack 29
	line	21
	
l1692:
	movlw	(04h)&0ffh
	
	call	_read_adc
	movff	0+?_read_adc,(c:get_speed@adc_value)
	movff	1+?_read_adc,(c:get_speed@adc_value+1)
	line	22
	movff	(c:get_speed@adc_value),(c:___lmul@multiplier)
	movff	(c:get_speed@adc_value+1),(c:___lmul@multiplier+1)
	clrf	((c:___lmul@multiplier+2))^00h,c
	clrf	((c:___lmul@multiplier+3))^00h,c
	movlw	low(064h)
	movwf	((c:___lmul@multiplicand))^00h,c
	movlw	high(064h)
	movwf	((c:___lmul@multiplicand+1))^00h,c
	movlw	low highword(064h)
	movwf	((c:___lmul@multiplicand+2))^00h,c
	movlw	high highword(064h)
	movwf	((c:___lmul@multiplicand+3))^00h,c
	call	___lmul	;wreg free
	movff	0+?___lmul,(c:___lldiv@dividend)
	movff	1+?___lmul,(c:___lldiv@dividend+1)
	movff	2+?___lmul,(c:___lldiv@dividend+2)
	movff	3+?___lmul,(c:___lldiv@dividend+3)
	
	movlw	low(03FFh)
	movwf	((c:___lldiv@divisor))^00h,c
	movlw	high(03FFh)
	movwf	((c:___lldiv@divisor+1))^00h,c
	movlw	low highword(03FFh)
	movwf	((c:___lldiv@divisor+2))^00h,c
	movlw	high highword(03FFh)
	movwf	((c:___lldiv@divisor+3))^00h,c
	call	___lldiv	;wreg free
	movff	0+?___lldiv,(c:get_speed@value)
	movff	1+?___lldiv,(c:get_speed@value+1)
	line	24
	movff	(c:get_speed@value),(c:___lwdiv@dividend)
	movff	(c:get_speed@value+1),(c:___lwdiv@dividend+1)
	clrf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv)^00h,c,w
	addlw	low(030h)
	movwf	((c:_speed))^00h,c
	line	25
	movff	(c:get_speed@value),(c:___lwmod@dividend)
	movff	(c:get_speed@value+1),(c:___lwmod@dividend+1)
	clrf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	addlw	low(030h)
	movwf	(0+((c:_speed)+01h))^00h,c
	line	26
	
l1694:
	clrf	(0+((c:_speed)+02h))^00h,c
	line	30
	
l1696:
	clrf	((c:can_transmit@msg_id+1))^00h,c
	movlw	low(010h)
	movwf	((c:can_transmit@msg_id))^00h,c
		movlw	low(_speed)
	movwf	((c:can_transmit@data))^00h,c
	clrf	((c:can_transmit@data+1))^00h,c

	movlw	low(02h)
	movwf	((c:can_transmit@len))^00h,c
	call	_can_transmit	;wreg free
	line	31
	
l1698:
	asmopt push
asmopt off
movlw  3
movwf	(??_get_speed+0+1)^00h,c
movlw	8
movwf	(??_get_speed+0)^00h,c
	movlw	119
u857:
decfsz	wreg,f
	bra	u857
	decfsz	(??_get_speed+0)^00h,c,f
	bra	u857
	decfsz	(??_get_speed+0+1)^00h,c,f
	bra	u857
	nop
asmopt pop

	line	32
	
l1700:
	clrf	((c:_len))^00h,c
	line	34
	
l190:
	return	;funcret
	callstack 0
GLOBAL	__end_of_get_speed
	__end_of_get_speed:
	signat	_get_speed,90
	global	_read_adc

;; *************** function _read_adc *****************
;; Defined at:
;;		line 40 in file "src/adc.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    6[COMRAM] unsigned char 
;;  reg_val         2    4[COMRAM] unsigned short 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned short 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_get_speed
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2,group=0
	file	"src/adc.c"
	line	40
global __ptext7
__ptext7:
psect	text7
	file	"src/adc.c"
	line	40
	
_read_adc:
;incstack = 0
	callstack 29
	line	44
	movwf	((c:read_adc@channel))^00h,c
	
l1542:
	movff	(c:read_adc@channel),??_read_adc+0
	bcf	status,0
	rlcf	(??_read_adc+0)^00h,c
	bcf	status,0
	rlcf	(??_read_adc+0)^00h,c

	movf	((c:4034))^0f00h,c,w	;volatile
	andlw	low(0C3h)
	iorwf	(??_read_adc+0)^00h,c,w
	movwf	((c:4034))^0f00h,c	;volatile
	line	47
	
l1544:
	bsf	c:(32273/8),(32273)&7	;volatile
	line	49
	
l36:
	line	48
	btfsc	c:(32273/8),(32273)&7	;volatile
	goto	u541
	goto	u540
u541:
	goto	l36
u540:
	line	50
	
l1546:
	movf	((c:4035))^0f00h,c,w	;volatile
	movff	(c:4036),??_read_adc+0	;volatile
	clrf	(??_read_adc+0+1)^00h,c
	movff	??_read_adc+0,??_read_adc+0+1
	clrf	(??_read_adc+0)^00h,c
	iorwf	(??_read_adc+0)^00h,c,w
	movwf	((c:read_adc@reg_val))^00h,c
	movf	(??_read_adc+0+1)^00h,c,w
	movwf	1+((c:read_adc@reg_val))^00h,c
	line	52
	
l1548:
	movff	(c:read_adc@reg_val),(c:?_read_adc)
	movff	(c:read_adc@reg_val+1),(c:?_read_adc+1)
	line	53
	
l39:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_adc
	__end_of_read_adc:
	signat	_read_adc,4218
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 7 in file "/opt/microchip/xc8/v4.00/pic/sources/c99/common/lwmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] unsigned int 
;;  divisor         2    2[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_get_speed
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v4.00/pic/sources/c99/common/lwmod.c"
	line	7
global __ptext8
__ptext8:
psect	text8
	file	"/opt/microchip/xc8/v4.00/pic/sources/c99/common/lwmod.c"
	line	7
	
___lwmod:
;incstack = 0
	callstack 29
	line	12
	
l1642:
	movf	((c:___lwmod@divisor))^00h,c,w
iorwf	((c:___lwmod@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u681
	goto	u680

u681:
	goto	l942
u680:
	line	13
	
l1644:
	movlw	low(01h)
	movwf	((c:___lwmod@counter))^00h,c
	line	14
	goto	l1648
	line	15
	
l1646:
	bcf	status,0
	rlcf	((c:___lwmod@divisor))^00h,c
	rlcf	((c:___lwmod@divisor+1))^00h,c
	line	16
	incf	((c:___lwmod@counter))^00h,c
	line	14
	
l1648:
	
	btfss	((c:___lwmod@divisor+1))^00h,c,(15)&7
	goto	u691
	goto	u690
u691:
	goto	l1646
u690:
	line	19
	
l1650:
		movf	((c:___lwmod@divisor))^00h,c,w
	subwf	((c:___lwmod@dividend))^00h,c,w
	movf	((c:___lwmod@divisor+1))^00h,c,w
	subwfb	((c:___lwmod@dividend+1))^00h,c,w
	btfss	status,0
	goto	u701
	goto	u700

u701:
	goto	l1654
u700:
	line	20
	
l1652:
	movf	((c:___lwmod@divisor))^00h,c,w
	subwf	((c:___lwmod@dividend))^00h,c
	movf	((c:___lwmod@divisor+1))^00h,c,w
	subwfb	((c:___lwmod@dividend+1))^00h,c
	line	21
	
l1654:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1))^00h,c
	rrcf	((c:___lwmod@divisor))^00h,c
	line	22
	
l1656:
	decfsz	((c:___lwmod@counter))^00h,c
	
	goto	l1650
	line	23
	
l942:
	line	24
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	25
	
l949:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 7 in file "/opt/microchip/xc8/v4.00/pic/sources/c99/common/lwdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] unsigned int 
;;  divisor         2    2[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    4[COMRAM] unsigned int 
;;  counter         1    6[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_get_speed
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v4.00/pic/sources/c99/common/lwdiv.c"
	line	7
global __ptext9
__ptext9:
psect	text9
	file	"/opt/microchip/xc8/v4.00/pic/sources/c99/common/lwdiv.c"
	line	7
	
___lwdiv:
;incstack = 0
	callstack 29
	line	13
	
l1620:
	clrf	((c:___lwdiv@quotient+1))^00h,c
	movlw	low(0)
	movwf	((c:___lwdiv@quotient))^00h,c
	line	14
	
l1622:
	movf	((c:___lwdiv@divisor))^00h,c,w
iorwf	((c:___lwdiv@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u651
	goto	u650

u651:
	goto	l932
u650:
	line	15
	
l1624:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter))^00h,c
	line	16
	goto	l1628
	line	17
	
l1626:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor))^00h,c
	rlcf	((c:___lwdiv@divisor+1))^00h,c
	line	18
	incf	((c:___lwdiv@counter))^00h,c
	line	16
	
l1628:
	
	btfss	((c:___lwdiv@divisor+1))^00h,c,(15)&7
	goto	u661
	goto	u660
u661:
	goto	l1626
u660:
	line	21
	
l1630:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient))^00h,c
	rlcf	((c:___lwdiv@quotient+1))^00h,c
	line	22
	
l1632:
		movf	((c:___lwdiv@divisor))^00h,c,w
	subwf	((c:___lwdiv@dividend))^00h,c,w
	movf	((c:___lwdiv@divisor+1))^00h,c,w
	subwfb	((c:___lwdiv@dividend+1))^00h,c,w
	btfss	status,0
	goto	u671
	goto	u670

u671:
	goto	l1638
u670:
	line	23
	
l1634:
	movf	((c:___lwdiv@divisor))^00h,c,w
	subwf	((c:___lwdiv@dividend))^00h,c
	movf	((c:___lwdiv@divisor+1))^00h,c,w
	subwfb	((c:___lwdiv@dividend+1))^00h,c
	line	24
	
l1636:
	bsf	(0+(0/8)+(c:___lwdiv@quotient))^00h,c,(0)&7
	line	26
	
l1638:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1))^00h,c
	rrcf	((c:___lwdiv@divisor))^00h,c
	line	27
	
l1640:
	decfsz	((c:___lwdiv@counter))^00h,c
	
	goto	l1630
	line	28
	
l932:
	line	29
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	30
	
l939:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	___lmul

;; *************** function ___lmul *****************
;; Defined at:
;;		line 15 in file "/opt/microchip/xc8/v4.00/pic/sources/c99/common/Umul32.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4    0[COMRAM] unsigned long 
;;  multiplicand    4    4[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4    8[COMRAM] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    0[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         8       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_get_speed
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v4.00/pic/sources/c99/common/Umul32.c"
	line	15
global __ptext10
__ptext10:
psect	text10
	file	"/opt/microchip/xc8/v4.00/pic/sources/c99/common/Umul32.c"
	line	15
	
___lmul:
;incstack = 0
	callstack 29
	line	119
	
l1588:
	movlw	low(0)
	movwf	((c:___lmul@product))^00h,c
	movlw	high(0)
	movwf	((c:___lmul@product+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___lmul@product+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___lmul@product+3))^00h,c
	line	121
	
l1590:
	
	btfss	((c:___lmul@multiplier))^00h,c,(0)&7
	goto	u601
	goto	u600
u601:
	goto	l1594
u600:
	line	122
	
l1592:
	movf	((c:___lmul@multiplicand))^00h,c,w
	addwf	((c:___lmul@product))^00h,c
	movf	((c:___lmul@multiplicand+1))^00h,c,w
	addwfc	((c:___lmul@product+1))^00h,c
	movf	((c:___lmul@multiplicand+2))^00h,c,w
	addwfc	((c:___lmul@product+2))^00h,c
	movf	((c:___lmul@multiplicand+3))^00h,c,w
	addwfc	((c:___lmul@product+3))^00h,c
	line	123
	
l1594:
	bcf	status,0
	rlcf	((c:___lmul@multiplicand))^00h,c
	rlcf	((c:___lmul@multiplicand+1))^00h,c
	rlcf	((c:___lmul@multiplicand+2))^00h,c
	rlcf	((c:___lmul@multiplicand+3))^00h,c
	line	124
	
l1596:
	bcf	status,0
	rrcf	((c:___lmul@multiplier+3))^00h,c
	rrcf	((c:___lmul@multiplier+2))^00h,c
	rrcf	((c:___lmul@multiplier+1))^00h,c
	rrcf	((c:___lmul@multiplier))^00h,c
	line	125
	movf	((c:___lmul@multiplier))^00h,c,w
iorwf	((c:___lmul@multiplier+1))^00h,c,w
iorwf	((c:___lmul@multiplier+2))^00h,c,w
iorwf	((c:___lmul@multiplier+3))^00h,c,w
	btfss	status,2
	goto	u611
	goto	u610

u611:
	goto	l1590
u610:
	
l342:
	line	128
	movff	(c:___lmul@product),(c:?___lmul)
	movff	(c:___lmul@product+1),(c:?___lmul+1)
	movff	(c:___lmul@product+2),(c:?___lmul+2)
	movff	(c:___lmul@product+3),(c:?___lmul+3)
	line	129
	
l343:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	___lldiv

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 7 in file "/opt/microchip/xc8/v4.00/pic/sources/c99/common/__lldiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        4   12[COMRAM] unsigned long 
;;  divisor         4   16[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   20[COMRAM] unsigned long 
;;  counter         1   24[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   12[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         8       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:        13       0       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_get_speed
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v4.00/pic/sources/c99/common/__lldiv.c"
	line	7
global __ptext11
__ptext11:
psect	text11
	file	"/opt/microchip/xc8/v4.00/pic/sources/c99/common/__lldiv.c"
	line	7
	
___lldiv:
;incstack = 0
	callstack 29
	line	13
	
l1598:
	movlw	low(0)
	movwf	((c:___lldiv@quotient))^00h,c
	movlw	high(0)
	movwf	((c:___lldiv@quotient+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___lldiv@quotient+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___lldiv@quotient+3))^00h,c
	line	14
	
l1600:
	movf	((c:___lldiv@divisor))^00h,c,w
iorwf	((c:___lldiv@divisor+1))^00h,c,w
iorwf	((c:___lldiv@divisor+2))^00h,c,w
iorwf	((c:___lldiv@divisor+3))^00h,c,w
	btfsc	status,2
	goto	u621
	goto	u620

u621:
	goto	l358
u620:
	line	15
	
l1602:
	movlw	low(01h)
	movwf	((c:___lldiv@counter))^00h,c
	line	16
	goto	l1606
	line	17
	
l1604:
	bcf	status,0
	rlcf	((c:___lldiv@divisor))^00h,c
	rlcf	((c:___lldiv@divisor+1))^00h,c
	rlcf	((c:___lldiv@divisor+2))^00h,c
	rlcf	((c:___lldiv@divisor+3))^00h,c
	line	18
	incf	((c:___lldiv@counter))^00h,c
	line	16
	
l1606:
	
	btfss	((c:___lldiv@divisor+3))^00h,c,(31)&7
	goto	u631
	goto	u630
u631:
	goto	l1604
u630:
	line	21
	
l1608:
	bcf	status,0
	rlcf	((c:___lldiv@quotient))^00h,c
	rlcf	((c:___lldiv@quotient+1))^00h,c
	rlcf	((c:___lldiv@quotient+2))^00h,c
	rlcf	((c:___lldiv@quotient+3))^00h,c
	line	22
	
l1610:
		movf	((c:___lldiv@divisor))^00h,c,w
	subwf	((c:___lldiv@dividend))^00h,c,w
	movf	((c:___lldiv@divisor+1))^00h,c,w
	subwfb	((c:___lldiv@dividend+1))^00h,c,w
	movf	((c:___lldiv@divisor+2))^00h,c,w
	subwfb	((c:___lldiv@dividend+2))^00h,c,w
	movf	((c:___lldiv@divisor+3))^00h,c,w
	subwfb	((c:___lldiv@dividend+3))^00h,c,w
	btfss	status,0
	goto	u641
	goto	u640

u641:
	goto	l1616
u640:
	line	23
	
l1612:
	movf	((c:___lldiv@divisor))^00h,c,w
	subwf	((c:___lldiv@dividend))^00h,c
	movf	((c:___lldiv@divisor+1))^00h,c,w
	subwfb	((c:___lldiv@dividend+1))^00h,c
	movf	((c:___lldiv@divisor+2))^00h,c,w
	subwfb	((c:___lldiv@dividend+2))^00h,c
	movf	((c:___lldiv@divisor+3))^00h,c,w
	subwfb	((c:___lldiv@dividend+3))^00h,c
	line	24
	
l1614:
	bsf	(0+(0/8)+(c:___lldiv@quotient))^00h,c,(0)&7
	line	26
	
l1616:
	bcf	status,0
	rrcf	((c:___lldiv@divisor+3))^00h,c
	rrcf	((c:___lldiv@divisor+2))^00h,c
	rrcf	((c:___lldiv@divisor+1))^00h,c
	rrcf	((c:___lldiv@divisor))^00h,c
	line	27
	
l1618:
	decfsz	((c:___lldiv@counter))^00h,c
	
	goto	l1608
	line	28
	
l358:
	line	29
	movff	(c:___lldiv@quotient),(c:?___lldiv)
	movff	(c:___lldiv@quotient+1),(c:?___lldiv+1)
	movff	(c:___lldiv@quotient+2),(c:?___lldiv+2)
	movff	(c:___lldiv@quotient+3),(c:?___lldiv+3)
	line	30
	
l365:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
	signat	___lldiv,8316
	global	_get_gear_pos

;; *************** function _get_gear_pos *****************
;; Defined at:
;;		line 36 in file "src/ecu1_sensor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_can_transmit
;;		_read_mkp
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2,group=0
	file	"src/ecu1_sensor.c"
	line	36
global __ptext12
__ptext12:
psect	text12
	file	"src/ecu1_sensor.c"
	line	36
	
_get_gear_pos:
;incstack = 0
	callstack 28
	line	39
	
l1704:
	movlw	(01h)&0ffh
	
	call	_read_mkp
	movwf	((c:_key))^00h,c
	line	40
	
l1706:
		decf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u711
	goto	u710

u711:
	goto	l1712
u710:
	line	41
	
l1708:
		movlw	07h-0
	cpfslt	((c:get_gear_pos@index))^00h,c
	goto	u721
	goto	u720

u721:
	goto	l1726
u720:
	line	42
	
l1710:
	incf	((c:get_gear_pos@index))^00h,c
	goto	l1726
	line	44
	
l1712:
		movlw	2
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u731
	goto	u730

u731:
	goto	l1718
u730:
	line	46
	
l1714:
	movf	((c:get_gear_pos@index))^00h,c,w
	btfsc	status,2
	goto	u741
	goto	u740
u741:
	goto	l1726
u740:
	line	47
	
l1716:
	decf	((c:get_gear_pos@index))^00h,c
	goto	l1726
	line	49
	
l1718:
		movlw	3
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u751
	goto	u750

u751:
	goto	l1726
u750:
	line	50
	
l1720:
	clrf	((c:can_transmit@msg_id+1))^00h,c
	movlw	low(020h)
	movwf	((c:can_transmit@msg_id))^00h,c
		movlw	low(_ev+018h)
	movwf	((c:can_transmit@data))^00h,c
	movlw	high(_ev+018h)
	movwf	((c:can_transmit@data+1))^00h,c

	movlw	low(02h)
	movwf	((c:can_transmit@len))^00h,c
	call	_can_transmit	;wreg free
	line	51
	
l1722:
	asmopt push
asmopt off
movlw  3
movwf	(??_get_gear_pos+0+1)^00h,c
movlw	8
movwf	(??_get_gear_pos+0)^00h,c
	movlw	119
u867:
decfsz	wreg,f
	bra	u867
	decfsz	(??_get_gear_pos+0)^00h,c,f
	bra	u867
	decfsz	(??_get_gear_pos+0+1)^00h,c,f
	bra	u867
	nop
asmopt pop

	goto	l202
	line	57
	
l1726:
	clrf	((c:can_transmit@msg_id+1))^00h,c
	movlw	low(020h)
	movwf	((c:can_transmit@msg_id))^00h,c
	movf	((c:get_gear_pos@index))^00h,c,w
	mullw	03h
	movlw	low(_ev)
	addwf	(prodl)^0f00h,c,w
	movwf	((c:can_transmit@data))^00h,c
	movlw	high(_ev)
	addwfc	prod+1,w
	movwf	1+((c:can_transmit@data))^00h,c
	movlw	low(02h)
	movwf	((c:can_transmit@len))^00h,c
	call	_can_transmit	;wreg free
	goto	l1722
	line	63
	
l202:
	return	;funcret
	callstack 0
GLOBAL	__end_of_get_gear_pos
	__end_of_get_gear_pos:
	signat	_get_gear_pos,89
	global	_read_mkp

;; *************** function _read_mkp *****************
;; Defined at:
;;		line 70 in file "src/mkp.c"
;; Parameters:    Size  Location     Type
;;  trigger         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  trigger         1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_scan_key
;; This function is called by:
;;		_get_gear_pos
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2,group=0
	file	"src/mkp.c"
	line	70
global __ptext13
__ptext13:
psect	text13
	file	"src/mkp.c"
	line	70
	
_read_mkp:
;incstack = 0
	callstack 28
	line	74
	movwf	((c:read_mkp@trigger))^00h,c
	
l1234:
		decf	((c:read_mkp@trigger))^00h,c,w
	btfss	status,2
	goto	u201
	goto	u200

u201:
	goto	l1254
u200:
	line	76
	
l1236:
	call	_scan_key	;wreg free
	movwf	((c:read_mkp@key))^00h,c
	line	77
	
l1238:
		incf	((c:read_mkp@key))^00h,c,w
	btfsc	status,2
	goto	u211
	goto	u210

u211:
	goto	l1250
u210:
	
l1240:
		decf	((c:read_mkp@flag))^00h,c,w
	btfss	status,2
	goto	u221
	goto	u220

u221:
	goto	l1250
u220:
	line	79
	
l1242:
	clrf	((c:read_mkp@flag))^00h,c
	line	80
	
l1244:
	movf	((c:read_mkp@key))^00h,c,w
	goto	l268
	line	81
	
l1250:
		incf	((c:read_mkp@key))^00h,c,w
	btfss	status,2
	goto	u231
	goto	u230

u231:
	goto	l1260
u230:
	line	83
	
l1252:
	movlw	low(01h)
	movwf	((c:read_mkp@flag))^00h,c
	goto	l1260
	line	85
	
l1254:
	movf	((c:read_mkp@trigger))^00h,c,w
	btfss	status,2
	goto	u241
	goto	u240
u241:
	goto	l1260
u240:
	line	87
	
l1256:
	call	_scan_key	;wreg free
	goto	l268
	line	89
	
l1260:
	movlw	(0FFh)&0ffh
	line	90
	
l268:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_mkp
	__end_of_read_mkp:
	signat	_read_mkp,4217
	global	_scan_key

;; *************** function _scan_key *****************
;; Defined at:
;;		line 13 in file "src/mkp.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_read_mkp
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2,group=0
	line	13
global __ptext14
__ptext14:
psect	text14
	file	"src/mkp.c"
	line	13
	
_scan_key:
;incstack = 0
	callstack 28
	line	15
	
l1116:
	bcf	((c:3969))^0f00h,c,5	;volatile
	line	16
	bsf	((c:3969))^0f00h,c,6	;volatile
	line	17
	bsf	((c:3969))^0f00h,c,7	;volatile
	line	19
	btfsc	((c:3969))^0f00h,c,1	;volatile
	goto	u21
	goto	u20
u21:
	goto	l238
u20:
	line	21
	
l1118:
	movlw	(01h)&0ffh
	goto	l239
	line	22
	
l238:
	btfsc	((c:3969))^0f00h,c,2	;volatile
	goto	u31
	goto	u30
u31:
	goto	l241
u30:
	line	24
	
l1124:
	movlw	(04h)&0ffh
	goto	l239
	line	25
	
l241:
	btfsc	((c:3969))^0f00h,c,3	;volatile
	goto	u41
	goto	u40
u41:
	goto	l243
u40:
	line	27
	
l1130:
	movlw	(07h)&0ffh
	goto	l239
	line	28
	
l243:
	btfsc	((c:3969))^0f00h,c,4	;volatile
	goto	u51
	goto	u50
u51:
	goto	l240
u50:
	line	30
	
l1136:
	movlw	(0Ah)&0ffh
	goto	l239
	line	31
	
l240:
	line	32
	bsf	((c:3969))^0f00h,c,5	;volatile
	line	33
	bcf	((c:3969))^0f00h,c,6	;volatile
	line	34
	bsf	((c:3969))^0f00h,c,7	;volatile
	line	36
	btfsc	((c:3969))^0f00h,c,1	;volatile
	goto	u61
	goto	u60
u61:
	goto	l246
u60:
	line	38
	
l1140:
	movlw	(02h)&0ffh
	goto	l239
	line	39
	
l246:
	btfsc	((c:3969))^0f00h,c,2	;volatile
	goto	u71
	goto	u70
u71:
	goto	l248
u70:
	line	41
	
l1146:
	movlw	(05h)&0ffh
	goto	l239
	line	42
	
l248:
	btfsc	((c:3969))^0f00h,c,3	;volatile
	goto	u81
	goto	u80
u81:
	goto	l250
u80:
	line	44
	
l1152:
	movlw	(08h)&0ffh
	goto	l239
	line	45
	
l250:
	btfsc	((c:3969))^0f00h,c,4	;volatile
	goto	u91
	goto	u90
u91:
	goto	l247
u90:
	line	47
	
l1158:
	movlw	(0Bh)&0ffh
	goto	l239
	line	48
	
l247:
	line	49
	bsf	((c:3969))^0f00h,c,5	;volatile
	line	50
	bsf	((c:3969))^0f00h,c,6	;volatile
	line	51
	bcf	((c:3969))^0f00h,c,7	;volatile
	line	52
	bcf	((c:3969))^0f00h,c,7	;volatile
	line	54
	btfsc	((c:3969))^0f00h,c,1	;volatile
	goto	u101
	goto	u100
u101:
	goto	l253
u100:
	line	56
	
l1162:
	movlw	(03h)&0ffh
	goto	l239
	line	57
	
l253:
	btfsc	((c:3969))^0f00h,c,2	;volatile
	goto	u111
	goto	u110
u111:
	goto	l255
u110:
	line	59
	
l1168:
	movlw	(06h)&0ffh
	goto	l239
	line	60
	
l255:
	btfsc	((c:3969))^0f00h,c,3	;volatile
	goto	u121
	goto	u120
u121:
	goto	l257
u120:
	line	62
	
l1174:
	movlw	(09h)&0ffh
	goto	l239
	line	63
	
l257:
	btfsc	((c:3969))^0f00h,c,4	;volatile
	goto	u131
	goto	u130
u131:
	goto	l1184
u130:
	line	65
	
l1180:
	movlw	(0Ch)&0ffh
	goto	l239
	line	67
	
l1184:
	movlw	(0FFh)&0ffh
	line	68
	
l239:
	return	;funcret
	callstack 0
GLOBAL	__end_of_scan_key
	__end_of_scan_key:
	signat	_scan_key,89
	global	_can_transmit

;; *************** function _can_transmit *****************
;; Defined at:
;;		line 66 in file "src/can.c"
;; Parameters:    Size  Location     Type
;;  msg_id          2    4[COMRAM] unsigned short 
;;  data            2    6[COMRAM] PTR const unsigned char 
;;		 -> ev(27), speed(3), 
;;  len             1    8[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  i               2   14[COMRAM] int 
;;  ptr             2   12[COMRAM] PTR unsigned char 
;;		 -> TXB0D0(1), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         5       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		_set_msg_id_std
;; This function is called by:
;;		_get_speed
;;		_get_gear_pos
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2,group=0
	file	"src/can.c"
	line	66
global __ptext15
__ptext15:
psect	text15
	file	"src/can.c"
	line	66
	
_can_transmit:
;incstack = 0
	callstack 29
	line	68
	
l1552:
	movlb	15	; () banked
	clrf	((3907))&0ffh	;volatile
	line	69
	clrf	((3908))&0ffh	;volatile
	line	72
	
l1554:; BSR set to: 15

	movff	(c:can_transmit@msg_id),(c:set_msg_id_std@id)
	movff	(c:can_transmit@msg_id+1),(c:set_msg_id_std@id+1)
	call	_set_msg_id_std	;wreg free
	line	75
	
l1556:
	movff	(c:can_transmit@len),(3909)	;volatile
	line	80
	
l1558:
		movlw	low(3910)
	movwf	((c:can_transmit@ptr))^00h,c
	movlw	high(3910)
	movwf	((c:can_transmit@ptr+1))^00h,c

	line	81
	
l1560:
	clrf	((c:can_transmit@i+1))^00h,c
	movlw	low(0)
	movwf	((c:can_transmit@i))^00h,c
	goto	l1566
	line	82
	
l1562:
	movf	((c:can_transmit@i))^00h,c,w
	addwf	((c:can_transmit@data))^00h,c,w
	movwf	(??_can_transmit+0)^00h,c
	movf	((c:can_transmit@i+1))^00h,c,w
	addwfc	((c:can_transmit@data+1))^00h,c,w
	movwf	(??_can_transmit+0+1)^00h,c
	movff	??_can_transmit+0,tblptrl
	movff	??_can_transmit+0+1,tblptrh
	clrf	tblptru
	
	movf	((c:can_transmit@i))^00h,c,w
	addwf	((c:can_transmit@ptr))^00h,c,w
	movwf	c:fsr2l
	movf	((c:can_transmit@i+1))^00h,c,w
	addwfc	((c:can_transmit@ptr+1))^00h,c,w
	movwf	1+c:fsr2l
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u557

	tblrd	*
	
	movf	tablat,w
	bra	u550
u557:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u550:
	movwf	indf2
	line	81
	
l1564:
	infsnz	((c:can_transmit@i))^00h,c
	incf	((c:can_transmit@i+1))^00h,c
	
l1566:
	movf	((c:can_transmit@len))^00h,c,w
	movwf	(??_can_transmit+0)^00h,c
	clrf	(??_can_transmit+0+1)^00h,c

		movf	(??_can_transmit+0)^00h,c,w
	subwf	((c:can_transmit@i))^00h,c,w
	movf	((c:can_transmit@i+1))^00h,c,w
	xorlw	80h
	movwf	(??_can_transmit+2)^00h,c
	movf	(??_can_transmit+0+1)^00h,c,w
	xorlw	80h
	subwfb	(??_can_transmit+2)^00h,c,w
	btfss	status,0
	goto	u561
	goto	u560

u561:
	goto	l1562
u560:
	
l104:
	line	84
	movlb	15	; () banked
	bsf	(31235/8)&0ffh,(31235)&7	;volatile
	line	85
	
l105:; BSR set to: 15

	return	;funcret
	callstack 0
GLOBAL	__end_of_can_transmit
	__end_of_can_transmit:
	signat	_can_transmit,12409
	global	_set_msg_id_std

;; *************** function _set_msg_id_std *****************
;; Defined at:
;;		line 59 in file "src/can.c"
;; Parameters:    Size  Location     Type
;;  id              2    0[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_can_transmit
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2,group=0
	line	59
global __ptext16
__ptext16:
psect	text16
	file	"src/can.c"
	line	59
	
_set_msg_id_std:; BSR set to: 15

;incstack = 0
	callstack 28
	line	60
	
l1540:
	movff	(c:set_msg_id_std@id),??_set_msg_id_std+0
	movlw	07h
	andwf	(??_set_msg_id_std+0)^00h,c
	movlw	05h
	movwf	(??_set_msg_id_std+1)^00h,c
u535:
	bcf	status,0
	rlcf	(??_set_msg_id_std+0)^00h,c
	decfsz	(??_set_msg_id_std+1)^00h,c
	goto	u535
	movf	(??_set_msg_id_std+0)^00h,c,w
	movlb	15	; () banked
	movwf	((3906))&0ffh	;volatile
	line	61
	movff	(c:set_msg_id_std@id),??_set_msg_id_std+0
	movff	(c:set_msg_id_std@id+1),??_set_msg_id_std+0+1
	bcf	status,0
	rrcf	(??_set_msg_id_std+0+1)^00h,c
	rrcf	(??_set_msg_id_std+0)^00h,c
	bcf	status,0
	rrcf	(??_set_msg_id_std+0+1)^00h,c
	rrcf	(??_set_msg_id_std+0)^00h,c
	bcf	status,0
	rrcf	(??_set_msg_id_std+0+1)^00h,c
	rrcf	(??_set_msg_id_std+0)^00h,c
	movf	(??_set_msg_id_std+0)^00h,c,w
	movwf	((3905))&0ffh	;volatile
	line	62
	
l99:; BSR set to: 15

	return	;funcret
	callstack 0
GLOBAL	__end_of_set_msg_id_std
	__end_of_set_msg_id_std:
	signat	_set_msg_id_std,4217
psect	mediumconst
	db 0	; dummy byte at the end
	global	__smallconst
__smallconst	set	__pmediumconst
	global	__mediumconst
__mediumconst	set	__pmediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
