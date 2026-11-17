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
	FNCALL	_main,_display_ssd
	FNCALL	_main,_get_rpm
	FNCALL	_main,_init_adc
	FNCALL	_main,_init_can
	FNCALL	_main,_init_digital_keypad
	FNCALL	_main,_init_mkp
	FNCALL	_main,_init_ssd
	FNCALL	_main,_process_indicator
	FNCALL	_main,_read_digital_keypad
	FNCALL	_process_indicator,_can_transmit
	FNCALL	_get_rpm,___lldiv
	FNCALL	_get_rpm,___lmul
	FNCALL	_get_rpm,___lwdiv
	FNCALL	_get_rpm,___lwmod
	FNCALL	_get_rpm,_can_transmit
	FNCALL	_get_rpm,_read_adc
	FNCALL	_can_transmit,_set_msg_id_std
	FNROOT	_main
	global	read_mkp@flag
	global	read_digital_keypad@once
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"src/ecu2sensor.c"
	line	11

;initializer for _digit
	db	low(0E7h)
	db	low(021h)
	db	low(0CBh)
	db	low(06Bh)
	db	low(02Dh)
	db	low(06Eh)
	db	low(0EEh)
	db	low(023h)
	db	low(0EFh)
	db	low(06Fh)
	file	"src/mkp.c"
	line	72

;initializer for read_mkp@flag
	db	low(01h)
	file	"src/main.c"
	line	27

;initializer for _prev_ind_data
	db	low(0FFh)
	file	"src/digital_keypad.c"
	line	11

;initializer for read_digital_keypad@once
	db	low(01h)
	global	_count
	global	_value
	global	_adc_value
	global	read_mkp@key
	global	_cur_ind_status
	global	_prev_ind_status
	global	_rdata
	global	_ssd
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
	global	_PORTA
_PORTA	set	0xF80
	global	_TRISA
_TRISA	set	0xF92
	global	_PORTBbits
_PORTBbits	set	0xF81
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_TRISB
_TRISB	set	0xF93
	global	_PORTB
_PORTB	set	0xF81
	global	_PORTC
_PORTC	set	0xF82
	global	_TRISC
_TRISC	set	0xF94
	global	_TRISD
_TRISD	set	0xF95
	global	_PORTD
_PORTD	set	0xF83
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
	global	_count
_count:
       ds      2
	global	_msg_id
	global	_msg_id
_msg_id:
       ds      2
	global	_value
_value:
       ds      2
	global	_adc_value
_adc_value:
       ds      2
read_mkp@key:
       ds      1
	global	_indicator_data
	global	_indicator_data
_indicator_data:
       ds      1
	global	_len
	global	_len
_len:
       ds      1
	global	_cur_ind_status
_cur_ind_status:
       ds      1
	global	_prev_ind_status
_prev_ind_status:
       ds      1
	global	_rdata
_rdata:
       ds      9
	global	_ssd
_ssd:
       ds      4
psect	dataCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pdataCOMRAM
__pdataCOMRAM:
	file	"src/ecu2sensor.c"
	line	11
	global	_digit
	global	_digit
_digit:
       ds      10
psect	dataCOMRAM
	file	"src/mkp.c"
	line	72
read_mkp@flag:
       ds      1
psect	dataCOMRAM
	file	"src/main.c"
	line	27
	global	_prev_ind_data
	global	_prev_ind_data
_prev_ind_data:
       ds      1
psect	dataCOMRAM
	file	"src/digital_keypad.c"
	line	11
read_digital_keypad@once:
       ds      1
	file	"build/main.s"
	line	#
