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
	debug_source C
	FNCALL	_main,_can_receive
	FNCALL	_main,_clcd_print
	FNCALL	_main,_init_can
	FNCALL	_main,_init_clcd
	FNCALL	_init_clcd,_clcd_write
	FNCALL	_clcd_print,_clcd_write
	FNCALL	_can_receive,_get_msg_id_std
	FNROOT	_main
	global	_data
	global	_msg_id
	global	_len
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
	global	_RXB0D0
_RXB0D0	set	0xF66
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
psect	mediumconst,class=MEDIUMCONST,space=0,reloc=2,noexec
global __pmediumconst
__pmediumconst:
	db	0
	
STR_4:
	db	73	;'I'
	db	78	;'N'
	db	68	;'D'
	db	0
	
STR_3:
	db	82	;'R'
	db	80	;'P'
	db	77	;'M'
	db	0
	
STR_5:
	db	60	;'<'
	db	45
	db	0
	
STR_6:
	db	45
	db	62	;'>'
	db	0
	
STR_1:
	db	83	;'S'
	db	80	;'P'
	db	0
	
STR_2:
	db	69	;'E'
	db	86	;'V'
	db	0
	
STR_7:
	db	95	;'_'
	db	0
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
_data:
       ds      8
	global	_msg_id
_msg_id:
       ds      2
	global	_len
_len:
       ds      1
	file	"build/main.s"
	line	#
psect	cinit
; Clear objects allocated to COMRAM (11 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	11
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
?_init_can:	; 1 bytes @ 0x0
?_init_clcd:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	?_get_msg_id_std
?_get_msg_id_std:	; 2 bytes @ 0x0
	global	clcd_write@control
clcd_write@control:	; 1 bytes @ 0x0
??_init_can:	; 1 bytes @ 0x0
	ds   1
	global	clcd_write@byte
clcd_write@byte:	; 1 bytes @ 0x1
??_clcd_write:	; 1 bytes @ 0x1
	ds   1
?_clcd_print:	; 1 bytes @ 0x2
	global	clcd_print@data
clcd_print@data:	; 2 bytes @ 0x2
??_get_msg_id_std:	; 1 bytes @ 0x2
??_init_clcd:	; 1 bytes @ 0x2
	ds   2
	global	clcd_print@addr
clcd_print@addr:	; 1 bytes @ 0x4
	ds   1
??_clcd_print:	; 1 bytes @ 0x5
	ds   1
	global	get_msg_id_std@id
get_msg_id_std@id:	; 2 bytes @ 0x6
	ds   2
?_can_receive:	; 1 bytes @ 0x8
	global	can_receive@msg_id
can_receive@msg_id:	; 1 bytes @ 0x8
	ds   1
	global	can_receive@data
can_receive@data:	; 1 bytes @ 0x9
	ds   1
	global	can_receive@len
can_receive@len:	; 1 bytes @ 0xA
	ds   1
??_can_receive:	; 1 bytes @ 0xB
	ds   3
	global	can_receive@ptr
can_receive@ptr:	; 2 bytes @ 0xE
	ds   2
	global	can_receive@i
can_receive@i:	; 2 bytes @ 0x10
	ds   2
??_main:	; 1 bytes @ 0x12
;!
;!Data Sizes:
;!    Strings     22
;!    Constant    0
;!    Data        0
;!    BSS         11
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     18      29
;!    BANK0           160      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    can_receive@data	PTR unsigned char  size(1) Largest target is 8
;!		 -> data(COMRAM[8]), 
;!
;!    can_receive@len	PTR unsigned char  size(1) Largest target is 1
;!		 -> len(COMRAM[1]), 
;!
;!    can_receive@msg_id	PTR unsigned short  size(1) Largest target is 2
;!		 -> msg_id(COMRAM[2]), 
;!
;!    can_receive@ptr	PTR unsigned char  size(2) Largest target is 1
;!		 -> RXB0D0(SFR_3[1]), 
;!
;!    clcd_print@data	PTR const unsigned char  size(2) Largest target is 8
;!		 -> data(COMRAM[8]), STR_1(CODE[3]), STR_2(CODE[3]), STR_3(CODE[4]), 
;!		 -> STR_4(CODE[4]), STR_5(CODE[3]), STR_6(CODE[3]), STR_7(CODE[2]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_can_receive
;!    _init_clcd->_clcd_write
;!    _clcd_print->_clcd_write
;!    _can_receive->_get_msg_id_std
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
;! (0) _main                                                 0     0      0     417
;!                        _can_receive
;!                         _clcd_print
;!                           _init_can
;!                          _init_clcd
;! ---------------------------------------------------------------------------------
;! (1) _init_clcd                                            1     1      0      62
;!                                              2 COMRAM     1     1      0
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (1) _init_can                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _clcd_print                                           3     0      3     149
;!                                              2 COMRAM     3     0      3
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (2) _clcd_write                                           2     1      1      62
;!                                              0 COMRAM     2     1      1
;! ---------------------------------------------------------------------------------
;! (1) _can_receive                                         10     7      3     206
;!                                              8 COMRAM    10     7      3
;!                     _get_msg_id_std
;! ---------------------------------------------------------------------------------
;! (2) _get_msg_id_std                                       8     6      2      24
;!                                              0 COMRAM     8     6      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _can_receive
;!     _get_msg_id_std
;!   _clcd_print
;!     _clcd_write
;!   _init_can
;!   _init_clcd
;!     _clcd_write
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BIGRAM            1535      0       0      0.0%
;!BITBIGSFRlh        410      0       0      0.0%
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
;!BITBIGSFRll        212      0       0      0.0%
;!BITBANK0           160      0       0      0.0%
;!BANK0              160      0       0      0.0%
;!BITBIGSFRh         144      0       0      0.0%
;!BITCOMRAM           95      0       0      0.0%
;!COMRAM              95     18      29     30.5%
;!STACK                0      0       0      0.0%
;!DATA                 0      0      29      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 23 in file "src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
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
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_can_receive
;;		_clcd_print
;;		_init_can
;;		_init_clcd
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"src/main.c"
	line	23
global __ptext0
__ptext0:
psect	text0
	file	"src/main.c"
	line	23
	
_main:
;incstack = 0
	callstack 29
	line	24
	
l1174:
	call	_init_can	;wreg free
	line	25
	call	_init_clcd	;wreg free
	line	27
	
l1176:
		movlw	low(_msg_id)
	movwf	((c:can_receive@msg_id))^00h,c

		movlw	low(_data)
	movwf	((c:can_receive@data))^00h,c

		movlw	low(_len)
	movwf	((c:can_receive@len))^00h,c

	call	_can_receive	;wreg free
	line	28
	
l1178:
	movf	((c:_len))^00h,c,w
	addlw	low(_data)
	movwf	fsr2l
	clrf	fsr2h
	clrf	indf2
	line	30
	
l1180:
		movlw	16
	xorwf	((c:_msg_id))^00h,c,w
iorwf	((c:_msg_id+1))^00h,c,w
	btfss	status,2
	goto	u261
	goto	u260

u261:
	goto	l1184
u260:
	line	32
	
l1182:
		movlw	low(STR_1)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_1)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	33
		movlw	low(_data)
	movwf	((c:clcd_print@data))^00h,c
	clrf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	35
	
l1184:
		movlw	32
	xorwf	((c:_msg_id))^00h,c,w
iorwf	((c:_msg_id+1))^00h,c,w
	btfss	status,2
	goto	u271
	goto	u270

u271:
	goto	l1188
u270:
	line	37
	
l1186:
		movlw	low(STR_2)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_2)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(084h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	38
		movlw	low(_data)
	movwf	((c:clcd_print@data))^00h,c
	clrf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C4h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	40
	
l1188:
		movlw	48
	xorwf	((c:_msg_id))^00h,c,w
iorwf	((c:_msg_id+1))^00h,c,w
	btfss	status,2
	goto	u281
	goto	u280

u281:
	goto	l1192
u280:
	line	42
	
l1190:
		movlw	low(STR_3)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_3)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(086h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	43
		movlw	low(_data)
	movwf	((c:clcd_print@data))^00h,c
	clrf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C6h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	45
	
l1192:
		movlw	80
	xorwf	((c:_msg_id))^00h,c,w
iorwf	((c:_msg_id+1))^00h,c,w
	btfss	status,2
	goto	u291
	goto	u290

u291:
	goto	l1176
u290:
	line	47
	
l1194:
		movlw	low(STR_4)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_4)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(08Ch)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	48
	