psect	cinit
; Initialize objects allocated to COMRAM (13 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,13
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
	line	#
; Clear objects allocated to COMRAM (26 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	26
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_init_ssd:	; 1 bytes @ 0x0
?_init_mkp:	; 1 bytes @ 0x0
?_display_ssd:	; 1 bytes @ 0x0
?_init_adc:	; 1 bytes @ 0x0
?_init_can:	; 1 bytes @ 0x0
?_set_msg_id_std:	; 1 bytes @ 0x0
?_init_digital_keypad:	; 1 bytes @ 0x0
?_read_digital_keypad:	; 1 bytes @ 0x0
?_process_indicator:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?_read_adc
?_read_adc:	; 2 bytes @ 0x0
?_get_rpm:	; 2 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	read_digital_keypad@detection_type
read_digital_keypad@detection_type:	; 1 bytes @ 0x0
	global	display_ssd@data
display_ssd@data:	; 1 bytes @ 0x0
	global	set_msg_id_std@id
set_msg_id_std@id:	; 2 bytes @ 0x0
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
??_init_ssd:	; 1 bytes @ 0x0
??_init_mkp:	; 1 bytes @ 0x0
??_init_adc:	; 1 bytes @ 0x0
??_init_can:	; 1 bytes @ 0x0
??_init_digital_keypad:	; 1 bytes @ 0x0
??_read_digital_keypad:	; 1 bytes @ 0x0
	ds   1
??_display_ssd:	; 1 bytes @ 0x1
	ds   1
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
??_read_adc:	; 1 bytes @ 0x2
??_set_msg_id_std:	; 1 bytes @ 0x2
	ds   1
	global	display_ssd@j
display_ssd@j:	; 2 bytes @ 0x3
	ds   1
?_can_transmit:	; 1 bytes @ 0x4
	global	read_adc@reg_val
read_adc@reg_val:	; 2 bytes @ 0x4
	global	can_transmit@msg_id
can_transmit@msg_id:	; 2 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
??___lwdiv:	; 1 bytes @ 0x4
	ds   1
	global	display_ssd@i
display_ssd@i:	; 2 bytes @ 0x5
	ds   1
	global	read_adc@channel
read_adc@channel:	; 1 bytes @ 0x6
	global	can_transmit@data
can_transmit@data:	; 1 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	ds   1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x7
	global	can_transmit@len
can_transmit@len:	; 1 bytes @ 0x7
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x7
	ds   1
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x8
??_can_transmit:	; 1 bytes @ 0x8
??___lmul:	; 1 bytes @ 0x8
	ds   1
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x9
	ds   2
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xB
	global	can_transmit@ptr
can_transmit@ptr:	; 2 bytes @ 0xB
??___lwmod:	; 1 bytes @ 0xB
	ds   1
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0xC
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0xC
	ds   1
	global	can_transmit@i
can_transmit@i:	; 2 bytes @ 0xD
	ds   2
??_process_indicator:	; 1 bytes @ 0xF
	ds   1
	global	_process_indicator$242
_process_indicator$242:	; 2 bytes @ 0x10
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x10
	ds   2
	global	_process_indicator$243
_process_indicator$243:	; 2 bytes @ 0x12
	ds   2
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x14
??___lldiv:	; 1 bytes @ 0x14
	ds   4
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0x18
	ds   1
??_get_rpm:	; 1 bytes @ 0x19
	ds   2
	global	main@key
main@key:	; 1 bytes @ 0x1B
??_main:	; 1 bytes @ 0x1B
	ds   1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        13
;!    BSS         26
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     28      67
;!    BANK0           160      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    can_transmit@data	PTR const unsigned char  size(1) Largest target is 9
;!		 -> rdata(COMRAM[9]), ssd(COMRAM[4]), 
;!
;!    can_transmit@ptr	PTR unsigned char  size(2) Largest target is 1
;!		 -> TXB0D0(SFR_2[1]), 
;!
;!    display_ssd@data	PTR unsigned char  size(1) Largest target is 4
;!		 -> ssd(COMRAM[4]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_get_rpm
;!    _process_indicator->_can_transmit
;!    _get_rpm->___lldiv
;!    _can_transmit->_set_msg_id_std
;!    ___lwmod->___lwdiv
;!    ___lldiv->___lmul
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
;! (0) _main                                                 1     1      0    1386
;!                                             27 COMRAM     1     1      0
;!                        _display_ssd
;!                            _get_rpm
;!                           _init_adc
;!                           _init_can
;!                _init_digital_keypad
;!                           _init_mkp
;!                           _init_ssd
;!                  _process_indicator
;!                _read_digital_keypad
;! ---------------------------------------------------------------------------------
;! (1) _read_digital_keypad                                  1     1      0      30
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _process_indicator                                    5     5      0     278
;!                                             15 COMRAM     5     5      0
;!                       _can_transmit
;! ---------------------------------------------------------------------------------
;! (1) _init_ssd                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _init_mkp                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _init_digital_keypad                                  0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _init_can                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _init_adc                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _get_rpm                                              2     2      0     875
;!                                             25 COMRAM     2     2      0
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
;! (2) _can_transmit                                        11     7      4     230
;!                                              4 COMRAM    11     7      4
;!                     _set_msg_id_std
;! ---------------------------------------------------------------------------------
;! (3) _set_msg_id_std                                       4     2      2      45
;!                                              0 COMRAM     4     2      2
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              5     1      4     167
;!                                              7 COMRAM     5     1      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              7     3      4     168
;!                                              0 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! (2) ___lmul                                              12     4      8      94
;!                                              0 COMRAM    12     4      8
;! ---------------------------------------------------------------------------------
;! (2) ___lldiv                                             13     5      8     164
;!                                             12 COMRAM    13     5      8
;!                             ___lmul (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _display_ssd                                          7     6      1     136
;!                                              0 COMRAM     7     6      1
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _display_ssd
;!   _get_rpm
;!     ___lldiv
;!       ___lmul (ARG)
;!     ___lmul
;!     ___lwdiv
;!     ___lwmod
;!       ___lwdiv (ARG)
;!     _can_transmit
;!       _set_msg_id_std
;!     _read_adc
;!   _init_adc
;!   _init_can
;!   _init_digital_keypad
;!   _init_mkp
;!   _init_ssd
;!   _process_indicator
;!     _can_transmit
;!   _read_digital_keypad
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
;!COMRAM              95     28      67     70.5%
;!BITBIGSFRh          82      0       0      0.0%
;!BITBIGSFRlh         61      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0      67      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 31 in file "src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  key             1   27[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, cstack
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
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_display_ssd
;;		_get_rpm
;;		_init_adc
;;		_init_can
;;		_init_digital_keypad
;;		_init_mkp
;;		_init_ssd
;;		_process_indicator
;;		_read_digital_keypad
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"src/main.c"
	line	31
global __ptext0
__ptext0:
psect	text0
	file	"src/main.c"
	line	31
	
_main:
;incstack = 0
	callstack 28
	line	32
	
l1810:
	call	_init_adc	;wreg free
	line	33
	
l1812:
	call	_init_ssd	;wreg free
	line	34
	
l1814:
	call	_init_can	;wreg free
	line	35
	
l1816:
	call	_init_mkp	;wreg free
	line	36
	
l1818:
	call	_init_digital_keypad	;wreg free
	line	38
	
l1820:
	movlw	(03Ch)&0ffh
	andwf	((c:3987))^0f00h,c	;volatile
	line	42
	
l1822:
	call	_get_rpm	;wreg free
	line	43
	
l1824:
	movlw	(01h)&0ffh
	
	call	_read_digital_keypad
	movwf	((c:main@key))^00h,c
	line	44
	
l1826:
		movlw	14
	xorwf	((c:main@key))^00h,c,w
	btfss	status,2
	goto	u891
	goto	u890

u891:
	goto	l1830
u890:
	line	46
	
l1828:
	movlw	low(01h)
	movwf	((c:_cur_ind_status))^00h,c	;volatile
	line	47
	clrf	((c:_count+1))^00h,c
	movlw	low(0)
	movwf	((c:_count))^00h,c
	line	49
	goto	l1840
	
l1830:
		movlw	13
	xorwf	((c:main@key))^00h,c,w
	btfss	status,2
	goto	u901
	goto	u900

u901:
	goto	l1834
u900:
	line	51
	
l1832:
	movlw	low(02h)
	movwf	((c:_cur_ind_status))^00h,c	;volatile
	line	52
	clrf	((c:_count+1))^00h,c
	movlw	low(0)
	movwf	((c:_count))^00h,c
	line	53
	goto	l1840
	
l1834:
		movlw	11
	xorwf	((c:main@key))^00h,c,w
	btfss	status,2
	goto	u911
	goto	u910

u911:
	goto	l1840
u910:
	line	55
	
l1836:
	clrf	((c:_cur_ind_status))^00h,c	;volatile
	line	56
	
l1838:
	clrf	((c:_count+1))^00h,c
	movlw	low(0)
	movwf	((c:_count))^00h,c
	line	65
	
l1840:
	call	_process_indicator	;wreg free
	line	66
	
l1842:
		decf	((c:_cur_ind_status))^00h,c,w	;volatile
	btfss	status,2
	goto	u921
	goto	u920

u921:
	goto	l1848
u920:
	line	68
	
l1844:
	movf	((c:3969))^0f00h,c,w	;volatile
	andlw	low(0FCh)
	movwf	((c:3969))^0f00h,c	;volatile
	line	69
	movf	((c:3969))^0f00h,c,w	;volatile
	andlw	low(03Fh)
	movwf	((c:3969))^0f00h,c	;volatile
	line	70
		movlw	244
	subwf	 ((c:_count))^00h,c,w
	movlw	1
	subwfb	((c:_count+1))^00h,c,w
	btfsc	status,0
	goto	u931
	goto	u930

u931:
	goto	l1856
u930:
	line	71
	
l1846:
	movf	((c:3969))^0f00h,c,w	;volatile
	iorlw	low(03h)
	movwf	((c:3969))^0f00h,c	;volatile
	goto	l1856
	line	74
	
l1848:
		movlw	2
	xorwf	((c:_cur_ind_status))^00h,c,w	;volatile
	btfss	status,2
	goto	u941
	goto	u940

u941:
	goto	l1854
u940:
	line	75
	
l1850:
	movf	((c:3969))^0f00h,c,w	;volatile
	andlw	low(0FCh)
	movwf	((c:3969))^0f00h,c	;volatile
	line	76
	movf	((c:3969))^0f00h,c,w	;volatile
	andlw	low(03Fh)
	movwf	((c:3969))^0f00h,c	;volatile
	line	77
		movlw	244
	subwf	 ((c:_count))^00h,c,w
	movlw	1
	subwfb	((c:_count+1))^00h,c,w
	btfsc	status,0
	goto	u951
	goto	u950

u951:
	goto	l1856
u950:
	line	78
	
l1852:
	movf	((c:3969))^0f00h,c,w	;volatile
	iorlw	low(0C0h)
	movwf	((c:3969))^0f00h,c	;volatile
	goto	l1856
	line	82
	
l1854:
	movf	((c:3969))^0f00h,c,w	;volatile
	andlw	low(0FCh)
	movwf	((c:3969))^0f00h,c	;volatile
	line	83
	movf	((c:3969))^0f00h,c,w	;volatile
	andlw	low(03Fh)
	movwf	((c:3969))^0f00h,c	;volatile
	line	85
	
l1856:
	infsnz	((c:_count))^00h,c
	incf	((c:_count+1))^00h,c
	line	86
	
l1858:
		movlw	232
	subwf	 ((c:_count))^00h,c,w
	movlw	3
	subwfb	((c:_count+1))^00h,c,w
	btfss	status,0
	goto	u961
	goto	u960

u961:
	goto	l1862
u960:
	line	88
	
l1860:
	clrf	((c:_count+1))^00h,c
	movlw	low(0)
	movwf	((c:_count))^00h,c
	line	90
	
l1862:
		movlw	low(_ssd)
	movwf	((c:display_ssd@data))^00h,c

	call	_display_ssd	;wreg free
	goto	l1822
	global	start
	goto	start
	callstack 0
	line	92
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_read_digital_keypad

;; *************** function _read_digital_keypad *****************
;; Defined at:
;;		line 9 in file "src/digital_keypad.c"
;; Parameters:    Size  Location     Type
;;  detection_ty    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  detection_ty    1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	file	"src/digital_keypad.c"
	line	9
global __ptext1
__ptext1:
psect	text1
	file	"src/digital_keypad.c"
	line	9
	
_read_digital_keypad:
;incstack = 0
	callstack 30
	line	13
	movwf	((c:read_digital_keypad@detection_type))^00h,c
	
l1298:
		decf	((c:read_digital_keypad@detection_type))^00h,c,w
	btfss	status,2
	goto	u161
	goto	u160

u161:
	goto	l1316
u160:
	line	15
	
l1300:
	movf	((c:3970))^0f00h,c,w	;volatile
	andlw	low(0Fh)
	xorlw	0Fh
	btfsc	status,2
	goto	u171
	goto	u170
u171:
	goto	l1312
u170:
	
l1302:
	movf	((c:read_digital_keypad@once))^00h,c,w
	btfsc	status,2
	goto	u181
	goto	u180
u181:
	goto	l1312
u180:
	line	17
	
l1304:
	clrf	((c:read_digital_keypad@once))^00h,c
	line	19
	
l1306:
	movf	((c:3970))^0f00h,c,w	;volatile
	andlw	low(0Fh)
	goto	l159
	line	21
	
l1312:
	movf	((c:3970))^0f00h,c,w	;volatile
	andlw	low(0Fh)
	xorlw	0Fh
	btfss	status,2
	goto	u191
	goto	u190
u191:
	goto	l1322
u190:
	line	23
	
l1314:
	movlw	low(01h)
	movwf	((c:read_digital_keypad@once))^00h,c
	goto	l1322
	line	26
	
l1316:
	movf	((c:read_digital_keypad@detection_type))^00h,c,w
	btfss	status,2
	goto	u201
	goto	u200
u201:
	goto	l1322
u200:
	goto	l1306
	line	31
	
l1322:
	movlw	(0FFh)&0ffh
	line	32
	
l159:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_digital_keypad
	__end_of_read_digital_keypad:
	signat	_read_digital_keypad,4217
	global	_process_indicator

;; *************** function _process_indicator *****************
;; Defined at:
;;		line 37 in file "src/ecu2sensor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E10483
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_can_transmit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=0
	file	"src/ecu2sensor.c"
	line	37
global __ptext2
__ptext2:
psect	text2
	file	"src/ecu2sensor.c"
	line	37
	
_process_indicator:
;incstack = 0
	callstack 29
	line	38
	
l1754:
	movf	((c:_cur_ind_status))^00h,c,w	;volatile
xorwf	((c:_prev_ind_status))^00h,c,w	;volatile
	btfsc	status,2
	goto	u791
	goto	u790

u791:
	goto	l211
u790:
	line	40
	
l1756:
		decf	((c:_prev_ind_status))^00h,c,w	;volatile
	btfss	status,2
	goto	u801
	goto	u800

u801:
	goto	l1760
u800:
	line	42
	
l1758:
	movf	((c:3969))^0f00h,c,w	;volatile
	andlw	low(0FCh)
	movwf	((c:3969))^0f00h,c	;volatile
	line	43
	goto	l197
	
l1760:
		movlw	2
	xorwf	((c:_prev_ind_status))^00h,c,w	;volatile
	btfss	status,2
	goto	u811
	goto	u810

u811:
	goto	l197
u810:
	line	45
	
l1762:
	movf	((c:3969))^0f00h,c,w	;volatile
	andlw	low(03Fh)
	movwf	((c:3969))^0f00h,c	;volatile
	line	46
	
l197:
	line	48
		decf	((c:_cur_ind_status))^00h,c,w	;volatile
	btfss	status,2
	goto	u821
	goto	u820

u821:
	goto	l1766
u820:
	line	50
	
l1764:
	movf	((c:3969))^0f00h,c,w	;volatile
	iorlw	low(03h)
	movwf	((c:3969))^0f00h,c	;volatile
	line	51
	goto	l200
	
l1766:
		movlw	2
	xorwf	((c:_cur_ind_status))^00h,c,w	;volatile
	btfss	status,2
	goto	u831
	goto	u830

u831:
	goto	l1770
u830:
	line	53
	
l1768:
	movf	((c:3969))^0f00h,c,w	;volatile
	iorlw	low(0C0h)
	movwf	((c:3969))^0f00h,c	;volatile
	line	54
	goto	l200
	line	56
	
l1770:
	movf	((c:3969))^0f00h,c,w	;volatile
	andlw	low(0FCh)
	movwf	((c:3969))^0f00h,c	;volatile
	line	57
	movf	((c:3969))^0f00h,c,w	;volatile
	andlw	low(03Fh)
	movwf	((c:3969))^0f00h,c	;volatile
	line	58
	
l200:
	line	59
		decf	((c:_cur_ind_status))^00h,c,w	;volatile
	btfsc	status,2
	goto	u841
	goto	u840

u841:
	goto	l1780
u840:
	
l1772:
		movlw	2
	xorwf	((c:_cur_ind_status))^00h,c,w	;volatile
	btfsc	status,2
	goto	u851
	goto	u850

u851:
	goto	l1776
u850:
	
l1774:
	clrf	((c:_process_indicator$243+1))^00h,c
	movlw	low(0)
	movwf	((c:_process_indicator$243))^00h,c
	goto	l1778
	
l1776:
	clrf	((c:_process_indicator$243+1))^00h,c
	movlw	low(02h)
	movwf	((c:_process_indicator$243))^00h,c
	
l1778:
	movff	(c:_process_indicator$243),(c:_process_indicator$242)
	movff	(c:_process_indicator$243+1),(c:_process_indicator$242+1)
	goto	l1782
	
l1780:
	clrf	((c:_process_indicator$242+1))^00h,c
	movlw	low(01h)
	movwf	((c:_process_indicator$242))^00h,c
	
l1782:
	movff	(c:_process_indicator$242),(c:_rdata)
	line	62
	
l1784:
	clrf	((c:can_transmit@msg_id+1))^00h,c
	movlw	low(050h)
	movwf	((c:can_transmit@msg_id))^00h,c
		movlw	low(_rdata)
	movwf	((c:can_transmit@data))^00h,c

	movlw	low(01h)
	movwf	((c:can_transmit@len))^00h,c
	call	_can_transmit	;wreg free
	line	63
	
l1786:
	asmopt push
asmopt off
movlw	65
movwf	(??_process_indicator+0)^00h,c
	movlw	238
u977:
decfsz	wreg,f
	bra	u977
	decfsz	(??_process_indicator+0)^00h,c,f
	bra	u977
	nop2
asmopt pop

	line	64
	
l1788:
	movff	(c:_cur_ind_status),(c:_prev_ind_status)	;volatile
	line	67
	
l211:
	return	;funcret
	callstack 0
GLOBAL	__end_of_process_indicator
	__end_of_process_indicator:
	signat	_process_indicator,89
	global	_init_ssd

;; *************** function _init_ssd *****************
;; Defined at:
;;		line 4 in file "src/ssd.c"
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
psect	text3,class=CODE,space=0,reloc=2,group=0
	file	"src/ssd.c"
	line	4
global __ptext3
__ptext3:
psect	text3
	file	"src/ssd.c"
	line	4
	
_init_ssd:
;incstack = 0
	callstack 30
	line	6
	
l1372:
	clrf	((c:3989))^0f00h,c	;volatile
	line	7
	
l1374:
	movf	((c:3986))^0f00h,c,w	;volatile
	andlw	low(0F0h)
	movwf	((c:3986))^0f00h,c	;volatile
	line	8
	
l324:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_ssd
	__end_of_init_ssd:
	signat	_init_ssd,89
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
psect	text4,class=CODE,space=0,reloc=2,group=0
	file	"src/mkp.c"
	line	4
global __ptext4
__ptext4:
psect	text4
	file	"src/mkp.c"
	line	4
	
_init_mkp:
;incstack = 0
	callstack 30
	line	6
	
l1376:
	movlw	low(0Fh)
	movwf	((c:4033))^0f00h,c	;volatile
	line	7
	movlw	low(01Eh)
	movwf	((c:3987))^0f00h,c	;volatile
	line	8
	
l1378:
	bcf	c:(32655/8),(32655)&7	;volatile
	line	10
	
l1380:
	movf	((c:3969))^0f00h,c,w	;volatile
	iorlw	low(0E0h)
	movwf	((c:3969))^0f00h,c	;volatile
	line	11
	
l276:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_mkp
	__end_of_init_mkp:
	signat	_init_mkp,89
	global	_init_digital_keypad

;; *************** function _init_digital_keypad *****************
;; Defined at:
;;		line 4 in file "src/digital_keypad.c"
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
psect	text5,class=CODE,space=0,reloc=2,group=0
	file	"src/digital_keypad.c"
	line	4
global __ptext5
__ptext5:
psect	text5
	file	"src/digital_keypad.c"
	line	4
	
_init_digital_keypad:
;incstack = 0
	callstack 30
	line	6
	
l1296:
	movf	((c:3988))^0f00h,c,w	;volatile
	iorlw	low(0Fh)
	movwf	((c:3988))^0f00h,c	;volatile
	line	7
	
l152:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_digital_keypad
	__end_of_init_digital_keypad:
	signat	_init_digital_keypad,89
	global	_init_can

;; *************** function _init_can *****************
;; Defined at:
;;		line 16 in file "src/can.c"
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
psect	text6,class=CODE,space=0,reloc=2,group=0
	file	"src/can.c"
	line	16
global __ptext6
__ptext6:
psect	text6
	file	"src/can.c"
	line	16
	
_init_can:
;incstack = 0
	callstack 30
	line	18
	
l1274:
	bcf	c:(31898/8),(31898)&7	;volatile
	line	19
	bsf	c:(31899/8),(31899)&7	;volatile
	line	23
	
l1276:
	movlw	(01Fh)&0ffh
	andwf	((c:3951))^0f00h,c	;volatile
	
l1278:
	bsf	(0+(7/8)+(c:3951))^0f00h,c,(7)&7	;volatile
	line	26
	
l1280:
		movlw	128
	xorwf	((c:3950))^0f00h,c,w	;volatile
	btfss	status,2
	goto	u151
	goto	u150

u151:
	goto	l1280
u150:
	
l92:
	line	30
	clrf	((c:3959))^0f00h,c	;volatile
	line	33
	
l1282:
	movlw	low(0E1h)
	movwf	((c:3952))^0f00h,c	;volatile
	line	34
	movlw	low(01Bh)
	movwf	((c:3953))^0f00h,c	;volatile
	line	36
	movlw	low(03h)
	movwf	((c:3954))^0f00h,c	;volatile
	line	42
	
l1284:
	movlb	13	; () banked
	clrf	((3540))&0ffh	;volatile
	line	44
	
l1286:; BSR set to: 13

	movlw	(01Fh)&0ffh
	andwf	((c:3951))^0f00h,c	;volatile
	
l1288:; BSR set to: 13

	movf	((c:3951))^0f00h,c,w	;volatile
	line	47
	
l1290:; BSR set to: 13

	clrf	((c:3936))^0f00h,c	;volatile
	line	49
	
l1292:; BSR set to: 13

	bsf	((c:3936))^0f00h,c,5	;volatile
	line	50
	
l1294:; BSR set to: 13

	bsf	((c:3936))^0f00h,c,6	;volatile
	line	51
	
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
psect	text7,class=CODE,space=0,reloc=2,group=0
	file	"src/adc.c"
	line	4
global __ptext7
__ptext7:
psect	text7
	file	"src/adc.c"
	line	4
	
_init_adc:; BSR set to: 13

;incstack = 0
	callstack 30
	line	7
	
l1272:
	bsf	c:(32263/8),(32263)&7	;volatile
	line	13
	bcf	c:(32261/8),(32261)&7	;volatile
	line	14
	bsf	c:(32260/8),(32260)&7	;volatile
	line	15
	bcf	c:(32259/8),(32259)&7	;volatile
	line	21
	bcf	c:(32256/8),(32256)&7	;volatile
	line	22
	bsf	c:(32257/8),(32257)&7	;volatile
	line	23
	bcf	c:(32258/8),(32258)&7	;volatile
	line	26
	bcf	c:(32273/8),(32273)&7	;volatile
	line	31
	bcf	c:(32269/8),(32269)&7	;volatile
	line	33
	bcf	c:(32268/8),(32268)&7	;volatile
	line	36
	clrf	((c:4036))^0f00h,c	;volatile
	line	37
	clrf	((c:4035))^0f00h,c	;volatile
	line	40
	bsf	c:(32272/8),(32272)&7	;volatile
	line	41
	
l33:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_adc
	__end_of_init_adc:
	signat	_init_adc,89
	global	_get_rpm

;; *************** function _get_rpm *****************
;; Defined at:
;;		line 22 in file "src/ecu2sensor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  191[None  ] unsigned short 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, cstack
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
psect	text8,class=CODE,space=0,reloc=2,group=0
	file	"src/ecu2sensor.c"
	line	22
global __ptext8
__ptext8:
psect	text8
	file	"src/ecu2sensor.c"
	line	22
	
_get_rpm:
;incstack = 0
	callstack 28
	line	24
	
l1746:
	movlw	(04h)&0ffh
	
	call	_read_adc
	movff	0+?_read_adc,(c:_adc_value)
	movff	1+?_read_adc,(c:_adc_value+1)
	line	25
	movff	(c:_adc_value),(c:___lmul@multiplier)
	movff	(c:_adc_value+1),(c:___lmul@multiplier+1)
	clrf	((c:___lmul@multiplier+2))^00h,c
	clrf	((c:___lmul@multiplier+3))^00h,c
	movlw	low(01770h)
	movwf	((c:___lmul@multiplicand))^00h,c
	movlw	high(01770h)
	movwf	((c:___lmul@multiplicand+1))^00h,c
	movlw	low highword(01770h)
	movwf	((c:___lmul@multiplicand+2))^00h,c
	movlw	high highword(01770h)
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
	movff	0+?___lldiv,(c:_value)
	movff	1+?___lldiv,(c:_value+1)
	line	27
	movff	(c:_value),(c:___lwmod@dividend)
	movff	(c:_value+1),(c:___lwmod@dividend+1)
	clrf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	addlw	low(030h)
	movwf	(0+((c:_ssd)+03h))^00h,c
	line	28
	clrf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	movff	(c:_value),(c:___lwdiv@dividend)
	movff	(c:_value+1),(c:___lwdiv@dividend+1)
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(c:___lwmod@dividend)
	movff	1+?___lwdiv,(c:___lwmod@dividend+1)
	clrf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	addlw	low(030h)
	movwf	(0+((c:_ssd)+02h))^00h,c
	line	29
	clrf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(064h)
	movwf	((c:___lwdiv@divisor))^00h,c
	movff	(c:_value),(c:___lwdiv@dividend)
	movff	(c:_value+1),(c:___lwdiv@dividend+1)
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(c:___lwmod@dividend)
	movff	1+?___lwdiv,(c:___lwmod@dividend+1)
	clrf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	addlw	low(030h)
	movwf	(0+((c:_ssd)+01h))^00h,c
	line	30
	movlw	high(03E8h)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(03E8h)
	movwf	((c:___lwdiv@divisor))^00h,c
	movff	(c:_value),(c:___lwdiv@dividend)
	movff	(c:_value+1),(c:___lwdiv@dividend+1)
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(c:___lwmod@dividend)
	movff	1+?___lwdiv,(c:___lwmod@dividend+1)
	clrf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	addlw	low(030h)
	movwf	((c:_ssd))^00h,c
	line	32
	
l1748:
	clrf	((c:can_transmit@msg_id+1))^00h,c
	movlw	low(030h)
	movwf	((c:can_transmit@msg_id))^00h,c
		movlw	low(_ssd)
	movwf	((c:can_transmit@data))^00h,c

	movlw	low(04h)
	movwf	((c:can_transmit@len))^00h,c
	call	_can_transmit	;wreg free
	line	33
	
l1750:
	asmopt push
asmopt off
movlw  3
movwf	(??_get_rpm+0+1)^00h,c
movlw	8
movwf	(??_get_rpm+0)^00h,c
	movlw	119
u987:
decfsz	wreg,f
	bra	u987
	decfsz	(??_get_rpm+0)^00h,c,f
	bra	u987
	decfsz	(??_get_rpm+0+1)^00h,c,f
	bra	u987
	nop
asmopt pop

	line	35
	
l192:
	return	;funcret
	callstack 0
GLOBAL	__end_of_get_rpm
	__end_of_get_rpm:
	signat	_get_rpm,90
	global	_read_adc

;; *************** function _read_adc *****************
;; Defined at:
;;		line 43 in file "src/adc.c"
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
;;		_get_rpm
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2,group=0
	file	"src/adc.c"
	line	43
global __ptext9
__ptext9:
psect	text9
	file	"src/adc.c"
	line	43
	
_read_adc:
;incstack = 0
	callstack 29
	line	48
	movwf	((c:read_adc@channel))^00h,c
	
l1650:
	movff	(c:read_adc@channel),??_read_adc+0
	bcf	status,0
	rlcf	(??_read_adc+0)^00h,c
	bcf	status,0
	rlcf	(??_read_adc+0)^00h,c

	movf	((c:4034))^0f00h,c,w	;volatile
	andlw	low(0C3h)
	iorwf	(??_read_adc+0)^00h,c,w
	movwf	((c:4034))^0f00h,c	;volatile
	line	51
	
l1652:
	bsf	c:(32273/8),(32273)&7	;volatile
	line	52
	
l36:
	btfsc	c:(32273/8),(32273)&7	;volatile
	goto	u661
	goto	u660
u661:
	goto	l36
u660:
	line	53
	
l1654:
	movf	((c:4035))^0f00h,c,w	;volatile
	movff	(c:4036),??_read_adc+0	;volatile
	clrf	(??_read_adc+0+1)^00h,c
	movff	??_read_adc+0,??_read_adc+0+1
	clrf	(??_read_adc+0)^00h,c
	iorwf	(??_read_adc+0)^00h,c,w
	movwf	((c:read_adc@reg_val))^00h,c
	movf	(??_read_adc+0+1)^00h,c,w
	movwf	1+((c:read_adc@reg_val))^00h,c
	line	55
	
l1656:
	movff	(c:read_adc@reg_val),(c:?_read_adc)
	movff	(c:read_adc@reg_val+1),(c:?_read_adc+1)
	line	56
	
l39:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_adc
	__end_of_read_adc:
	signat	_read_adc,4218
	global	_can_transmit

;; *************** function _can_transmit *****************
;; Defined at:
;;		line 68 in file "src/can.c"
;; Parameters:    Size  Location     Type
;;  msg_id          2    4[COMRAM] unsigned short 
;;  data            1    6[COMRAM] PTR const unsigned char 
;;		 -> rdata(9), ssd(4), 
;;  len             1    7[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  i               2   13[COMRAM] int 
;;  ptr             2   11[COMRAM] PTR unsigned char 
;;		 -> TXB0D0(1), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:        11       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		_set_msg_id_std
;; This function is called by:
;;		_get_rpm
;;		_process_indicator
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2,group=0
	file	"src/can.c"
	line	68
global __ptext10
__ptext10:
psect	text10
	file	"src/can.c"
	line	68
	
_can_transmit:
;incstack = 0
	callstack 29
	line	70
	
l1660:
	movlb	15	; () banked
	clrf	((3907))&0ffh	;volatile
	line	71
	clrf	((3908))&0ffh	;volatile
	line	74
	
l1662:; BSR set to: 15

	movff	(c:can_transmit@msg_id),(c:set_msg_id_std@id)
	movff	(c:can_transmit@msg_id+1),(c:set_msg_id_std@id+1)
	call	_set_msg_id_std	;wreg free
	line	77
	
l1664:
	movff	(c:can_transmit@len),(3909)	;volatile
	line	82
	
l1666:
		movlw	low(3910)
	movwf	((c:can_transmit@ptr))^00h,c
	movlw	high(3910)
	movwf	((c:can_transmit@ptr+1))^00h,c

	line	83
	
l1668:
	clrf	((c:can_transmit@i+1))^00h,c
	movlw	low(0)
	movwf	((c:can_transmit@i))^00h,c
	goto	l1674
	line	84
	
l1670:
	movf	((c:can_transmit@data))^00h,c,w
	addwf	((c:can_transmit@i))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	((c:can_transmit@i))^00h,c,w
	addwf	((c:can_transmit@ptr))^00h,c,w
	movwf	c:fsr1l
	movf	((c:can_transmit@i+1))^00h,c,w
	addwfc	((c:can_transmit@ptr+1))^00h,c,w
	movwf	1+c:fsr1l
	movff	indf2,indf1
	line	83
	
l1672:
	infsnz	((c:can_transmit@i))^00h,c
	incf	((c:can_transmit@i+1))^00h,c
	
l1674:
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
	goto	u671
	goto	u670

u671:
	goto	l1670
u670:
	
l104:
	line	86
	movlb	15	; () banked
	bsf	(31235/8)&0ffh,(31235)&7	;volatile
	line	87
	
l105:; BSR set to: 15

	return	;funcret
	callstack 0
GLOBAL	__end_of_can_transmit
	__end_of_can_transmit:
	signat	_can_transmit,12409
	global	_set_msg_id_std

;; *************** function _set_msg_id_std *****************
;; Defined at:
;;		line 61 in file "src/can.c"
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
psect	text11,class=CODE,space=0,reloc=2,group=0
	line	61
global __ptext11
__ptext11:
psect	text11
	file	"src/can.c"
	line	61
	
_set_msg_id_std:; BSR set to: 15

;incstack = 0
	callstack 28
	line	62
	
l1648:
	movff	(c:set_msg_id_std@id),??_set_msg_id_std+0
	movlw	07h
	andwf	(??_set_msg_id_std+0)^00h,c
	movlw	05h
	movwf	(??_set_msg_id_std+1)^00h,c
u655:
	bcf	status,0
	rlcf	(??_set_msg_id_std+0)^00h,c
	decfsz	(??_set_msg_id_std+1)^00h,c
	goto	u655
	movf	(??_set_msg_id_std+0)^00h,c,w
	movlb	15	; () banked
	movwf	((3906))&0ffh	;volatile
	line	63
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
	line	64
	
l99:; BSR set to: 15

	return	;funcret
	callstack 0
GLOBAL	__end_of_set_msg_id_std
	__end_of_set_msg_id_std:
	signat	_set_msg_id_std,4217
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 7 in file "/opt/microchip/xc8/v4.00/pic/sources/c99/common/lwmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    7[COMRAM] unsigned int 
;;  divisor         2    9[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   11[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[COMRAM] unsigned int 
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
;;		_get_rpm
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v4.00/pic/sources/c99/common/lwmod.c"
	line	7
global __ptext12
__ptext12:
psect	text12
	file	"/opt/microchip/xc8/v4.00/pic/sources/c99/common/lwmod.c"
	line	7
	
___lwmod:; BSR set to: 15

;incstack = 0
	callstack 29
	line	12
	
l1730:
	movf	((c:___lwmod@divisor))^00h,c,w
iorwf	((c:___lwmod@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u761
	goto	u760

u761:
	goto	l1002
u760:
	line	13
	
l1732:
	movlw	low(01h)
	movwf	((c:___lwmod@counter))^00h,c
	line	14
	goto	l1736
	line	15
	
l1734:
	bcf	status,0
	rlcf	((c:___lwmod@divisor))^00h,c
	rlcf	((c:___lwmod@divisor+1))^00h,c
	line	16
	incf	((c:___lwmod@counter))^00h,c
	line	14
	
l1736:
	
	btfss	((c:___lwmod@divisor+1))^00h,c,(15)&7
	goto	u771
	goto	u770
u771:
	goto	l1734
u770:
	line	19
	
l1738:
		movf	((c:___lwmod@divisor))^00h,c,w
	subwf	((c:___lwmod@dividend))^00h,c,w
	movf	((c:___lwmod@divisor+1))^00h,c,w
	subwfb	((c:___lwmod@dividend+1))^00h,c,w
	btfss	status,0
	goto	u781
	goto	u780

u781:
	goto	l1742
u780:
	line	20
	
l1740:
	movf	((c:___lwmod@divisor))^00h,c,w
	subwf	((c:___lwmod@dividend))^00h,c
	movf	((c:___lwmod@divisor+1))^00h,c,w
	subwfb	((c:___lwmod@dividend+1))^00h,c
	line	21
	
l1742:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1))^00h,c
	rrcf	((c:___lwmod@divisor))^00h,c
	line	22
	
l1744:
	decfsz	((c:___lwmod@counter))^00h,c
	
	goto	l1738
	line	23
	
l1002:
	line	24
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	25
	
l1009:
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
;;		_get_rpm
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v4.00/pic/sources/c99/common/lwdiv.c"
	line	7
global __ptext13
__ptext13:
psect	text13
	file	"/opt/microchip/xc8/v4.00/pic/sources/c99/common/lwdiv.c"
	line	7
	
___lwdiv:
;incstack = 0
	callstack 29
	line	13
	
l1708:
	clrf	((c:___lwdiv@quotient+1))^00h,c
	movlw	low(0)
	movwf	((c:___lwdiv@quotient))^00h,c
	line	14
	
l1710:
	movf	((c:___lwdiv@divisor))^00h,c,w
iorwf	((c:___lwdiv@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u731
	goto	u730

u731:
	goto	l992
u730:
	line	15
	
l1712:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter))^00h,c
	line	16
	goto	l1716
	line	17
	
l1714:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor))^00h,c
	rlcf	((c:___lwdiv@divisor+1))^00h,c
	line	18
	incf	((c:___lwdiv@counter))^00h,c
	line	16
	
l1716:
	
	btfss	((c:___lwdiv@divisor+1))^00h,c,(15)&7
	goto	u741
	goto	u740
u741:
	goto	l1714
u740:
	line	21
	
l1718:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient))^00h,c
	rlcf	((c:___lwdiv@quotient+1))^00h,c
	line	22
	
l1720:
		movf	((c:___lwdiv@divisor))^00h,c,w
	subwf	((c:___lwdiv@dividend))^00h,c,w
	movf	((c:___lwdiv@divisor+1))^00h,c,w
	subwfb	((c:___lwdiv@dividend+1))^00h,c,w
	btfss	status,0
	goto	u751
	goto	u750

u751:
	goto	l1726
u750:
	line	23
	
l1722:
	movf	((c:___lwdiv@divisor))^00h,c,w
	subwf	((c:___lwdiv@dividend))^00h,c
	movf	((c:___lwdiv@divisor+1))^00h,c,w
	subwfb	((c:___lwdiv@dividend+1))^00h,c
	line	24
	
l1724:
	bsf	(0+(0/8)+(c:___lwdiv@quotient))^00h,c,(0)&7
	line	26
	
l1726:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1))^00h,c
	rrcf	((c:___lwdiv@divisor))^00h,c
	line	27
	
l1728:
	decfsz	((c:___lwdiv@counter))^00h,c
	
	goto	l1718
	line	28
	
l992:
	line	29
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	30
	
l999:
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
;;		_get_rpm
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v4.00/pic/sources/c99/common/Umul32.c"
	line	15
global __ptext14
__ptext14:
psect	text14
	file	"/opt/microchip/xc8/v4.00/pic/sources/c99/common/Umul32.c"
	line	15
	
___lmul:
;incstack = 0
	callstack 29
	line	119
	
l1676:
	movlw	low(0)
	movwf	((c:___lmul@product))^00h,c
	movlw	high(0)
	movwf	((c:___lmul@product+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___lmul@product+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___lmul@product+3))^00h,c
	line	121
	
l1678:
	
	btfss	((c:___lmul@multiplier))^00h,c,(0)&7
	goto	u681
	goto	u680
u681:
	goto	l1682
u680:
	line	122
	
l1680:
	movf	((c:___lmul@multiplicand))^00h,c,w
	addwf	((c:___lmul@product))^00h,c
	movf	((c:___lmul@multiplicand+1))^00h,c,w
	addwfc	((c:___lmul@product+1))^00h,c
	movf	((c:___lmul@multiplicand+2))^00h,c,w
	addwfc	((c:___lmul@product+2))^00h,c
	movf	((c:___lmul@multiplicand+3))^00h,c,w
	addwfc	((c:___lmul@product+3))^00h,c
	line	123
	
l1682:
	bcf	status,0
	rlcf	((c:___lmul@multiplicand))^00h,c
	rlcf	((c:___lmul@multiplicand+1))^00h,c
	rlcf	((c:___lmul@multiplicand+2))^00h,c
	rlcf	((c:___lmul@multiplicand+3))^00h,c
	line	124
	
l1684:
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
	goto	u691
	goto	u690

u691:
	goto	l1678
u690:
	
l402:
	line	128
	movff	(c:___lmul@product),(c:?___lmul)
	movff	(c:___lmul@product+1),(c:?___lmul+1)
	movff	(c:___lmul@product+2),(c:?___lmul+2)
	movff	(c:___lmul@product+3),(c:?___lmul+3)
	line	129
	
l403:
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
;;		_get_rpm
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v4.00/pic/sources/c99/common/__lldiv.c"
	line	7
global __ptext15
__ptext15:
psect	text15
	file	"/opt/microchip/xc8/v4.00/pic/sources/c99/common/__lldiv.c"
	line	7
	
___lldiv:
;incstack = 0
	callstack 29
	line	13
	
l1686:
	movlw	low(0)
	movwf	((c:___lldiv@quotient))^00h,c
	movlw	high(0)
	movwf	((c:___lldiv@quotient+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___lldiv@quotient+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___lldiv@quotient+3))^00h,c
	line	14
	
l1688:
	movf	((c:___lldiv@divisor))^00h,c,w
iorwf	((c:___lldiv@divisor+1))^00h,c,w
iorwf	((c:___lldiv@divisor+2))^00h,c,w
iorwf	((c:___lldiv@divisor+3))^00h,c,w
	btfsc	status,2
	goto	u701
	goto	u700

u701:
	goto	l418
u700:
	line	15
	
l1690:
	movlw	low(01h)
	movwf	((c:___lldiv@counter))^00h,c
	line	16
	goto	l1694
	line	17
	
l1692:
	bcf	status,0
	rlcf	((c:___lldiv@divisor))^00h,c
	rlcf	((c:___lldiv@divisor+1))^00h,c
	rlcf	((c:___lldiv@divisor+2))^00h,c
	rlcf	((c:___lldiv@divisor+3))^00h,c
	line	18
	incf	((c:___lldiv@counter))^00h,c
	line	16
	
l1694:
	
	btfss	((c:___lldiv@divisor+3))^00h,c,(31)&7
	goto	u711
	goto	u710
u711:
	goto	l1692
u710:
	line	21
	
l1696:
	bcf	status,0
	rlcf	((c:___lldiv@quotient))^00h,c
	rlcf	((c:___lldiv@quotient+1))^00h,c
	rlcf	((c:___lldiv@quotient+2))^00h,c
	rlcf	((c:___lldiv@quotient+3))^00h,c
	line	22
	
l1698:
		movf	((c:___lldiv@divisor))^00h,c,w
	subwf	((c:___lldiv@dividend))^00h,c,w
	movf	((c:___lldiv@divisor+1))^00h,c,w
	subwfb	((c:___lldiv@dividend+1))^00h,c,w
	movf	((c:___lldiv@divisor+2))^00h,c,w
	subwfb	((c:___lldiv@dividend+2))^00h,c,w
	movf	((c:___lldiv@divisor+3))^00h,c,w
	subwfb	((c:___lldiv@dividend+3))^00h,c,w
	btfss	status,0
	goto	u721
	goto	u720

u721:
	goto	l1704
u720:
	line	23
	
l1700:
	movf	((c:___lldiv@divisor))^00h,c,w
	subwf	((c:___lldiv@dividend))^00h,c
	movf	((c:___lldiv@divisor+1))^00h,c,w
	subwfb	((c:___lldiv@dividend+1))^00h,c
	movf	((c:___lldiv@divisor+2))^00h,c,w
	subwfb	((c:___lldiv@dividend+2))^00h,c
	movf	((c:___lldiv@divisor+3))^00h,c,w
	subwfb	((c:___lldiv@dividend+3))^00h,c
	line	24
	
l1702:
	bsf	(0+(0/8)+(c:___lldiv@quotient))^00h,c,(0)&7
	line	26
	
l1704:
	bcf	status,0
	rrcf	((c:___lldiv@divisor+3))^00h,c
	rrcf	((c:___lldiv@divisor+2))^00h,c
	rrcf	((c:___lldiv@divisor+1))^00h,c
	rrcf	((c:___lldiv@divisor))^00h,c
	line	27
	
l1706:
	decfsz	((c:___lldiv@counter))^00h,c
	
	goto	l1696
	line	28
	
l418:
	line	29
	movff	(c:___lldiv@quotient),(c:?___lldiv)
	movff	(c:___lldiv@quotient+1),(c:?___lldiv+1)
	movff	(c:___lldiv@quotient+2),(c:?___lldiv+2)
	movff	(c:___lldiv@quotient+3),(c:?___lldiv+3)
	line	30
	
l425:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
	signat	___lldiv,8316
	global	_display_ssd

;; *************** function _display_ssd *****************
;; Defined at:
;;		line 10 in file "src/ssd.c"
;; Parameters:    Size  Location     Type
;;  data            1    0[COMRAM] PTR unsigned char 
;;		 -> ssd(4), 
;; Auto vars:     Size  Location     Type
;;  j               2    3[COMRAM] int 
;;  i               2    5[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2,group=0
	file	"src/ssd.c"
	line	10
global __ptext16
__ptext16:
psect	text16
	file	"src/ssd.c"
	line	10
	
_display_ssd:
;incstack = 0
	callstack 30
	line	12
	
l1792:
	clrf	((c:display_ssd@i+1))^00h,c
	movlw	low(0)
	movwf	((c:display_ssd@i))^00h,c
	line	14
	
l1798:
	movf	((c:display_ssd@data))^00h,c,w
	addwf	((c:display_ssd@i))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:3971))^0f00h,c	;volatile
	line	15
	