l1196:
		decf	((c:_data))^00h,c,w
	btfss	status,2
	goto	u301
	goto	u300

u301:
	goto	l1200
u300:
	line	50
	
l1198:
		movlw	low(STR_5)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_5)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0CCh)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	51
	goto	l1176
	
l1200:
		movlw	2
	xorwf	((c:_data))^00h,c,w
	btfss	status,2
	goto	u311
	goto	u310

u311:
	goto	l1204
u310:
	line	53
	
l1202:
		movlw	low(STR_6)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_6)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0CCh)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	54
	goto	l1176
	line	56
	
l1204:
		movlw	low(STR_7)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_7)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0CCh)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	goto	l1176
	global	start
	goto	start
	callstack 0
	line	60
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
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
psect	text1,class=CODE,space=0,reloc=2,group=0
	file	"src/clcd.c"
	line	4
global __ptext1
__ptext1:
psect	text1
	file	"src/clcd.c"
	line	4
	
_init_clcd:
;incstack = 0
	callstack 29
	line	6
	
l1130:
	clrf	((c:3989))^0f00h,c	;volatile
	line	7
	
l1132:
	movf	((c:3988))^0f00h,c,w	;volatile
	andlw	low(0F8h)
	movwf	((c:3988))^0f00h,c	;volatile
	line	8
	
l1134:
	asmopt push
asmopt off
movlw	98
movwf	(??_init_clcd+0)^00h,c
	movlw	102
u327:
decfsz	wreg,f
	bra	u327
	decfsz	(??_init_clcd+0)^00h,c,f
	bra	u327
asmopt pop

	line	9
	
l1136:
	movlw	low(0)
	movwf	((c:clcd_write@control))^00h,c
	movlw	(033h)&0ffh
	
	call	_clcd_write
	line	10
	
l1138:
	asmopt push
asmopt off
movlw	27
movwf	(??_init_clcd+0)^00h,c
	movlw	158
u337:
decfsz	wreg,f
	bra	u337
	decfsz	(??_init_clcd+0)^00h,c,f
	bra	u337
	nop2
asmopt pop

	line	11
	
l1140:
	movlw	low(0)
	movwf	((c:clcd_write@control))^00h,c
	movlw	(033h)&0ffh
	
	call	_clcd_write
	line	12
	
l1142:
	asmopt push
asmopt off
	movlw	166
u347:
decfsz	wreg,f
	bra	u347
	nop2
asmopt pop

	line	13
	
l1144:
	movlw	low(0)
	movwf	((c:clcd_write@control))^00h,c
	movlw	(033h)&0ffh
	
	call	_clcd_write
	line	14
	
l1146:
	asmopt push
asmopt off
	movlw	166
u357:
decfsz	wreg,f
	bra	u357
	nop2
asmopt pop

	line	15
	
l1148:
	movlw	low(0)
	movwf	((c:clcd_write@control))^00h,c
	movlw	(02h)&0ffh
	
	call	_clcd_write
	line	16
	
l1150:
	asmopt push
asmopt off
	movlw	166
u367:
decfsz	wreg,f
	bra	u367
	nop2
asmopt pop

	line	17
	
l1152:
	movlw	low(0)
	movwf	((c:clcd_write@control))^00h,c
	movlw	(038h)&0ffh
	
	call	_clcd_write
	line	18
	
l1154:
	asmopt push
asmopt off
	movlw	166
u377:
decfsz	wreg,f
	bra	u377
	nop2
asmopt pop

	line	19
	
l1156:
	movlw	low(0)
	movwf	((c:clcd_write@control))^00h,c
	movlw	(0Ch)&0ffh
	
	call	_clcd_write
	line	20
	
l1158:
	asmopt push
asmopt off
	movlw	166
u387:
decfsz	wreg,f
	bra	u387
	nop2
asmopt pop

	line	21
	
l1160:
	movlw	low(0)
	movwf	((c:clcd_write@control))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	22
	
l1162:
	asmopt push
asmopt off
	movlw	166
u397:
decfsz	wreg,f
	bra	u397
	nop2
asmopt pop

	line	23
	
l96:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_clcd
	__end_of_init_clcd:
	signat	_init_clcd,89
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
psect	text2,class=CODE,space=0,reloc=2,group=0
	file	"src/can.c"
	line	15
global __ptext2
__ptext2:
psect	text2
	file	"src/can.c"
	line	15
	
_init_can:
;incstack = 0
	callstack 30
	line	17
	
l954:
	bcf	c:(31898/8),(31898)&7	;volatile
	line	18
	bsf	c:(31899/8),(31899)&7	;volatile
	line	22
	
l956:
	movlw	(01Fh)&0ffh
	andwf	((c:3951))^0f00h,c	;volatile
	
l958:
	bsf	(0+(7/8)+(c:3951))^0f00h,c,(7)&7	;volatile
	line	25
	
l960:
		movlw	128
	xorwf	((c:3950))^0f00h,c,w	;volatile
	btfss	status,2
	goto	u41
	goto	u40

u41:
	goto	l960
u40:
	
l53:
	line	29
	clrf	((c:3959))^0f00h,c	;volatile
	line	32
	
l962:
	movlw	low(0E1h)
	movwf	((c:3952))^0f00h,c	;volatile
	line	33
	movlw	low(01Bh)
	movwf	((c:3953))^0f00h,c	;volatile
	line	35
	movlw	low(03h)
	movwf	((c:3954))^0f00h,c	;volatile
	line	41
	
l964:
	movlb	13	; () banked
	clrf	((3540))&0ffh	;volatile
	line	43
	
l966:; BSR set to: 13

	movlw	(01Fh)&0ffh
	andwf	((c:3951))^0f00h,c	;volatile
	
l968:; BSR set to: 13

	movf	((c:3951))^0f00h,c,w	;volatile
	line	46
	
l970:; BSR set to: 13

	clrf	((c:3936))^0f00h,c	;volatile
	line	48
	
l972:; BSR set to: 13

	bsf	((c:3936))^0f00h,c,5	;volatile
	line	49
	
l974:; BSR set to: 13

	bsf	((c:3936))^0f00h,c,6	;volatile
	line	50
	
l54:; BSR set to: 13

	return	;funcret
	callstack 0
GLOBAL	__end_of_init_can
	__end_of_init_can:
	signat	_init_can,89
	global	_clcd_print