l1800:
	movff	(c:display_ssd@i),??_display_ssd+0
	movlw	(01h)&0ffh
	movwf	(??_display_ssd+1)^00h,c
	incf	(??_display_ssd+0)^00h,c
	goto	u864
u865:
	bcf	status,0
	rlcf	((??_display_ssd+1))^00h,c
u864:
	decfsz	(??_display_ssd+0)^00h,c
	goto	u865
	movf	((c:3968))^0f00h,c,w	;volatile
	andlw	low(0F0h)
	iorwf	((??_display_ssd+1))^00h,c,w
	movwf	((c:3968))^0f00h,c	;volatile
	line	17
	
l1802:
	movlw	high(03E8h)
	movwf	((c:display_ssd@j+1))^00h,c
	movlw	low(03E8h)
	movwf	((c:display_ssd@j))^00h,c
	
l1804:
	decf	((c:display_ssd@j))^00h,c
	btfss	status,0
	decf	((c:display_ssd@j+1))^00h,c
		incf	((c:display_ssd@j))^00h,c,w
	bnz	u871
	incf	((c:display_ssd@j+1))^00h,c,w
	btfss	status,2
	goto	u871
	goto	u870

u871:
	goto	l1804
u870:
	line	12
	
l1806:
	infsnz	((c:display_ssd@i))^00h,c
	incf	((c:display_ssd@i+1))^00h,c
	
l1808:
	btfsc	((c:display_ssd@i+1))^00h,c,7
	goto	u881
	movf	((c:display_ssd@i+1))^00h,c,w
	bnz	u880
	movlw	4
	subwf	 ((c:display_ssd@i))^00h,c,w
	btfss	status,0
	goto	u881
	goto	u880

u881:
	goto	l1798
u880:
	line	20
	
l332:
	return	;funcret
	callstack 0
GLOBAL	__end_of_display_ssd
	__end_of_display_ssd:
	signat	_display_ssd,4217
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	db 0	; dummy byte at the end
	global	__smallconst
__smallconst	set	__psmallconst
	global	__mediumconst
__mediumconst	set	__psmallconst
	GLOBAL	__activetblptr
__activetblptr	EQU	0
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