;; *************** function _clcd_print *****************
;; Defined at:
;;		line 50 in file "src/clcd.c"
;; Parameters:    Size  Location     Type
;;  data            2    2[COMRAM] PTR const unsigned char 
;;		 -> STR_7(2), STR_6(3), STR_5(3), STR_4(4), 
;;		 -> STR_3(4), STR_2(3), STR_1(3), data(8), 
;;  addr            1    4[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,group=0
	file	"src/clcd.c"
	line	50
global __ptext3
__ptext3:
psect	text3
	file	"src/clcd.c"
	line	50
	
_clcd_print:; BSR set to: 13

;incstack = 0
	callstack 29
	line	52
	
l1164:
	movlw	low(0)
	movwf	((c:clcd_write@control))^00h,c
	movf	((c:clcd_print@addr))^00h,c,w
	
	call	_clcd_write
	line	53
	goto	l1170
	line	55
	
l1166:
	movlw	low(01h)
	movwf	((c:clcd_write@control))^00h,c
	movff	(c:clcd_print@data),tblptrl
	movff	(c:clcd_print@data+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u237

	tblrd	*
	
	movf	tablat,w
	bra	u230
u237:
	movff	tblptrl,fsr1l
	movff	tblptrh,fsr1h
	movf	indf1,w
u230:
	
	call	_clcd_write
	
l1168:
	infsnz	((c:clcd_print@data))^00h,c
	incf	((c:clcd_print@data+1))^00h,c
	line	53
	
l1170:
	movff	(c:clcd_print@data),tblptrl
	movff	(c:clcd_print@data+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u247

	tblrd	*
	
	movf	tablat,w
	bra	u240
u247:
	movff	tblptrl,fsr1l
	movff	tblptrh,fsr1h
	movf	indf1,w
u240:
	iorlw	0
	btfss	status,2
	goto	u251
	goto	u250
u251:
	goto	l1166
u250:
	line	57
	
l110:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clcd_print
	__end_of_clcd_print:
	signat	_clcd_print,8313
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
;;		_clcd_print
;;		_clcd_putch
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2,group=0
	line	25
global __ptext4
__ptext4:
psect	text4
	file	"src/clcd.c"
	line	25
	
_clcd_write:
;incstack = 0
	callstack 29
	line	27
	movwf	((c:clcd_write@byte))^00h,c
	
l1094:
	btfsc	((c:clcd_write@control))^00h,c,0
	goto	u181
	goto	u180
u181:
	bsf	c:(31761/8),(31761)&7	;volatile
	goto	u195
u180:
	bcf	c:(31761/8),(31761)&7	;volatile
u195:
	line	28
	
l1096:
	movff	(c:clcd_write@byte),(c:3971)	;volatile
	line	30
	
l1098:
	bsf	c:(31762/8),(31762)&7	;volatile
	line	31
	
l1100:
	bcf	c:(31762/8),(31762)&7	;volatile
	line	32
	
l1102:
	bsf	c:(31919/8),(31919)&7	;volatile
	line	33
	
l1104:
	bsf	c:(31760/8),(31760)&7	;volatile
	line	34
	
l1106:
	bcf	c:(31761/8),(31761)&7	;volatile
	line	37
	
l1108:
	bsf	c:(31762/8),(31762)&7	;volatile
	line	38
	
l1110:
	bcf	c:(31762/8),(31762)&7	;volatile
	line	39
	
l1112:
	btfsc	c:(31775/8),(31775)&7	;volatile
	goto	u201
	goto	u200
u201:
	goto	l1108
u200:
	
l100:
	line	40
	bcf	c:(31760/8),(31760)&7	;volatile
	line	41
	bcf	c:(31919/8),(31919)&7	;volatile
	line	42
	
l101:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clcd_write
	__end_of_clcd_write:
	signat	_clcd_write,8313
	global	_can_receive

;; *************** function _can_receive *****************
;; Defined at:
;;		line 91 in file "src/can.c"
;; Parameters:    Size  Location     Type
;;  msg_id          1    8[COMRAM] PTR unsigned short 
;;		 -> msg_id(2), 
;;  data            1    9[COMRAM] PTR unsigned char 
;;		 -> data(8), 
;;  len             1   10[COMRAM] PTR unsigned char 
;;		 -> len(1), 
;; Auto vars:     Size  Location     Type
;;  i               2   16[COMRAM] int 
;;  ptr             2   14[COMRAM] PTR unsigned char 
;;		 -> RXB0D0(1), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_get_msg_id_std
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,group=0
	file	"src/can.c"
	line	91
global __ptext5
__ptext5:
psect	text5
	file	"src/can.c"
	line	91
	
_can_receive:
;incstack = 0
	callstack 29
	line	94
	
l1114:
	btfss	((c:3936))^0f00h,c,7	;volatile
	goto	u211
	goto	u210
u211:
	goto	l73
u210:
	line	96
	
l1116:
	call	_get_msg_id_std	;wreg free
	movf	((c:can_receive@msg_id))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	0+?_get_msg_id_std,postinc2
	movff	1+?_get_msg_id_std,postdec2

	line	98
	
l1118:
	movf	((c:can_receive@len))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:3941),indf2	;volatile

	line	100
	
l1120:
		movlw	low(3942)
	movwf	((c:can_receive@ptr))^00h,c
	movlw	high(3942)
	movwf	((c:can_receive@ptr+1))^00h,c

	line	102
	
l1122:
	clrf	((c:can_receive@i+1))^00h,c
	movlw	low(0)
	movwf	((c:can_receive@i))^00h,c
	goto	l1128
	line	103
	
l1124:
	movf	((c:can_receive@i))^00h,c,w
	addwf	((c:can_receive@ptr))^00h,c,w
	movwf	c:fsr2l
	movf	((c:can_receive@i+1))^00h,c,w
	addwfc	((c:can_receive@ptr+1))^00h,c,w
	movwf	1+c:fsr2l
	movf	((c:can_receive@data))^00h,c,w
	addwf	((c:can_receive@i))^00h,c,w
	movwf	fsr1l
	clrf	fsr1h
	movff	indf2,indf1
	line	102
	
l1126:
	infsnz	((c:can_receive@i))^00h,c
	incf	((c:can_receive@i+1))^00h,c
	
l1128:
	movf	((c:can_receive@len))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_can_receive+0)^00h,c
	clrf	(??_can_receive+0+1)^00h,c

		movf	(??_can_receive+0)^00h,c,w
	subwf	((c:can_receive@i))^00h,c,w
	movf	((c:can_receive@i+1))^00h,c,w
	xorlw	80h
	movwf	(??_can_receive+2)^00h,c
	movf	(??_can_receive+0+1)^00h,c,w
	xorlw	80h
	subwfb	(??_can_receive+2)^00h,c,w
	btfss	status,0
	goto	u221
	goto	u220

u221:
	goto	l1124
u220:
	
l72:
	line	106
	bcf	c:(31495/8),(31495)&7	;volatile
	line	107
	bcf	c:(32032/8),(32032)&7	;volatile
	line	112
	
l73:
	return	;funcret
	callstack 0
GLOBAL	__end_of_can_receive
	__end_of_can_receive:
	signat	_can_receive,12409
	global	_get_msg_id_std

;; *************** function _get_msg_id_std *****************
;; Defined at:
;;		line 52 in file "src/can.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  id              2    6[COMRAM] unsigned short 
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
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_can_receive
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2,group=0
	line	52
global __ptext6
__ptext6:
psect	text6
	file	"src/can.c"
	line	52
	
_get_msg_id_std:
;incstack = 0
	callstack 29
	line	53
	
l1086:
	line	54
	
l1088:
	movf	((c:3937))^0f00h,c,w	;volatile
	movwf	(??_get_msg_id_std+0)^00h,c
	clrf	(??_get_msg_id_std+0+1)^00h,c

	bcf	status,0
	rlcf	(??_get_msg_id_std+0)^00h,c
	rlcf	(??_get_msg_id_std+0+1)^00h,c
	bcf	status,0
	rlcf	(??_get_msg_id_std+0)^00h,c
	rlcf	(??_get_msg_id_std+0+1)^00h,c
	bcf	status,0
	rlcf	(??_get_msg_id_std+0)^00h,c
	rlcf	(??_get_msg_id_std+0+1)^00h,c
	swapf	((c:3938))^0f00h,c,w	;volatile
	rrncf	wreg
	andlw	(0ffh shr 5) & 0ffh
	andlw	low(07h)
	movwf	(??_get_msg_id_std+2)^00h,c
	clrf	(??_get_msg_id_std+2+1)^00h,c

	movf	(??_get_msg_id_std+0)^00h,c,w
	iorwf	(??_get_msg_id_std+2)^00h,c,w
	movwf	((c:get_msg_id_std@id))^00h,c
	movf	(??_get_msg_id_std+0+1)^00h,c,w
	iorwf	(??_get_msg_id_std+2+1)^00h,c,w
	movwf	1+((c:get_msg_id_std@id))^00h,c
	line	55
	
l1090:
	movff	(c:get_msg_id_std@id),(c:?_get_msg_id_std)
	movff	(c:get_msg_id_std@id+1),(c:?_get_msg_id_std+1)
	line	56
	
l57:
	return	;funcret
	callstack 0
GLOBAL	__end_of_get_msg_id_std
	__end_of_get_msg_id_std:
	signat	_get_msg_id_std,90
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
