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
	FNCALL	_main,_clcd_print
	FNCALL	_main,_clear_log
	FNCALL	_main,_display_main_menu
	FNCALL	_main,_download_log
	FNCALL	_main,_init_config
	FNCALL	_main,_set_time
	FNCALL	_main,_view_dashboard
	FNCALL	_main,_view_log
	FNCALL	_view_log,___awdiv
	FNCALL	_view_log,___awmod
	FNCALL	_view_log,_clcd_print
	FNCALL	_view_log,_get_event_count
	FNCALL	_view_log,_i2c_eeprom_read
	FNCALL	_view_log,_old_event_index
	FNCALL	_view_log,_read_mkp
	FNCALL	_view_dashboard,___awdiv
	FNCALL	_view_dashboard,___awmod
	FNCALL	_view_dashboard,___lldiv
	FNCALL	_view_dashboard,___lmul
	FNCALL	_view_dashboard,_clcd_print
	FNCALL	_view_dashboard,_event_store
	FNCALL	_view_dashboard,_read_adc
	FNCALL	_view_dashboard,_read_mkp
	FNCALL	_view_dashboard,_rtc_read
	FNCALL	_event_store,_i2c_eeprom_write
	FNCALL	_set_time,___awdiv
	FNCALL	_set_time,___awmod
	FNCALL	_set_time,_clcd_print
	FNCALL	_set_time,_clcd_putch
	FNCALL	_set_time,_read_mkp
	FNCALL	_set_time,_rtc_read
	FNCALL	_set_time,_write_time_rtc
	FNCALL	_write_time_rtc,_decimal_to_bcd
	FNCALL	_write_time_rtc,_i2c_start
	FNCALL	_write_time_rtc,_i2c_stop
	FNCALL	_write_time_rtc,_i2c_write
	FNCALL	_decimal_to_bcd,___awdiv
	FNCALL	_decimal_to_bcd,___awmod
	FNCALL	_rtc_read,_bcd_to_decimal
	FNCALL	_rtc_read,_i2c_ack
	FNCALL	_rtc_read,_i2c_no_ack
	FNCALL	_rtc_read,_i2c_read
	FNCALL	_rtc_read,_i2c_rep_start
	FNCALL	_rtc_read,_i2c_start
	FNCALL	_rtc_read,_i2c_stop
	FNCALL	_rtc_read,_rtc_write_check
	FNCALL	_rtc_write_check,_i2c_is_nack
	FNCALL	_rtc_write_check,_i2c_write
	FNCALL	_i2c_ack,_i2c_idle
	FNCALL	_read_mkp,_scan_key
	FNCALL	_clcd_putch,_clcd_write
	FNCALL	_init_config,_init_adc
	FNCALL	_init_config,_init_clcd
	FNCALL	_init_config,_init_event_log
	FNCALL	_init_config,_init_i2c
	FNCALL	_init_config,_init_mkp
	FNCALL	_init_config,_init_rtc
	FNCALL	_init_config,_init_uart
	FNCALL	_init_rtc,_rtc_read_reg
	FNCALL	_init_rtc,_rtc_write_reg
	FNCALL	_rtc_write_reg,_i2c_start
	FNCALL	_rtc_write_reg,_i2c_stop
	FNCALL	_rtc_write_reg,_i2c_write
	FNCALL	_rtc_read_reg,_i2c_no_ack
	FNCALL	_rtc_read_reg,_i2c_read
	FNCALL	_rtc_read_reg,_i2c_rep_start
	FNCALL	_rtc_read_reg,_i2c_start
	FNCALL	_rtc_read_reg,_i2c_stop
	FNCALL	_rtc_read_reg,_i2c_write
	FNCALL	_i2c_no_ack,_i2c_idle
	FNCALL	_init_event_log,_i2c_eeprom_read
	FNCALL	_init_event_log,_i2c_eeprom_write
	FNCALL	_init_clcd,_clcd_write
	FNCALL	_download_log,___awdiv
	FNCALL	_download_log,___awmod
	FNCALL	_download_log,_get_event_count
	FNCALL	_download_log,_i2c_eeprom_read
	FNCALL	_download_log,_old_event_index
	FNCALL	_download_log,_putch
	FNCALL	_download_log,_puts
	FNCALL	_puts,_putch
	FNCALL	_i2c_eeprom_read,_i2c_read
	FNCALL	_i2c_eeprom_read,_i2c_rep_start
	FNCALL	_i2c_eeprom_read,_i2c_start
	FNCALL	_i2c_eeprom_read,_i2c_stop
	FNCALL	_i2c_eeprom_read,_i2c_write
	FNCALL	_i2c_rep_start,_i2c_idle
	FNCALL	_i2c_read,_i2c_rx_mode
	FNCALL	_i2c_rx_mode,_i2c_idle
	FNCALL	_display_main_menu,_clcd_print
	FNCALL	_display_main_menu,_scan_key
	FNCALL	_clcd_print,_clcd_write
	FNCALL	_clear_log,_i2c_eeprom_write
	FNCALL	_i2c_eeprom_write,_i2c_is_nack
	FNCALL	_i2c_eeprom_write,_i2c_start
	FNCALL	_i2c_eeprom_write,_i2c_stop
	FNCALL	_i2c_eeprom_write,_i2c_write
	FNCALL	_i2c_write,_i2c_idle
	FNCALL	_i2c_stop,_i2c_idle
	FNCALL	_i2c_start,_i2c_idle
	FNROOT	_main
	global	read_mkp@flag
	global	_first_read
	global	view_log@F10535
	global	view_log@F10533
	global	view_dashboard@F10546
	global	view_dashboard@F10544
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"src/mkp.c"
	line	72

;initializer for read_mkp@flag
	db	low(01h)
	file	"src/black_box.c"
	line	23

;initializer for _first_read
	db	low(01h)
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	file	"src/view_log.c"
	line	35

;initializer for view_log@F10535
	db	low(030h)
	db	low(030h)
	db	low(03Ah)
	db	low(030h)
	db	low(030h)
	db	low(03Ah)
	db	low(030h)
	db	low(030h)
	db	low(020h)
	db	low(047h)
	db	low(033h)
	db	low(020h)
	db	low(030h)
	db	low(030h)
	db	low(020h)
	db	low(0)
	line	33

;initializer for view_log@F10533
	db	low(054h)
	db	low(049h)
	db	low(04Dh)
	db	low(045h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(045h)
	db	low(056h)
	db	low(020h)
	db	low(053h)
	db	low(050h)
	db	low(020h)
	db	low(0)
	file	"src/black_box.c"
	line	36

;initializer for view_dashboard@F10546
	db	low(030h)
	db	low(030h)
	db	low(03Ah)
	db	low(030h)
	db	low(030h)
	db	low(03Ah)
	db	low(030h)
	db	low(030h)
	db	low(020h)
	db	low(047h)
	db	low(033h)
	db	low(020h)
	db	low(030h)
	db	low(030h)
	db	low(020h)
	db	low(0)
	line	35

;initializer for view_dashboard@F10544
	db	low(054h)
	db	low(049h)
	db	low(04Dh)
	db	low(045h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(045h)
	db	low(056h)
	db	low(020h)
	db	low(053h)
	db	low(050h)
	db	low(020h)
	db	low(0)
	global	_ev
psect	mediumconst,class=MEDIUMCONST,space=0,reloc=2,noexec
global __pmediumconst
__pmediumconst:
	db	0
	file	"src/view_log.c"
	line	20
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
	global	_event_time
	global	read_mkp@key
	global	_menu_index
	global	readkey@flag
	global	_event_count
	global	_write_index
	global	_event_speed
	global	_event_gear
	global	_prev_gear
	global	_gear
	global	_state
	global	_RCREG
_RCREG	set	0xFAE
	global	_TXREG
_TXREG	set	0xFAD
	global	_SPBRG
_SPBRG	set	0xFAF
	global	_PORTBbits
_PORTBbits	set	0xF81
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_PORTB
_PORTB	set	0xF81
	global	_TRISB
_TRISB	set	0xF93
	global	_SSPBUF
_SSPBUF	set	0xFC9
	global	_SSPADD
_SSPADD	set	0xFC8
	global	_SSPCON1
_SSPCON1	set	0xFC6
	global	_PORTD
_PORTD	set	0xF83
	global	_TRISC
_TRISC	set	0xF94
	global	_TRISD
_TRISD	set	0xF95
	global	_ADCON0
_ADCON0	set	0xFC2
	global	_ADRESL
_ADRESL	set	0xFC3
	global	_ADRESH
_ADRESH	set	0xFC4
	global	_OERR
_OERR	set	0x7D59
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
	global	_RB1
_RB1	set	0x7C09
	global	_RB7
_RB7	set	0x7C0F
	global	_RB6
_RB6	set	0x7C0E
	global	_RB5
_RB5	set	0x7C0D
	global	_RBPU
_RBPU	set	0x7F8F
	global	_ACKSTAT
_ACKSTAT	set	0x7E2E
	global	_ACKEN
_ACKEN	set	0x7E2C
	global	_ACKDT
_ACKDT	set	0x7E2D
	global	_RCEN
_RCEN	set	0x7E2B
	global	_RSEN
_RSEN	set	0x7E29
	global	_PEN
_PEN	set	0x7E2A
	global	_SEN
_SEN	set	0x7E28
	global	_BCLIF
_BCLIF	set	0x7D0B
	global	_SSPIF
_SSPIF	set	0x7CF3
	global	_CKE
_CKE	set	0x7E3E
	global	_SMP
_SMP	set	0x7E3F
	global	_TRISC4
_TRISC4	set	0x7CA4
	global	_TRISC3
_TRISC3	set	0x7CA3
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
	
STR_2:
	db	32
	db	32
	db	84	;'T'
	db	73	;'I'
	db	77	;'M'
	db	69	;'E'
	db	32
	db	32
	db	32
	db	32
	db	71	;'G'
	db	69	;'E'
	db	65	;'A'
	db	82	;'R'
	db	32
	db	32
	db	32
	db	83	;'S'
	db	80	;'P'
	db	69	;'E'
	db	69	;'E'
	db	68	;'D'
	db	0
	
STR_9:
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_5:
	db	83	;'S'
	db	101	;'e'
	db	116	;'t'
	db	32
	db	116	;'t'
	db	105	;'i'
	db	109	;'m'
	db	101	;'e'
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_19:
	db	62	;'>'
	db	52	;'4'
	db	46
	db	83	;'S'
	db	101	;'e'
	db	116	;'t'
	db	32
	db	116	;'t'
	db	105	;'i'
	db	109	;'m'
	db	101	;'e'
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_13:
	db	32
	db	50	;'2'
	db	46
	db	68	;'D'
	db	111	;'o'
	db	119	;'w'
	db	110	;'n'
	db	108	;'l'
	db	111	;'o'
	db	97	;'a'
	db	100	;'d'
	db	32
	db	108	;'l'
	db	111	;'o'
	db	103	;'g'
	db	32
	db	32
	db	0
	
STR_15:
	db	62	;'>'
	db	50	;'2'
	db	46
	db	68	;'D'
	db	111	;'o'
	db	119	;'w'
	db	110	;'n'
	db	108	;'l'
	db	111	;'o'
	db	97	;'a'
	db	100	;'d'
	db	32
	db	108	;'l'
	db	111	;'o'
	db	103	;'g'
	db	32
	db	32
	db	0
	
STR_10:
	db	76	;'L'
	db	111	;'o'
	db	103	;'g'
	db	115	;'s'
	db	32
	db	99	;'c'
	db	108	;'l'
	db	101	;'e'
	db	97	;'a'
	db	114	;'r'
	db	101	;'e'
	db	100	;'d'
	db	32
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_1:
	db	78	;'N'
	db	111	;'o'
	db	32
	db	108	;'l'
	db	111	;'o'
	db	103	;'g'
	db	115	;'s'
	db	32
	db	97	;'a'
	db	118	;'v'
	db	97	;'a'
	db	105	;'i'
	db	108	;'l'
	db	97	;'a'
	db	98	;'b'
	db	108	;'l'
	db	101	;'e'
	db	0
	
STR_14:
	db	32
	db	49	;'1'
	db	46
	db	86	;'V'
	db	105	;'i'
	db	101	;'e'
	db	119	;'w'
	db	32
	db	108	;'l'
	db	111	;'o'
	db	103	;'g'
	db	32
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_12:
	db	62	;'>'
	db	49	;'1'
	db	46
	db	86	;'V'
	db	105	;'i'
	db	101	;'e'
	db	119	;'w'
	db	32
	db	108	;'l'
	db	111	;'o'
	db	103	;'g'
	db	32
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_18:
	db	32
	db	51	;'3'
	db	46
	db	67	;'C'
	db	108	;'l'
	db	101	;'e'
	db	97	;'a'
	db	114	;'r'
	db	32
	db	108	;'l'
	db	111	;'o'
	db	103	;'g'
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_17:
	db	62	;'>'
	db	51	;'3'
	db	46
	db	67	;'C'
	db	108	;'l'
	db	101	;'e'
	db	97	;'a'
	db	114	;'r'
	db	32
	db	108	;'l'
	db	111	;'o'
	db	103	;'g'
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_6:
	db	69	;'E'
	db	100	;'d'
	db	105	;'i'
	db	116	;'t'
	db	58	;':'
	db	72	;'H'
	db	111	;'o'
	db	117	;'u'
	db	114	;'r'
	db	115	;'s'
	db	32
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_20:
	db	78	;'N'
	db	111	;'o'
	db	32
	db	108	;'l'
	db	111	;'o'
	db	103	;'g'
	db	115	;'s'
	db	33
	db	33
	db	32
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_8:
	db	69	;'E'
	db	100	;'d'
	db	105	;'i'
	db	116	;'t'
	db	58	;':'
	db	83	;'S'
	db	101	;'e'
	db	99	;'c'
	db	115	;'s'
	db	32
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_7:
	db	69	;'E'
	db	100	;'d'
	db	105	;'i'
	db	116	;'t'
	db	58	;':'
	db	77	;'M'
	db	105	;'i'
	db	110	;'n'
	db	115	;'s'
	db	32
	db	32
	db	32
	db	32
	db	32
	db	0
STR_16	equ	STR_13+0
STR_11	equ	STR_9+3
STR_21	equ	STR_9+3
STR_4	equ	STR_9+15
STR_3	equ	STR_9+16
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
	global	_event_time
_event_time:
       ds      7
read_mkp@key:
       ds      1
_menu_index:
       ds      1
readkey@flag:
       ds      1
_event_count:
       ds      1
_write_index:
       ds      1
	global	_event_speed
_event_speed:
       ds      1
	global	_event_gear
_event_gear:
       ds      1
_prev_gear:
       ds      1
_gear:
       ds      1
	global	_state
_state:
       ds      1
psect	dataCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pdataCOMRAM
__pdataCOMRAM:
	file	"src/mkp.c"
	line	72
read_mkp@flag:
       ds      1
psect	dataCOMRAM
	file	"src/black_box.c"
	line	23
_first_read:
       ds      1
psect	dataBANK0,class=BANK0,space=1,noexec,lowdata
global __pdataBANK0
__pdataBANK0:
	file	"src/view_log.c"
	line	35
view_log@F10535:
       ds      16
psect	dataBANK0
	file	"src/view_log.c"
	line	33
view_log@F10533:
       ds      16
psect	dataBANK0
	file	"src/black_box.c"
	line	36
view_dashboard@F10546:
       ds      16
psect	dataBANK0
	file	"src/black_box.c"
	line	35
view_dashboard@F10544:
       ds      16
	file	"build/main.s"
	line	#
psect	cinit
; Initialize objects allocated to BANK0 (64 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,64
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
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
; Clear objects allocated to COMRAM (17 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	17
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
?_read_mkp:	; 1 bytes @ 0x0
?_event_store:	; 1 bytes @ 0x0
?_get_event_count:	; 1 bytes @ 0x0
?_putch:	; 1 bytes @ 0x0
?_old_event_index:	; 1 bytes @ 0x0
?_i2c_eeprom_read:	; 1 bytes @ 0x0
?_clcd_write:	; 1 bytes @ 0x0
?_i2c_start:	; 1 bytes @ 0x0
?_i2c_write:	; 1 bytes @ 0x0
?_i2c_is_nack:	; 1 bytes @ 0x0
?_i2c_stop:	; 1 bytes @ 0x0
?_i2c_rep_start:	; 1 bytes @ 0x0
?_i2c_read:	; 1 bytes @ 0x0
?_init_rtc:	; 1 bytes @ 0x0
?_init_mkp:	; 1 bytes @ 0x0
?_init_uart:	; 1 bytes @ 0x0
?_display_main_menu:	; 1 bytes @ 0x0
?_view_log:	; 1 bytes @ 0x0
?_scan_key:	; 1 bytes @ 0x0
?_rtc_read_reg:	; 1 bytes @ 0x0
?_init_adc:	; 1 bytes @ 0x0
?_view_dashboard:	; 1 bytes @ 0x0
?_download_log:	; 1 bytes @ 0x0
?_set_time:	; 1 bytes @ 0x0
?_init_clcd:	; 1 bytes @ 0x0
?_init_event_log:	; 1 bytes @ 0x0
?_clear_log:	; 1 bytes @ 0x0
?_init_i2c:	; 1 bytes @ 0x0
?_i2c_idle:	; 1 bytes @ 0x0
?_i2c_rx_mode:	; 1 bytes @ 0x0
?_i2c_no_ack:	; 1 bytes @ 0x0
?_i2c_ack:	; 1 bytes @ 0x0
?_init_config:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_bcd_to_decimal:	; 1 bytes @ 0x0
?_decimal_to_bcd:	; 1 bytes @ 0x0
?_rtc_write_check:	; 1 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?_read_adc
?_read_adc:	; 2 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	clcd_write@control
clcd_write@control:	; 1 bytes @ 0x0
	global	i2c_read@data
i2c_read@data:	; 1 bytes @ 0x0
	global	read_mkp@trigger
read_mkp@trigger:	; 1 bytes @ 0x0
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x0
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
??_read_mkp:	; 1 bytes @ 0x0
??_get_event_count:	; 1 bytes @ 0x0
??_old_event_index:	; 1 bytes @ 0x0
??_i2c_start:	; 1 bytes @ 0x0
??_i2c_is_nack:	; 1 bytes @ 0x0
??_i2c_stop:	; 1 bytes @ 0x0
??_i2c_rep_start:	; 1 bytes @ 0x0
??_i2c_read:	; 1 bytes @ 0x0
??_init_mkp:	; 1 bytes @ 0x0
??_init_uart:	; 1 bytes @ 0x0
??_scan_key:	; 1 bytes @ 0x0
??_init_adc:	; 1 bytes @ 0x0
??_init_i2c:	; 1 bytes @ 0x0
??_i2c_idle:	; 1 bytes @ 0x0
??_i2c_rx_mode:	; 1 bytes @ 0x0
??_i2c_no_ack:	; 1 bytes @ 0x0
??_i2c_ack:	; 1 bytes @ 0x0
??_bcd_to_decimal:	; 1 bytes @ 0x0
	ds   1
	global	clcd_write@byte
clcd_write@byte:	; 1 bytes @ 0x1
	global	bcd_to_decimal@bcd
bcd_to_decimal@bcd:	; 1 bytes @ 0x1
??_clcd_write:	; 1 bytes @ 0x1
	ds   1
?_clcd_print:	; 1 bytes @ 0x2
	global	clcd_print@data
clcd_print@data:	; 2 bytes @ 0x2
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x2
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x2
??_read_adc:	; 1 bytes @ 0x2
??_init_clcd:	; 1 bytes @ 0x2
	ds   2
	global	clcd_print@addr
clcd_print@addr:	; 1 bytes @ 0x4
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x4
	global	read_adc@reg_val
read_adc@reg_val:	; 2 bytes @ 0x4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
??___awdiv:	; 1 bytes @ 0x4
??___awmod:	; 1 bytes @ 0x4
	ds   1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x5
??_clcd_print:	; 1 bytes @ 0x5
??_display_main_menu:	; 1 bytes @ 0x5
	ds   1
	global	read_adc@channel
read_adc@channel:	; 1 bytes @ 0x6
	global	display_main_menu@count
display_main_menu@count:	; 2 bytes @ 0x6
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds   2
?_clcd_putch:	; 1 bytes @ 0x8
	global	clcd_putch@addr
clcd_putch@addr:	; 1 bytes @ 0x8
	global	display_main_menu@key
display_main_menu@key:	; 1 bytes @ 0x8
	global	putch@data
putch@data:	; 1 bytes @ 0x8
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x8
??_putch:	; 1 bytes @ 0x8
??_decimal_to_bcd:	; 1 bytes @ 0x8
??___lmul:	; 1 bytes @ 0x8
	ds   1
?_puts:	; 2 bytes @ 0x9
	global	clcd_putch@data
clcd_putch@data:	; 1 bytes @ 0x9
	global	puts@s
puts@s:	; 2 bytes @ 0x9
??_clcd_putch:	; 1 bytes @ 0x9
	ds   1
	global	decimal_to_bcd@decimal
decimal_to_bcd@decimal:	; 1 bytes @ 0xA
	ds   1
	global	i2c_write@data
i2c_write@data:	; 1 bytes @ 0xB
??_puts:	; 1 bytes @ 0xB
??_i2c_write:	; 1 bytes @ 0xB
	ds   1
?_write_time_rtc:	; 1 bytes @ 0xC
?_rtc_write_reg:	; 1 bytes @ 0xC
?_i2c_eeprom_write:	; 1 bytes @ 0xC
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0xC
	global	i2c_eeprom_write@data
i2c_eeprom_write@data:	; 1 bytes @ 0xC
	global	i2c_eeprom_read@address
i2c_eeprom_read@address:	; 1 bytes @ 0xC
	global	rtc_write_check@data
rtc_write_check@data:	; 1 bytes @ 0xC
	global	write_time_rtc@time
write_time_rtc@time:	; 1 bytes @ 0xC
	global	rtc_write_reg@data
rtc_write_reg@data:	; 1 bytes @ 0xC
	global	rtc_read_reg@address
rtc_read_reg@address:	; 1 bytes @ 0xC
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0xC
??_i2c_eeprom_read:	; 1 bytes @ 0xC
??_rtc_read_reg:	; 1 bytes @ 0xC
??_rtc_write_check:	; 1 bytes @ 0xC
	ds   1
?_rtc_read:	; 1 bytes @ 0xD
	global	i2c_eeprom_read@data
i2c_eeprom_read@data:	; 1 bytes @ 0xD
	global	rtc_read@time
rtc_read@time:	; 1 bytes @ 0xD
	global	rtc_write_reg@address
rtc_write_reg@address:	; 1 bytes @ 0xD
	global	rtc_read_reg@data
rtc_read_reg@data:	; 1 bytes @ 0xD
??_write_time_rtc:	; 1 bytes @ 0xD
??_rtc_write_reg:	; 1 bytes @ 0xD
??_i2c_eeprom_write:	; 1 bytes @ 0xD
	ds   1
	global	download_log@start_index
download_log@start_index:	; 1 bytes @ 0xE
	global	i2c_eeprom_write@address
i2c_eeprom_write@address:	; 1 bytes @ 0xE
	global	init_rtc@dummy
init_rtc@dummy:	; 1 bytes @ 0xE
	global	rtc_read@raw
rtc_read@raw:	; 7 bytes @ 0xE
??_rtc_read:	; 1 bytes @ 0xE
??_init_rtc:	; 1 bytes @ 0xE
??_view_log:	; 1 bytes @ 0xE
??_download_log:	; 1 bytes @ 0xE
	ds   1
	global	download_log@count
download_log@count:	; 1 bytes @ 0xF
	global	init_event_log@log_key
init_event_log@log_key:	; 1 bytes @ 0xF
	global	event_store@address
event_store@address:	; 1 bytes @ 0xF
??_event_store:	; 1 bytes @ 0xF
??_init_event_log:	; 1 bytes @ 0xF
??_clear_log:	; 1 bytes @ 0xF
	ds   1
	global	download_log@hour
download_log@hour:	; 1 bytes @ 0x10
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x10
??_init_config:	; 1 bytes @ 0x10
	ds   1
	global	download_log@min
download_log@min:	; 1 bytes @ 0x11
	ds   1
	global	download_log@sec
download_log@sec:	; 1 bytes @ 0x12
	ds   1
	global	download_log@speed
download_log@speed:	; 1 bytes @ 0x13
	global	view_log@line1
view_log@line1:	; 16 bytes @ 0x13
	ds   1
	global	download_log@event_index
download_log@event_index:	; 1 bytes @ 0x14
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x14
??___lldiv:	; 1 bytes @ 0x14
	ds   1
	global	download_log@gear
download_log@gear:	; 1 bytes @ 0x15
	global	rtc_read@i
rtc_read@i:	; 1 bytes @ 0x15
	ds   1
	global	download_log@address
download_log@address:	; 1 bytes @ 0x16
??_set_time:	; 1 bytes @ 0x16
	ds   1
	global	set_time@press
set_time@press:	; 1 bytes @ 0x17
	ds   1
	global	set_time@key
set_time@key:	; 1 bytes @ 0x18
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0x18
	ds   1
	global	set_time@field
set_time@field:	; 1 bytes @ 0x19
??_view_dashboard:	; 1 bytes @ 0x19
	ds   1
	global	set_time@time
set_time@time:	; 7 bytes @ 0x1A
	global	view_dashboard@line1
view_dashboard@line1:	; 16 bytes @ 0x1A
	ds   9
	global	view_log@line2
view_log@line2:	; 16 bytes @ 0x23
	ds   7
	global	view_dashboard@line2
view_dashboard@line2:	; 16 bytes @ 0x2A
	ds   9
	global	view_log@start_index
view_log@start_index:	; 1 bytes @ 0x33
	ds   1
	global	view_log@press
view_log@press:	; 1 bytes @ 0x34
	ds   1
	global	view_log@hour
view_log@hour:	; 1 bytes @ 0x35
	ds   1
	global	view_log@min
view_log@min:	; 1 bytes @ 0x36
	ds   1
	global	view_log@sec
view_log@sec:	; 1 bytes @ 0x37
	ds   1
	global	view_log@speed
view_log@speed:	; 1 bytes @ 0x38
	ds   1
	global	view_log@count
view_log@count:	; 1 bytes @ 0x39
	ds   1
	global	view_log@gear
view_log@gear:	; 1 bytes @ 0x3A
	global	view_dashboard@adc_value
view_dashboard@adc_value:	; 2 bytes @ 0x3A
	ds   1
	global	view_log@key
view_log@key:	; 1 bytes @ 0x3B
	ds   1
	global	view_log@event_index
view_log@event_index:	; 1 bytes @ 0x3C
	global	view_dashboard@count
view_dashboard@count:	; 2 bytes @ 0x3C
	ds   1
	global	view_log@address
view_log@address:	; 1 bytes @ 0x3D
	ds   1
	global	view_dashboard@flag
view_dashboard@flag:	; 1 bytes @ 0x3E
	ds   1
	global	view_dashboard@speed
view_dashboard@speed:	; 1 bytes @ 0x3F
	ds   1
	global	view_dashboard@key
view_dashboard@key:	; 1 bytes @ 0x40
	ds   1
	global	view_dashboard@time
view_dashboard@time:	; 7 bytes @ 0x41
	ds   7
??_main:	; 1 bytes @ 0x48
	ds   2
;!
;!Data Sizes:
;!    Strings     282
;!    Constant    27
;!    Data        66
;!    BSS         17
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     74      93
;!    BANK0           160      0      64
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    clcd_print@data	PTR const unsigned char  size(2) Largest target is 21
;!		 -> STR_10(CODE[18]), STR_11(CODE[18]), STR_12(CODE[17]), STR_13(CODE[18]), 
;!		 -> STR_14(CODE[17]), STR_15(CODE[18]), STR_16(CODE[18]), STR_17(CODE[17]), 
;!		 -> STR_18(CODE[17]), STR_19(CODE[18]), STR_20(CODE[15]), STR_21(CODE[18]), 
;!		 -> STR_5(CODE[19]), STR_6(CODE[16]), STR_7(CODE[15]), STR_8(CODE[15]), 
;!		 -> STR_9(CODE[21]), view_dashboard@line1(COMRAM[16]), view_dashboard@line2(COMRAM[16]), view_log@line1(COMRAM[16]), 
;!		 -> view_log@line2(COMRAM[16]), 
;!
;!    puts@s	PTR const unsigned char  size(2) Largest target is 23
;!		 -> STR_1(CODE[18]), STR_2(CODE[23]), STR_3(CODE[5]), STR_4(CODE[6]), 
;!
;!    rtc_read@time	PTR struct . size(1) Largest target is 7
;!		 -> set_time@time(COMRAM[7]), view_dashboard@time(COMRAM[7]), 
;!
;!    write_time_rtc@time	PTR struct . size(1) Largest target is 7
;!		 -> set_time@time(COMRAM[7]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_view_dashboard
;!    _view_log->_i2c_eeprom_read
;!    _view_dashboard->___lldiv
;!    _event_store->_i2c_eeprom_write
;!    ___lldiv->___lmul
;!    _set_time->_rtc_read
;!    _write_time_rtc->_i2c_write
;!    _decimal_to_bcd->___awdiv
;!    _rtc_read->_rtc_write_check
;!    _rtc_write_check->_i2c_write
;!    _clcd_putch->___awdiv
;!    _init_config->_init_event_log
;!    _init_rtc->_rtc_read_reg
;!    _init_rtc->_rtc_write_reg
;!    _rtc_write_reg->_i2c_write
;!    _rtc_read_reg->_i2c_write
;!    _init_event_log->_i2c_eeprom_write
;!    _init_clcd->_clcd_write
;!    _download_log->_i2c_eeprom_read
;!    _puts->_putch
;!    _putch->___awdiv
;!    _i2c_eeprom_read->_i2c_write
;!    _display_main_menu->_clcd_print
;!    _clcd_print->_clcd_write
;!    _clear_log->_i2c_eeprom_write
;!    _i2c_eeprom_write->_i2c_write
;!    _i2c_write->_decimal_to_bcd
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 2     2      0   10072
;!                                             72 COMRAM     2     2      0
;!                         _clcd_print
;!                          _clear_log
;!                  _display_main_menu
;!                       _download_log
;!                        _init_config
;!                           _set_time
;!                     _view_dashboard
;!                           _view_log
;! ---------------------------------------------------------------------------------
;! (1) _view_log                                            48    48      0    1873
;!                                             14 COMRAM    48    48      0
;!                            ___awdiv
;!                            ___awmod
;!                         _clcd_print
;!                    _get_event_count
;!                    _i2c_eeprom_read
;!                    _old_event_index
;!                           _read_mkp
;! ---------------------------------------------------------------------------------
;! (1) _view_dashboard                                      47    47      0    2686
;!                                             25 COMRAM    47    47      0
;!                            ___awdiv
;!                            ___awmod
;!                            ___lldiv
;!                             ___lmul
;!                         _clcd_print
;!                        _event_store
;!                           _read_adc
;!                           _read_mkp
;!                           _rtc_read
;! ---------------------------------------------------------------------------------
;! (2) _read_adc                                             7     5      2      52
;!                                              0 COMRAM     7     5      2
;! ---------------------------------------------------------------------------------
;! (2) _event_store                                          1     1      0     205
;!                                             15 COMRAM     1     1      0
;!                   _i2c_eeprom_write
;! ---------------------------------------------------------------------------------
;! (2) ___lmul                                              12     4      8      94
;!                                              0 COMRAM    12     4      8
;! ---------------------------------------------------------------------------------
;! (2) ___lldiv                                             13     5      8     164
;!                                             12 COMRAM    13     5      8
;!                             ___lmul (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _set_time                                            11    11      0    2990
;!                                             22 COMRAM    11    11      0
;!                            ___awdiv
;!                            ___awmod
;!                         _clcd_print
;!                         _clcd_putch
;!                           _read_mkp
;!                           _rtc_read
;!                     _write_time_rtc
;! ---------------------------------------------------------------------------------
;! (2) _write_time_rtc                                       1     0      1     818
;!                                             12 COMRAM     1     0      1
;!                     _decimal_to_bcd
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (3) _decimal_to_bcd                                       3     3      0     722
;!                                              8 COMRAM     3     3      0
;!                            ___awdiv
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (2) _rtc_read                                             9     8      1     569
;!                                             13 COMRAM     9     8      1
;!                     _bcd_to_decimal
;!                            _i2c_ack
;!                         _i2c_no_ack
;!                           _i2c_read
;!                      _i2c_rep_start
;!                          _i2c_start
;!                           _i2c_stop
;!                    _rtc_write_check
;! ---------------------------------------------------------------------------------
;! (3) _rtc_write_check                                      1     1      0      58
;!                                             12 COMRAM     1     1      0
;!                        _i2c_is_nack
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (3) _i2c_ack                                              0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (3) _bcd_to_decimal                                       2     2      0      58
;!                                              0 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _read_mkp                                             1     1      0      58
;!                                              0 COMRAM     1     1      0
;!                           _scan_key
;! ---------------------------------------------------------------------------------
;! (2) _clcd_putch                                           2     1      1     121
;!                                              8 COMRAM     2     1      1
;!                            ___awdiv (ARG)
;!                            ___awmod (ARG)
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (1) _init_config                                          7     7      0     539
;!                           _init_adc
;!                          _init_clcd
;!                     _init_event_log
;!                           _init_i2c
;!                           _init_mkp
;!                           _init_rtc
;!                          _init_uart
;! ---------------------------------------------------------------------------------
;! (2) _init_uart                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_rtc                                             1     1      0     256
;!                                             14 COMRAM     1     1      0
;!                       _rtc_read_reg
;!                      _rtc_write_reg
;! ---------------------------------------------------------------------------------
;! (3) _rtc_write_reg                                        2     1      1      83
;!                                             12 COMRAM     2     1      1
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (3) _rtc_read_reg                                         2     2      0     104
;!                                             12 COMRAM     2     2      0
;!                         _i2c_no_ack
;!                           _i2c_read
;!                      _i2c_rep_start
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (4) _i2c_no_ack                                           0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (2) _init_mkp                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_i2c                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_event_log                                       1     1      0     221
;!                                             15 COMRAM     1     1      0
;!                    _i2c_eeprom_read
;!                   _i2c_eeprom_write
;! ---------------------------------------------------------------------------------
;! (2) _init_clcd                                            1     1      0      62
;!                                              2 COMRAM     1     1      0
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (2) _init_adc                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _download_log                                         9     9      0    1347
;!                                             14 COMRAM     9     9      0
;!                            ___awdiv
;!                            ___awmod
;!                    _get_event_count
;!                    _i2c_eeprom_read
;!                    _old_event_index
;!                              _putch
;!                               _puts
;! ---------------------------------------------------------------------------------
;! (2) _puts                                                 2     0      2      78
;!                                              9 COMRAM     2     0      2
;!                              _putch
;! ---------------------------------------------------------------------------------
;! (3) _putch                                                1     1      0      29
;!                                              8 COMRAM     1     1      0
;!                            ___awdiv (ARG)
;!                            ___awmod (ARG)
;! ---------------------------------------------------------------------------------
;! (2) _old_event_index                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _i2c_eeprom_read                                      2     2      0     104
;!                                             12 COMRAM     2     2      0
;!                           _i2c_read
;!                      _i2c_rep_start
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (4) _i2c_rep_start                                        0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (4) _i2c_read                                             1     1      0      23
;!                                              0 COMRAM     1     1      0
;!                        _i2c_rx_mode
;! ---------------------------------------------------------------------------------
;! (5) _i2c_rx_mode                                          0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (2) _get_event_count                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (4) ___awmod                                              6     2      4     332
;!                                              0 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (4) ___awdiv                                              8     4      4     332
;!                                              0 COMRAM     8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _display_main_menu                                    4     4      0     372
;!                                              5 COMRAM     4     4      0
;!                         _clcd_print
;!                           _scan_key
;! ---------------------------------------------------------------------------------
;! (3) _scan_key                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _clcd_print                                           3     0      3     171
;!                                              2 COMRAM     3     0      3
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (3) _clcd_write                                           2     1      1      62
;!                                              0 COMRAM     2     1      1
;! ---------------------------------------------------------------------------------
;! (1) _clear_log                                            0     0      0      94
;!                   _i2c_eeprom_write
;! ---------------------------------------------------------------------------------
;! (3) _i2c_eeprom_write                                     3     2      1      94
;!                                             12 COMRAM     3     2      1
;!                        _i2c_is_nack
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (4) _i2c_write                                            1     1      0      29
;!                                             11 COMRAM     1     1      0
;!                     _decimal_to_bcd (ARG)
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (4) _i2c_stop                                             0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (4) _i2c_start                                            0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (6) _i2c_idle                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (4) _i2c_is_nack                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _clcd_print
;!     _clcd_write
;!   _clear_log
;!     _i2c_eeprom_write
;!       _i2c_is_nack
;!       _i2c_start
;!         _i2c_idle
;!       _i2c_stop
;!         _i2c_idle
;!       _i2c_write
;!         _decimal_to_bcd (ARG)
;!           ___awdiv
;!           ___awmod
;!         _i2c_idle (ARG)
;!   _display_main_menu
;!     _clcd_print
;!     _scan_key
;!   _download_log
;!     ___awdiv
;!     ___awmod
;!     _get_event_count
;!     _i2c_eeprom_read
;!       _i2c_read
;!         _i2c_rx_mode
;!           _i2c_idle
;!       _i2c_rep_start
;!         _i2c_idle
;!       _i2c_start
;!       _i2c_stop
;!       _i2c_write
;!     _old_event_index
;!     _putch
;!       ___awdiv (ARG)
;!       ___awmod (ARG)
;!     _puts
;!       _putch
;!   _init_config
;!     _init_adc
;!     _init_clcd
;!       _clcd_write
;!     _init_event_log
;!       _i2c_eeprom_read
;!       _i2c_eeprom_write
;!     _init_i2c
;!     _init_mkp
;!     _init_rtc
;!       _rtc_read_reg
;!         _i2c_no_ack
;!           _i2c_idle
;!         _i2c_read
;!         _i2c_rep_start
;!         _i2c_start
;!         _i2c_stop
;!         _i2c_write
;!       _rtc_write_reg
;!         _i2c_start
;!         _i2c_stop
;!         _i2c_write
;!     _init_uart
;!   _set_time
;!     ___awdiv
;!     ___awmod
;!     _clcd_print
;!     _clcd_putch
;!       ___awdiv (ARG)
;!       ___awmod (ARG)
;!       _clcd_write (ARG)
;!     _read_mkp
;!       _scan_key
;!     _rtc_read
;!       _bcd_to_decimal
;!       _i2c_ack
;!         _i2c_idle
;!       _i2c_no_ack
;!       _i2c_read
;!       _i2c_rep_start
;!       _i2c_start
;!       _i2c_stop
;!       _rtc_write_check
;!         _i2c_is_nack
;!         _i2c_write
;!     _write_time_rtc
;!       _decimal_to_bcd
;!       _i2c_start
;!       _i2c_stop
;!       _i2c_write
;!   _view_dashboard
;!     ___awdiv
;!     ___awmod
;!     ___lldiv
;!       ___lmul (ARG)
;!     ___lmul
;!     _clcd_print
;!     _event_store
;!       _i2c_eeprom_write
;!     _read_adc
;!     _read_mkp
;!     _rtc_read
;!   _view_log
;!     ___awdiv
;!     ___awmod
;!     _clcd_print
;!     _get_event_count
;!     _i2c_eeprom_read
;!     _old_event_index
;!     _read_mkp
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BIGRAM            1535      0       0      0.0%
;!BITBIGSFRlll       641      0       0      0.0%
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
;!BITBANK0           160      0       0      0.0%
;!BANK0              160      0      64     40.0%
;!BITCOMRAM           95      0       0      0.0%
;!COMRAM              95     74      93     97.9%
;!BITBIGSFRh          82      0       0      0.0%
;!BITBIGSFRllh        28      0       0      0.0%
;!BITBIGSFRlh         14      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0     157      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 41 in file "src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
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
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_clcd_print
;;		_clear_log
;;		_display_main_menu
;;		_download_log
;;		_init_config
;;		_set_time
;;		_view_dashboard
;;		_view_log
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"src/main.c"
	line	41
global __ptext0
__ptext0:
psect	text0
	file	"src/main.c"
	line	41
	
_main:
;incstack = 0
	callstack 26
	line	42
	
l3545:
	call	_init_config	;wreg free
	goto	l3569
	line	50
	
l3547:
	call	_view_dashboard	;wreg free
	line	51
	goto	l3569
	line	55
	
l3549:
	call	_display_main_menu	;wreg free
	line	56
	goto	l3569
	line	60
	
l3551:
	call	_view_log	;wreg free
	line	61
	goto	l3569
	line	65
	
l3553:
	call	_download_log	;wreg free
	line	66
	goto	l3569
	line	70
	
l3555:
	call	_clear_log	;wreg free
	line	72
	
l3557:
		movlw	low(STR_10)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_10)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	73
	
l3559:
		movlw	low(STR_11)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_11)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	75
	
l3561:
	asmopt push
asmopt off
movlw  51
movwf	(??_main+0+1)^00h,c
movlw	187
movwf	(??_main+0)^00h,c
	movlw	224
u2517:
decfsz	wreg,f
	bra	u2517
	decfsz	(??_main+0)^00h,c,f
	bra	u2517
	decfsz	(??_main+0+1)^00h,c,f
	bra	u2517
asmopt pop

	line	76
	
l3563:
	movlw	low(01h)
	movwf	((c:_state))^00h,c
	line	77
	goto	l3569
	line	81
	
l3565:
	call	_set_time	;wreg free
	line	47
	
l3569:
	movf	((c:_state))^00h,c,w
	movwf	(??_main+0)^00h,c
	clrf	(??_main+0+1)^00h,c

	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_main+0+1^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l3605
	goto	l3569
	
l3605:
; Switch size 1, requested type "simple"
; Number of cases is 6, Range of values is 0 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
;	Chosen strategy is simple_byte

	movf ??_main+0^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l3547
	xorlw	1^0	; case 1
	skipnz
	goto	l3549
	xorlw	2^1	; case 2
	skipnz
	goto	l3551
	xorlw	3^2	; case 3
	skipnz
	goto	l3565
	xorlw	4^3	; case 4
	skipnz
	goto	l3553
	xorlw	5^4	; case 5
	skipnz
	goto	l3555
	goto	l3569

	global	start
	goto	start
	callstack 0
	line	85
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_view_log

;; *************** function _view_log *****************
;; Defined at:
;;		line 22 in file "src/view_log.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  press           1   52[COMRAM] unsigned char 
;;  line2          16   35[COMRAM] unsigned char [16]
;;  line1          16   19[COMRAM] unsigned char [16]
;;  address         1   61[COMRAM] unsigned char 
;;  event_index     1   60[COMRAM] unsigned char 
;;  key             1   59[COMRAM] unsigned char 
;;  gear            1   58[COMRAM] unsigned char 
;;  count           1   57[COMRAM] unsigned char 
;;  speed           1   56[COMRAM] unsigned char 
;;  sec             1   55[COMRAM] unsigned char 
;;  min             1   54[COMRAM] unsigned char 
;;  hour            1   53[COMRAM] unsigned char 
;;  start_index     1   51[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:        43       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0
;;      Totals:        48       0       0       0       0       0       0
;;Total ram usage:       48 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_clcd_print
;;		_get_event_count
;;		_i2c_eeprom_read
;;		_old_event_index
;;		_read_mkp
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	file	"src/view_log.c"
	line	22
global __ptext1
__ptext1:
psect	text1
	file	"src/view_log.c"
	line	22
	
_view_log:
;incstack = 0
	callstack 29
	line	35
	
l3433:
	lfsr	2,(view_log@F10533)
	lfsr	1,(view_log@line1)
	movlw	16-1
u2381:
	movff	plusw2,plusw1
	decf	wreg
	bc	u2381

	line	36
	lfsr	2,(view_log@F10535)
	lfsr	1,(view_log@line2)
	movlw	16-1
u2391:
	movff	plusw2,plusw1
	decf	wreg
	bc	u2391

	line	38
	
l3435:
	call	_get_event_count	;wreg free
	movwf	((c:view_log@count))^00h,c
	line	39
	
l3437:
	movf	((c:view_log@count))^00h,c,w
	btfss	status,2
	goto	u2401
	goto	u2400
u2401:
	goto	l3449
u2400:
	line	41
	
l3439:
		movlw	low(STR_20)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_20)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	42
		movlw	low(STR_21)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_21)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	44
	
l3441:
	movlw	(01h)&0ffh
	
	call	_read_mkp
	movwf	((c:view_log@key))^00h,c
	line	45
	
l3443:
		movlw	9
	xorwf	((c:view_log@key))^00h,c,w
	btfss	status,2
	goto	u2411
	goto	u2410

u2411:
	goto	l3441
u2410:
	line	46
	
l3445:
	movlw	low(01h)
	movwf	((c:_state))^00h,c
	goto	l625
	line	52
	
l3449:
	call	_old_event_index	;wreg free
	movwf	((c:view_log@start_index))^00h,c
	line	53
	
l3451:
	decf	((c:view_log@count))^00h,c,w
	movwf	((c:view_log@event_index))^00h,c
	line	56
	
l3453:
	movf	((c:view_log@start_index))^00h,c,w
	addwf	((c:view_log@event_index))^00h,c,w
	movwf	((c:___awmod@dividend))^00h,c
	clrf	1+((c:___awmod@dividend))^00h,c
	rlcf	1+((c:___awmod@dividend))^00h,c
	
	clrf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	mullw	05h
	movf	(prodl)^0f00h,c,w
	addlw	low(05h)
	movwf	((c:view_log@address))^00h,c
	line	59
	
l3455:
	movf	((c:view_log@address))^00h,c,w
	
	call	_i2c_eeprom_read
	movwf	((c:view_log@hour))^00h,c
	line	60
	
l3457:
	incf	((c:view_log@address))^00h,c,w
	
	call	_i2c_eeprom_read
	movwf	((c:view_log@min))^00h,c
	line	61
	
l3459:
	movf	((c:view_log@address))^00h,c,w
	addlw	low(02h)
	
	call	_i2c_eeprom_read
	movwf	((c:view_log@sec))^00h,c
	line	62
	
l3461:
	movf	((c:view_log@address))^00h,c,w
	addlw	low(03h)
	
	call	_i2c_eeprom_read
	movwf	((c:view_log@gear))^00h,c
	line	63
	
l3463:
	movf	((c:view_log@address))^00h,c,w
	addlw	low(04h)
	
	call	_i2c_eeprom_read
	movwf	((c:view_log@speed))^00h,c
	line	65
	
l3465:
	movff	(c:view_log@hour),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1))^00h,c
	clrf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	addlw	low(030h)
	movwf	((c:view_log@line2))^00h,c
	line	66
	
l3467:
	movff	(c:view_log@hour),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1))^00h,c
	clrf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(030h)
	movwf	(0+((c:view_log@line2)+01h))^00h,c
	line	67
	
l3469:
	movff	(c:view_log@min),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1))^00h,c
	clrf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	addlw	low(030h)
	movwf	(0+((c:view_log@line2)+03h))^00h,c
	line	68
	
l3471:
	movff	(c:view_log@min),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1))^00h,c
	clrf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(030h)
	movwf	(0+((c:view_log@line2)+04h))^00h,c
	line	69
	
l3473:
	movff	(c:view_log@sec),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1))^00h,c
	clrf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	addlw	low(030h)
	movwf	(0+((c:view_log@line2)+06h))^00h,c
	line	70
	
l3475:
	movff	(c:view_log@sec),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1))^00h,c
	clrf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(030h)
	movwf	(0+((c:view_log@line2)+07h))^00h,c
	line	72
	
l3477:
		movlw	09h-0
	cpfslt	((c:view_log@gear))^00h,c
	goto	u2421
	goto	u2420

u2421:
	goto	l3481
u2420:
	line	74
	
l3479:
	movf	((c:view_log@gear))^00h,c,w
	mullw	03h
	movlw	low((_ev))
	addwf	(prodl)^0f00h,c,w
	movwf	tblptrl
	movlw	high((_ev))
	addwfc	(prodh)^0f00h,c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd	*
	
	movff	tablat,0+((c:view_log@line2)+09h)
	line	75
	movf	((c:view_log@gear))^00h,c,w
	mullw	03h
	movlw	01h
	addwf	(prodl)^0f00h,c
	movlw	0
	addwfc	(prodh)^0f00h,c
	movlw	low((_ev))
	addwf	(prodl)^0f00h,c,w
	movwf	tblptrl
	movlw	high((_ev))
	addwfc	(prodh)^0f00h,c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd	*
	
	movff	tablat,0+((c:view_log@line2)+0Ah)
	line	78
	
l3481:
	movff	(c:view_log@speed),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1))^00h,c
	clrf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	addlw	low(030h)
	movwf	(0+((c:view_log@line2)+0Ch))^00h,c
	line	79
	
l3483:
	movff	(c:view_log@speed),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1))^00h,c
	clrf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(030h)
	movwf	(0+((c:view_log@line2)+0Dh))^00h,c
	line	81
	
l3485:
		movlw	low(view_log@line1)
	movwf	((c:clcd_print@data))^00h,c
	clrf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	82
	
l3487:
		movlw	low(view_log@line2)
	movwf	((c:clcd_print@data))^00h,c
	clrf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	84
	
l3489:
	movlw	(01h)&0ffh
	
	call	_read_mkp
	movwf	((c:view_log@key))^00h,c
	line	85
	
l3491:
		movlw	8
	xorwf	((c:view_log@key))^00h,c,w
	btfss	status,2
	goto	u2431
	goto	u2430

u2431:
	goto	l3499
u2430:
	line	87
	
l3493:
	asmopt push
asmopt off
movlw	65
movwf	(??_view_log+0)^00h,c
	movlw	238
u2527:
decfsz	wreg,f
	bra	u2527
	decfsz	(??_view_log+0)^00h,c,f
	bra	u2527
	nop2
asmopt pop

	line	88
	
l3495:
	movf	((c:view_log@event_index))^00h,c,w
	btfsc	status,2
	goto	u2441
	goto	u2440
u2441:
	goto	l3453
u2440:
	line	90
	
l3497:
	decf	((c:view_log@event_index))^00h,c
	goto	l3453
	line	92
	
l3499:
		movlw	9
	xorwf	((c:view_log@key))^00h,c,w
	btfss	status,2
	goto	u2451
	goto	u2450

u2451:
	goto	l3453
u2450:
	line	94
	
l3501:
	clrf	((c:view_log@press))^00h,c
	line	95
	
l3503:
	asmopt push
asmopt off
movlw	65
movwf	(??_view_log+0)^00h,c
	movlw	238
u2537:
decfsz	wreg,f
	bra	u2537
	decfsz	(??_view_log+0)^00h,c,f
	bra	u2537
	nop2
asmopt pop

	line	96
	
l3505:
	movlw	(0)&0ffh
	
	call	_read_mkp
	xorlw	09h
	btfss	status,2
	goto	u2461
	goto	u2460
u2461:
	goto	l3453
u2460:
	goto	l3517
	line	99
	
l3509:
	asmopt push
asmopt off
movlw	65
movwf	(??_view_log+0)^00h,c
	movlw	238
u2547:
decfsz	wreg,f
	bra	u2547
	decfsz	(??_view_log+0)^00h,c,f
	bra	u2547
	nop2
asmopt pop

	line	100
	
l3511:
	incf	((c:view_log@press))^00h,c
	line	101
		movlw	064h-1
	cpfsgt	((c:view_log@press))^00h,c
	goto	u2471
	goto	u2470

u2471:
	goto	l3517
u2470:
	goto	l3445
	line	97
	
l3517:
	movlw	(0)&0ffh
	
	call	_read_mkp
	xorlw	09h
	btfsc	status,2
	goto	u2481
	goto	u2480
u2481:
	goto	l3509
u2480:
	line	107
	
l3519:
	movlw	low(-1)
	addwf	((c:view_log@count))^00h,c,w
	movwf	(??_view_log+0)^00h,c
	clrf	1+(??_view_log+0)^00h,c
	movlw	high(-1)
	addwfc	1+(??_view_log+0)^00h,c
	movf	((c:view_log@event_index))^00h,c,w
	movwf	(??_view_log+2)^00h,c
	clrf	(??_view_log+2+1)^00h,c

		movf	(??_view_log+0)^00h,c,w
	subwf	(??_view_log+2)^00h,c,w
	movf	(??_view_log+2+1)^00h,c,w
	xorlw	80h
	movwf	(??_view_log+4)^00h,c
	movf	(??_view_log+0+1)^00h,c,w
	xorlw	80h
	subwfb	(??_view_log+4)^00h,c,w
	btfsc	status,0
	goto	u2491
	goto	u2490

u2491:
	goto	l3453
u2490:
	line	108
	
l3521:
	incf	((c:view_log@event_index))^00h,c
	goto	l3453
	line	113
	
l625:
	return	;funcret
	callstack 0
GLOBAL	__end_of_view_log
	__end_of_view_log:
	signat	_view_log,89
	global	_view_dashboard

;; *************** function _view_dashboard *****************
;; Defined at:
;;		line 29 in file "src/black_box.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2   60[COMRAM] unsigned int 
;;  line2          16   42[COMRAM] unsigned char [16]
;;  line1          16   26[COMRAM] unsigned char [16]
;;  time            7   65[COMRAM] struct .
;;  adc_value       2   58[COMRAM] unsigned short 
;;  key             1   64[COMRAM] unsigned char 
;;  speed           1   63[COMRAM] unsigned char 
;;  flag            1   62[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:        46       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:        47       0       0       0       0       0       0
;;Total ram usage:       47 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___awdiv
;;		___awmod
;;		___lldiv
;;		___lmul
;;		_clcd_print
;;		_event_store
;;		_read_adc
;;		_read_mkp
;;		_rtc_read
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=0
	file	"src/black_box.c"
	line	29
global __ptext2
__ptext2:
psect	text2
	file	"src/black_box.c"
	line	29
	
_view_dashboard:
;incstack = 0
	callstack 28
	line	36
	
l3119:
	lfsr	2,(view_dashboard@F10544)
	lfsr	1,(view_dashboard@line1)
	movlw	16-1
u1881:
	movff	plusw2,plusw1
	decf	wreg
	bc	u1881

	line	37
	lfsr	2,(view_dashboard@F10546)
	lfsr	1,(view_dashboard@line2)
	movlw	16-1
u1891:
	movff	plusw2,plusw1
	decf	wreg
	bc	u1891

	line	39
	
l3121:
		movlw	low(view_dashboard@time)
	movwf	((c:rtc_read@time))^00h,c

	call	_rtc_read	;wreg free
	movwf	((c:view_dashboard@flag))^00h,c
	line	41
	
l3123:
	movf	((c:view_dashboard@flag))^00h,c,w
	btfsc	status,2
	goto	u1901
	goto	u1900
u1901:
	goto	l88
u1900:
	line	42
	
l3125:
	movff	0+((c:view_dashboard@time)+02h),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1))^00h,c
	clrf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	addlw	low(030h)
	movwf	((c:view_dashboard@line2))^00h,c
	line	43
	movff	0+((c:view_dashboard@time)+02h),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1))^00h,c
	clrf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(030h)
	movwf	(0+((c:view_dashboard@line2)+01h))^00h,c
	line	44
	movff	0+((c:view_dashboard@time)+01h),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1))^00h,c
	clrf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	addlw	low(030h)
	movwf	(0+((c:view_dashboard@line2)+03h))^00h,c
	line	45
	movff	0+((c:view_dashboard@time)+01h),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1))^00h,c
	clrf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(030h)
	movwf	(0+((c:view_dashboard@line2)+04h))^00h,c
	line	46
	movff	(c:view_dashboard@time),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1))^00h,c
	clrf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	addlw	low(030h)
	movwf	(0+((c:view_dashboard@line2)+06h))^00h,c
	line	47
	movff	(c:view_dashboard@time),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1))^00h,c
	clrf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(030h)
	movwf	(0+((c:view_dashboard@line2)+07h))^00h,c
	line	48
	
l88:
	line	50
	movlw	(04h)&0ffh
	
	call	_read_adc
	movff	0+?_read_adc,(c:view_dashboard@adc_value)
	movff	1+?_read_adc,(c:view_dashboard@adc_value+1)
	line	51
	movff	(c:view_dashboard@adc_value),(c:___lmul@multiplier)
	movff	(c:view_dashboard@adc_value+1),(c:___lmul@multiplier+1)
	clrf	((c:___lmul@multiplier+2))^00h,c
	clrf	((c:___lmul@multiplier+3))^00h,c
	movlw	low(063h)
	movwf	((c:___lmul@multiplicand))^00h,c
	movlw	high(063h)
	movwf	((c:___lmul@multiplicand+1))^00h,c
	movlw	low highword(063h)
	movwf	((c:___lmul@multiplicand+2))^00h,c
	movlw	high highword(063h)
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
	movf	(0+?___lldiv)^00h,c,w
	movwf	((c:view_dashboard@speed))^00h,c
	line	53
	movlw	(01h)&0ffh
	
	call	_read_mkp
	movwf	((c:view_dashboard@key))^00h,c
	line	55
	
l3127:
		movlw	8
	xorwf	((c:view_dashboard@key))^00h,c,w
	btfss	status,2
	goto	u1911
	goto	u1910

u1911:
	goto	l3141
u1910:
	line	57
	
l3129:
	clrf	((c:view_dashboard@count+1))^00h,c
	movlw	low(0)
	movwf	((c:view_dashboard@count))^00h,c
	line	58
	goto	l3139
	line	60
	
l3131:
	asmopt push
asmopt off
movlw	65
movwf	(??_view_dashboard+0)^00h,c
	movlw	238
u2557:
decfsz	wreg,f
	bra	u2557
	decfsz	(??_view_dashboard+0)^00h,c,f
	bra	u2557
	nop2
asmopt pop

	line	61
	
l3133:
	infsnz	((c:view_dashboard@count))^00h,c
	incf	((c:view_dashboard@count+1))^00h,c
	line	62
		movf	((c:view_dashboard@count+1))^00h,c,w
	bnz	u1920
	movlw	100
	subwf	 ((c:view_dashboard@count))^00h,c,w
	btfss	status,0
	goto	u1921
	goto	u1920

u1921:
	goto	l3139
u1920:
	line	64
	
l3135:
	movlw	low(01h)
	movwf	((c:_state))^00h,c
	goto	l93
	line	58
	
l3139:
	movlw	(0)&0ffh
	
	call	_read_mkp
	xorlw	08h
	btfsc	status,2
	goto	u1931
	goto	u1930
u1931:
	goto	l3131
u1930:
	line	71
	
l3141:
		movlw	8
	xorwf	((c:_gear))^00h,c,w
	btfsc	status,2
	goto	u1941
	goto	u1940

u1941:
	goto	l3159
u1940:
	line	72
	
l3143:
		decf	((c:view_dashboard@key))^00h,c,w
	btfss	status,2
	goto	u1951
	goto	u1950

u1951:
	goto	l3149
u1950:
	
l3145:
		movlw	07h-0
	cpfslt	((c:_gear))^00h,c
	goto	u1961
	goto	u1960

u1961:
	goto	l3149
u1960:
	line	74
	
l3147:
	incf	((c:_gear))^00h,c
	line	75
	goto	l3159
	
l3149:
		movlw	2
	xorwf	((c:view_dashboard@key))^00h,c,w
	btfss	status,2
	goto	u1971
	goto	u1970

u1971:
	goto	l3155
u1970:
	
l3151:
	movf	((c:_gear))^00h,c,w
	btfsc	status,2
	goto	u1981
	goto	u1980
u1981:
	goto	l3155
u1980:
	line	76
	
l3153:
	decf	((c:_gear))^00h,c
	line	77
	goto	l3159
	
l3155:
		movlw	3
	xorwf	((c:view_dashboard@key))^00h,c,w
	btfss	status,2
	goto	u1991
	goto	u1990

u1991:
	goto	l3159
u1990:
	line	79
	
l3157:
	movlw	low(08h)
	movwf	((c:_gear))^00h,c
	line	83
	
l3159:
	movf	((c:_gear))^00h,c,w
	mullw	03h
	movlw	low((_ev))
	addwf	(prodl)^0f00h,c,w
	movwf	tblptrl
	movlw	high((_ev))
	addwfc	(prodh)^0f00h,c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd	*
	
	movff	tablat,0+((c:view_dashboard@line2)+09h)
	line	84
	
l3161:
	movf	((c:_gear))^00h,c,w
	mullw	03h
	movlw	01h
	addwf	(prodl)^0f00h,c
	movlw	0
	addwfc	(prodh)^0f00h,c
	movlw	low((_ev))
	addwf	(prodl)^0f00h,c,w
	movwf	tblptrl
	movlw	high((_ev))
	addwfc	(prodh)^0f00h,c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd	*
	
	movff	tablat,0+((c:view_dashboard@line2)+0Ah)
	line	86
	
l3163:
	movff	(c:view_dashboard@speed),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1))^00h,c
	clrf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	addlw	low(030h)
	movwf	(0+((c:view_dashboard@line2)+0Ch))^00h,c
	line	87
	
l3165:
	movff	(c:view_dashboard@speed),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1))^00h,c
	clrf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(030h)
	movwf	(0+((c:view_dashboard@line2)+0Dh))^00h,c
	line	90
	
l3167:
		movlw	low(view_dashboard@line1)
	movwf	((c:clcd_print@data))^00h,c
	clrf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	91
	
l3169:
		movlw	low(view_dashboard@line2)
	movwf	((c:clcd_print@data))^00h,c
	clrf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	95
	movf	((c:view_dashboard@flag))^00h,c,w
	btfsc	status,2
	goto	u2001
	goto	u2000
u2001:
	goto	l93
u2000:
	line	96
	
l3171:
	movf	((c:_first_read))^00h,c,w
	btfsc	status,2
	goto	u2011
	goto	u2010
u2011:
	goto	l3175
u2010:
	line	98
	
l3173:
	movff	(c:_gear),(c:_prev_gear)
	line	99
	clrf	((c:_first_read))^00h,c
	line	100
	goto	l93
	
l3175:
	movf	((c:_prev_gear))^00h,c,w
xorwf	((c:_gear))^00h,c,w
	btfsc	status,2
	goto	u2021
	goto	u2020

u2021:
	goto	l93
u2020:
	line	102
	
l3177:
	lfsr	2,(view_dashboard@time)
	lfsr	1,(_event_time)
	movlw	7-1
u2031:
	movff	plusw2,plusw1
	decf	wreg
	bc	u2031

	line	103
	
l3179:
	movff	(c:_gear),(c:_event_gear)
	line	104
	
l3181:
	movff	(c:view_dashboard@speed),(c:_event_speed)
	line	106
	
l3183:
	call	_event_store	;wreg free
	line	108
	
l3185:
	movff	(c:_gear),(c:_prev_gear)
	line	111
	
l93:
	return	;funcret
	callstack 0
GLOBAL	__end_of_view_dashboard
	__end_of_view_dashboard:
	signat	_view_dashboard,89
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
;;		_view_dashboard
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,group=0
	file	"src/adc.c"
	line	40
global __ptext3
__ptext3:
psect	text3
	file	"src/adc.c"
	line	40
	
_read_adc:
;incstack = 0
	callstack 29
	line	44
	movwf	((c:read_adc@channel))^00h,c
	
l2835:
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
	
l2837:
	bsf	c:(32273/8),(32273)&7	;volatile
	line	49
	
l36:
	line	48
	btfsc	c:(32273/8),(32273)&7	;volatile
	goto	u1621
	goto	u1620
u1621:
	goto	l36
u1620:
	line	50
	
l2839:
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
	
l2841:
	movff	(c:read_adc@reg_val),(c:?_read_adc)
	movff	(c:read_adc@reg_val+1),(c:?_read_adc+1)
	line	53
	
l39:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_adc
	__end_of_read_adc:
	signat	_read_adc,4218
	global	_event_store

;; *************** function _event_store *****************
;; Defined at:
;;		line 40 in file "src/event_store.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  address         1   15[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh, cstack
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
;;		_i2c_eeprom_write
;; This function is called by:
;;		_view_dashboard
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2,group=0
	file	"src/event_store.c"
	line	40
global __ptext4
__ptext4:
psect	text4
	file	"src/event_store.c"
	line	40
	
_event_store:
;incstack = 0
	callstack 28
	line	43
	
l2947:
	movf	((c:_write_index))^00h,c,w
	mullw	05h
	movf	(prodl)^0f00h,c,w
	addlw	low(05h)
	movwf	((c:event_store@address))^00h,c
	line	45
	
l2949:
	movff	0+((c:_event_time)+02h),(c:i2c_eeprom_write@data)
	movf	((c:event_store@address))^00h,c,w
	
	call	_i2c_eeprom_write
	line	46
	
l2951:
	movff	0+((c:_event_time)+01h),(c:i2c_eeprom_write@data)
	incf	((c:event_store@address))^00h,c,w
	
	call	_i2c_eeprom_write
	line	47
	
l2953:
	movff	(c:_event_time),(c:i2c_eeprom_write@data)
	movf	((c:event_store@address))^00h,c,w
	addlw	low(02h)
	
	call	_i2c_eeprom_write
	line	48
	
l2955:
	movff	(c:_event_gear),(c:i2c_eeprom_write@data)
	movf	((c:event_store@address))^00h,c,w
	addlw	low(03h)
	
	call	_i2c_eeprom_write
	line	49
	
l2957:
	movff	(c:_event_speed),(c:i2c_eeprom_write@data)
	movf	((c:event_store@address))^00h,c,w
	addlw	low(04h)
	
	call	_i2c_eeprom_write
	line	51
	
l2959:
	incf	((c:_write_index))^00h,c
	line	53
	
l2961:
		movlw	0Ah-1
	cpfsgt	((c:_write_index))^00h,c
	goto	u1761
	goto	u1760

u1761:
	goto	l2965
u1760:
	line	54
	
l2963:
	clrf	((c:_write_index))^00h,c
	line	56
	
l2965:
		movlw	0Ah-0
	cpfslt	((c:_event_count))^00h,c
	goto	u1771
	goto	u1770

u1771:
	goto	l2969
u1770:
	line	58
	
l2967:
	incf	((c:_event_count))^00h,c
	line	61
	
l2969:
	movff	(c:_write_index),(c:i2c_eeprom_write@data)
	movlw	(03h)&0ffh
	
	call	_i2c_eeprom_write
	line	62
	
l2971:
	movff	(c:_event_count),(c:i2c_eeprom_write@data)
	movlw	(04h)&0ffh
	
	call	_i2c_eeprom_write
	line	63
	
l230:
	return	;funcret
	callstack 0
GLOBAL	__end_of_event_store
	__end_of_event_store:
	signat	_event_store,89
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
;;		_view_dashboard
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v4.00/pic/sources/c99/common/Umul32.c"
	line	15
global __ptext5
__ptext5:
psect	text5
	file	"/opt/microchip/xc8/v4.00/pic/sources/c99/common/Umul32.c"
	line	15
	
___lmul:
;incstack = 0
	callstack 29
	line	119
	
l3087:
	movlw	low(0)
	movwf	((c:___lmul@product))^00h,c
	movlw	high(0)
	movwf	((c:___lmul@product+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___lmul@product+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___lmul@product+3))^00h,c
	line	121
	
l3089:
	
	btfss	((c:___lmul@multiplier))^00h,c,(0)&7
	goto	u1831
	goto	u1830
u1831:
	goto	l3093
u1830:
	line	122
	
l3091:
	movf	((c:___lmul@multiplicand))^00h,c,w
	addwf	((c:___lmul@product))^00h,c
	movf	((c:___lmul@multiplicand+1))^00h,c,w
	addwfc	((c:___lmul@product+1))^00h,c
	movf	((c:___lmul@multiplicand+2))^00h,c,w
	addwfc	((c:___lmul@product+2))^00h,c
	movf	((c:___lmul@multiplicand+3))^00h,c,w
	addwfc	((c:___lmul@product+3))^00h,c
	line	123
	
l3093:
	bcf	status,0
	rlcf	((c:___lmul@multiplicand))^00h,c
	rlcf	((c:___lmul@multiplicand+1))^00h,c
	rlcf	((c:___lmul@multiplicand+2))^00h,c
	rlcf	((c:___lmul@multiplicand+3))^00h,c
	line	124
	
l3095:
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
	goto	u1841
	goto	u1840

u1841:
	goto	l3089
u1840:
	
l655:
	line	128
	movff	(c:___lmul@product),(c:?___lmul)
	movff	(c:___lmul@product+1),(c:?___lmul+1)
	movff	(c:___lmul@product+2),(c:?___lmul+2)
	movff	(c:___lmul@product+3),(c:?___lmul+3)
	line	129
	
l656:
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
;;		_view_dashboard
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v4.00/pic/sources/c99/common/__lldiv.c"
	line	7
global __ptext6
__ptext6:
psect	text6
	file	"/opt/microchip/xc8/v4.00/pic/sources/c99/common/__lldiv.c"
	line	7
	
___lldiv:
;incstack = 0
	callstack 29
	line	13
	
l3097:
	movlw	low(0)
	movwf	((c:___lldiv@quotient))^00h,c
	movlw	high(0)
	movwf	((c:___lldiv@quotient+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___lldiv@quotient+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___lldiv@quotient+3))^00h,c
	line	14
	
l3099:
	movf	((c:___lldiv@divisor))^00h,c,w
iorwf	((c:___lldiv@divisor+1))^00h,c,w
iorwf	((c:___lldiv@divisor+2))^00h,c,w
iorwf	((c:___lldiv@divisor+3))^00h,c,w
	btfsc	status,2
	goto	u1851
	goto	u1850

u1851:
	goto	l671
u1850:
	line	15
	
l3101:
	movlw	low(01h)
	movwf	((c:___lldiv@counter))^00h,c
	line	16
	goto	l3105
	line	17
	
l3103:
	bcf	status,0
	rlcf	((c:___lldiv@divisor))^00h,c
	rlcf	((c:___lldiv@divisor+1))^00h,c
	rlcf	((c:___lldiv@divisor+2))^00h,c
	rlcf	((c:___lldiv@divisor+3))^00h,c
	line	18
	incf	((c:___lldiv@counter))^00h,c
	line	16
	
l3105:
	
	btfss	((c:___lldiv@divisor+3))^00h,c,(31)&7
	goto	u1861
	goto	u1860
u1861:
	goto	l3103
u1860:
	line	21
	
l3107:
	bcf	status,0
	rlcf	((c:___lldiv@quotient))^00h,c
	rlcf	((c:___lldiv@quotient+1))^00h,c
	rlcf	((c:___lldiv@quotient+2))^00h,c
	rlcf	((c:___lldiv@quotient+3))^00h,c
	line	22
	
l3109:
		movf	((c:___lldiv@divisor))^00h,c,w
	subwf	((c:___lldiv@dividend))^00h,c,w
	movf	((c:___lldiv@divisor+1))^00h,c,w
	subwfb	((c:___lldiv@dividend+1))^00h,c,w
	movf	((c:___lldiv@divisor+2))^00h,c,w
	subwfb	((c:___lldiv@dividend+2))^00h,c,w
	movf	((c:___lldiv@divisor+3))^00h,c,w
	subwfb	((c:___lldiv@dividend+3))^00h,c,w
	btfss	status,0
	goto	u1871
	goto	u1870

u1871:
	goto	l3115
u1870:
	line	23
	
l3111:
	movf	((c:___lldiv@divisor))^00h,c,w
	subwf	((c:___lldiv@dividend))^00h,c
	movf	((c:___lldiv@divisor+1))^00h,c,w
	subwfb	((c:___lldiv@dividend+1))^00h,c
	movf	((c:___lldiv@divisor+2))^00h,c,w
	subwfb	((c:___lldiv@dividend+2))^00h,c
	movf	((c:___lldiv@divisor+3))^00h,c,w
	subwfb	((c:___lldiv@dividend+3))^00h,c
	line	24
	
l3113:
	bsf	(0+(0/8)+(c:___lldiv@quotient))^00h,c,(0)&7
	line	26
	
l3115:
	bcf	status,0
	rrcf	((c:___lldiv@divisor+3))^00h,c
	rrcf	((c:___lldiv@divisor+2))^00h,c
	rrcf	((c:___lldiv@divisor+1))^00h,c
	rrcf	((c:___lldiv@divisor))^00h,c
	line	27
	
l3117:
	decfsz	((c:___lldiv@counter))^00h,c
	
	goto	l3107
	line	28
	
l671:
	line	29
	movff	(c:___lldiv@quotient),(c:?___lldiv)
	movff	(c:___lldiv@quotient+1),(c:?___lldiv+1)
	movff	(c:___lldiv@quotient+2),(c:?___lldiv+2)
	movff	(c:___lldiv@quotient+3),(c:?___lldiv+3)
	line	30
	
l678:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
	signat	___lldiv,8316
	global	_set_time

;; *************** function _set_time *****************
;; Defined at:
;;		line 181 in file "src/black_box.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  time            7   26[COMRAM] struct .
;;  field           1   25[COMRAM] unsigned char 
;;  key             1   24[COMRAM] unsigned char 
;;  press           1   23[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:        10       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:        11       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_clcd_print
;;		_clcd_putch
;;		_read_mkp
;;		_rtc_read
;;		_write_time_rtc
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2,group=0
	file	"src/black_box.c"
	line	181
global __ptext7
__ptext7:
psect	text7
	file	"src/black_box.c"
	line	181
	
_set_time:
;incstack = 0
	callstack 27
	line	184
	
l3263:
		movlw	low(set_time@time)
	movwf	((c:rtc_read@time))^00h,c

	call	_rtc_read	;wreg free
	line	186
	
l3265:
	clrf	((c:set_time@field))^00h,c
	line	189
	
l3267:
		movlw	low(STR_5)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_5)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	192
	
l3269:
	movf	((c:set_time@field))^00h,c,w
	btfss	status,2
	goto	u2071
	goto	u2070
u2071:
	goto	l3273
u2070:
	line	193
	
l3271:
		movlw	low(STR_6)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_6)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	195
	goto	l3281
	
l3273:
		decf	((c:set_time@field))^00h,c,w
	btfss	status,2
	goto	u2081
	goto	u2080

u2081:
	goto	l3277
u2080:
	line	196
	
l3275:
		movlw	low(STR_7)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_7)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	198
	goto	l3281
	
l3277:
		movlw	2
	xorwf	((c:set_time@field))^00h,c,w
	btfss	status,2
	goto	u2091
	goto	u2090

u2091:
	goto	l3281
u2090:
	line	199
	
l3279:
		movlw	low(STR_8)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_8)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	203
	
l3281:
	movlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	0+((c:set_time@time)+02h),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1))^00h,c
	clrf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	204
	
l3283:
	movlw	low(0C1h)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	0+((c:set_time@time)+02h),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1))^00h,c
	clrf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	205
	
l3285:
	movlw	low(0C2h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(03Ah)&0ffh
	
	call	_clcd_putch
	line	206
	
l3287:
	movlw	low(0C3h)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	0+((c:set_time@time)+01h),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1))^00h,c
	clrf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	207
	
l3289:
	movlw	low(0C4h)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	0+((c:set_time@time)+01h),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1))^00h,c
	clrf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	208
	
l3291:
	movlw	low(0C5h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(03Ah)&0ffh
	
	call	_clcd_putch
	line	209
	
l3293:
	movlw	low(0C6h)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	(c:set_time@time),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1))^00h,c
	clrf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	210
	
l3295:
	movlw	low(0C7h)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	(c:set_time@time),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1))^00h,c
	clrf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	211
		movlw	low(STR_9)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_9)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	213
	
l3297:
	movlw	(01h)&0ffh
	
	call	_read_mkp
	movwf	((c:set_time@key))^00h,c
	line	214
	
l3299:
		movlw	8
	xorwf	((c:set_time@key))^00h,c,w
	btfss	status,2
	goto	u2101
	goto	u2100

u2101:
	goto	l3325
u2100:
	line	216
	
l3301:
	movf	((c:set_time@field))^00h,c,w
	btfss	status,2
	goto	u2111
	goto	u2110
u2111:
	goto	l3309
u2110:
	line	217
	
l3303:
	incf	(0+((c:set_time@time)+02h))^00h,c
	line	218
	
l3305:
		movlw	018h-1
	cpfsgt	(0+((c:set_time@time)+02h))^00h,c
	goto	u2121
	goto	u2120

u2121:
	goto	l3269
u2120:
	line	220
	
l3307:
	clrf	(0+((c:set_time@time)+02h))^00h,c
	goto	l3269
	line	222
	
l3309:
		decf	((c:set_time@field))^00h,c,w
	btfss	status,2
	goto	u2131
	goto	u2130

u2131:
	goto	l3317
u2130:
	line	224
	
l3311:
	incf	(0+((c:set_time@time)+01h))^00h,c
	line	225
	
l3313:
		movlw	03Ch-1
	cpfsgt	(0+((c:set_time@time)+01h))^00h,c
	goto	u2141
	goto	u2140

u2141:
	goto	l3269
u2140:
	line	227
	
l3315:
	clrf	(0+((c:set_time@time)+01h))^00h,c
	goto	l3269
	line	229
	
l3317:
		movlw	2
	xorwf	((c:set_time@field))^00h,c,w
	btfss	status,2
	goto	u2151
	goto	u2150

u2151:
	goto	l3269
u2150:
	line	231
	
l3319:
	incf	((c:set_time@time))^00h,c
	line	232
	
l3321:
		movlw	03Ch-1
	cpfsgt	((c:set_time@time))^00h,c
	goto	u2161
	goto	u2160

u2161:
	goto	l3269
u2160:
	line	234
	
l3323:
	clrf	((c:set_time@time))^00h,c
	goto	l3269
	line	237
	
l3325:
		movlw	9
	xorwf	((c:set_time@key))^00h,c,w
	btfss	status,2
	goto	u2171
	goto	u2170

u2171:
	goto	l3269
u2170:
	line	239
	
l3327:
	clrf	((c:set_time@press))^00h,c
	line	240
	goto	l3339
	line	242
	
l3329:
	asmopt push
asmopt off
movlw	65
movwf	(??_set_time+0)^00h,c
	movlw	238
u2567:
decfsz	wreg,f
	bra	u2567
	decfsz	(??_set_time+0)^00h,c,f
	bra	u2567
	nop2
asmopt pop

	line	243
	
l3331:
	incf	((c:set_time@press))^00h,c
	line	244
		movlw	064h-1
	cpfsgt	((c:set_time@press))^00h,c
	goto	u2181
	goto	u2180

u2181:
	goto	l3339
u2180:
	line	246
	
l3333:
		movlw	low(set_time@time)
	movwf	((c:write_time_rtc@time))^00h,c

	call	_write_time_rtc	;wreg free
	line	247
	
l3335:
	movlw	low(01h)
	movwf	((c:_state))^00h,c
	goto	l136
	line	240
	
l3339:
	movlw	(0)&0ffh
	
	call	_read_mkp
	xorlw	09h
	btfsc	status,2
	goto	u2191
	goto	u2190
u2191:
	goto	l3329
u2190:
	line	251
	
l3341:
	incf	((c:set_time@field))^00h,c
	line	252
	
l3343:
		movlw	03h-1
	cpfsgt	((c:set_time@field))^00h,c
	goto	u2201
	goto	u2200

u2201:
	goto	l3269
u2200:
	line	254
	
l3345:
	clrf	((c:set_time@field))^00h,c
	goto	l3269
	line	258
	
l136:
	return	;funcret
	callstack 0
GLOBAL	__end_of_set_time
	__end_of_set_time:
	signat	_set_time,89
	global	_write_time_rtc

;; *************** function _write_time_rtc *****************
;; Defined at:
;;		line 57 in file "src/rtc.c"
;; Parameters:    Size  Location     Type
;;  time            1   12[COMRAM] PTR struct .
;;		 -> set_time@time(7), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_decimal_to_bcd
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_set_time
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2,group=0
	file	"src/rtc.c"
	line	57
global __ptext8
__ptext8:
psect	text8
	file	"src/rtc.c"
	line	57
	
_write_time_rtc:
;incstack = 0
	callstack 27
	line	59
	
l2997:
	call	_i2c_start	;wreg free
	line	60
	
l2999:
	movlw	(0D0h)&0ffh
	
	call	_i2c_write
	line	61
	
l3001:
	movlw	(0)&0ffh
	
	call	_i2c_write
	line	62
	
l3003:
	movf	((c:write_time_rtc@time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	
	call	_decimal_to_bcd
	
	call	_i2c_write
	line	63
	
l3005:
	movf	((c:write_time_rtc@time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movf	indf2,w
	
	call	_decimal_to_bcd
	
	call	_i2c_write
	line	64
	
l3007:
	movf	((c:write_time_rtc@time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	movf	indf2,w
	
	call	_decimal_to_bcd
	
	call	_i2c_write
	line	66
	
l3009:
	call	_i2c_stop	;wreg free
	line	67
	
l524:
	return	;funcret
	callstack 0
GLOBAL	__end_of_write_time_rtc
	__end_of_write_time_rtc:
	signat	_write_time_rtc,4217
	global	_decimal_to_bcd

;; *************** function _decimal_to_bcd *****************
;; Defined at:
;;		line 23 in file "src/rtc.c"
;; Parameters:    Size  Location     Type
;;  decimal         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  decimal         1   10[COMRAM] unsigned char 
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
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		_write_time_rtc
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2,group=0
	line	23
global __ptext9
__ptext9:
psect	text9
	file	"src/rtc.c"
	line	23
	
_decimal_to_bcd:
;incstack = 0
	callstack 27
	movwf	((c:decimal_to_bcd@decimal))^00h,c
	line	24
	
l2819:
	movff	(c:decimal_to_bcd@decimal),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1))^00h,c
	clrf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movff	0+?___awmod,??_decimal_to_bcd+0
	movff	1+?___awmod,??_decimal_to_bcd+0+1
	movff	(c:decimal_to_bcd@decimal),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1))^00h,c
	clrf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	swapf	(0+?___awdiv)^00h,c,w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	(??_decimal_to_bcd+0)^00h,c,w
	line	25
	
l514:
	return	;funcret
	callstack 0
GLOBAL	__end_of_decimal_to_bcd
	__end_of_decimal_to_bcd:
	signat	_decimal_to_bcd,4217
	global	_rtc_read

;; *************** function _rtc_read *****************
;; Defined at:
;;		line 70 in file "src/rtc.c"
;; Parameters:    Size  Location     Type
;;  time            1   13[COMRAM] PTR struct .
;;		 -> set_time@time(7), view_dashboard@time(7), 
;; Auto vars:     Size  Location     Type
;;  raw             7   14[COMRAM] unsigned char [7]
;;  i               1   21[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         8       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		_bcd_to_decimal
;;		_i2c_ack
;;		_i2c_no_ack
;;		_i2c_read
;;		_i2c_rep_start
;;		_i2c_start
;;		_i2c_stop
;;		_rtc_write_check
;; This function is called by:
;;		_view_dashboard
;;		_set_time
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2,group=0
	line	70
global __ptext10
__ptext10:
psect	text10
	file	"src/rtc.c"
	line	70
	
_rtc_read:
;incstack = 0
	callstack 29
	line	74
	
l2845:
	call	_i2c_start	;wreg free
	line	75
	
l2847:
	movlw	(0D0h)&0ffh
	
	call	_rtc_write_check
	iorlw	0
	btfss	status,2
	goto	u1631
	goto	u1630
u1631:
	goto	l2855
u1630:
	line	77
	
l2849:
	call	_i2c_stop	;wreg free
	line	78
	
l2851:
	movlw	(0)&0ffh
	goto	l528
	line	80
	
l2855:
	movlw	(0)&0ffh
	
	call	_rtc_write_check
	iorlw	0
	btfss	status,2
	goto	u1641
	goto	u1640
u1641:
	goto	l2863
u1640:
	goto	l2849
	line	85
	
l2863:
	call	_i2c_rep_start	;wreg free
	line	86
	
l2865:
	movlw	(0D1h)&0ffh
	
	call	_rtc_write_check
	iorlw	0
	btfss	status,2
	goto	u1651
	goto	u1650
u1651:
	goto	l530
u1650:
	goto	l2849
	line	90
	
l530:
	line	92
	clrf	((c:rtc_read@i))^00h,c
	line	94
	
l2877:
	movf	((c:rtc_read@i))^00h,c,w
	addlw	low(rtc_read@raw)
	movwf	fsr2l
	clrf	fsr2h
	call	_i2c_read	;wreg free
	movwf	indf2,c

	line	95
	
l2879:
		movlw	06h-0
	cpfslt	((c:rtc_read@i))^00h,c
	goto	u1661
	goto	u1660

u1661:
	goto	l2883
u1660:
	line	97
	
l2881:
	call	_i2c_ack	;wreg free
	line	98
	goto	l2885
	line	100
	
l2883:
	call	_i2c_no_ack	;wreg free
	line	92
	
l2885:
	incf	((c:rtc_read@i))^00h,c
	
l2887:
		movlw	07h-1
	cpfsgt	((c:rtc_read@i))^00h,c
	goto	u1671
	goto	u1670

u1671:
	goto	l2877
u1670:
	line	103
	
l2889:
	call	_i2c_stop	;wreg free
	line	106
	
l2891:
	movf	((c:rtc_read@time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	((c:rtc_read@raw))^00h,c,w
	andlw	low(07Fh)
	
	call	_bcd_to_decimal
	movwf	indf2,c

	line	107
	
l2893:
	movf	((c:rtc_read@time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movf	(0+((c:rtc_read@raw)+01h))^00h,c,w
	andlw	low(07Fh)
	
	call	_bcd_to_decimal
	movwf	indf2,c

	line	108
	
l2895:
	movf	((c:rtc_read@time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	movf	(0+((c:rtc_read@raw)+02h))^00h,c,w
	andlw	low(03Fh)
	
	call	_bcd_to_decimal
	movwf	indf2,c

	line	109
	
l2897:
	movf	((c:rtc_read@time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(03h)
	addwf	fsr2l

	movf	(0+((c:rtc_read@raw)+03h))^00h,c,w
	andlw	low(07h)
	movwf	indf2,c

	line	110
	
l2899:
	movf	((c:rtc_read@time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(04h)
	addwf	fsr2l

	movf	(0+((c:rtc_read@raw)+04h))^00h,c,w
	andlw	low(03Fh)
	
	call	_bcd_to_decimal
	movwf	indf2,c

	line	111
	
l2901:
	movf	((c:rtc_read@time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(05h)
	addwf	fsr2l

	movf	(0+((c:rtc_read@raw)+05h))^00h,c,w
	andlw	low(01Fh)
	
	call	_bcd_to_decimal
	movwf	indf2,c

	line	112
	
l2903:
	movf	((c:rtc_read@time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(06h)
	addwf	fsr2l

	movf	(0+((c:rtc_read@raw)+06h))^00h,c,w
	
	call	_bcd_to_decimal
	movwf	indf2,c

	line	114
	
l2905:
	movlw	(01h)&0ffh
	line	115
	
l528:
	return	;funcret
	callstack 0
GLOBAL	__end_of_rtc_read
	__end_of_rtc_read:
	signat	_rtc_read,4217
	global	_rtc_write_check

;; *************** function _rtc_write_check *****************
;; Defined at:
;;		line 28 in file "src/rtc.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1   12[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
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
;;		_i2c_is_nack
;;		_i2c_write
;; This function is called by:
;;		_rtc_read
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2,group=0
	line	28
global __ptext11
__ptext11:
psect	text11
	file	"src/rtc.c"
	line	28
	
_rtc_write_check:
;incstack = 0
	callstack 27
	line	30
	movwf	((c:rtc_write_check@data))^00h,c
	
l2823:
	movf	((c:rtc_write_check@data))^00h,c,w
	
	call	_i2c_write
	line	31
	call	_i2c_is_nack	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u1611
	goto	u1610
u1611:
	goto	l2829
u1610:
	line	33
	
l2825:
	movlw	(0)&0ffh
	goto	l518
	line	35
	
l2829:
	movlw	(01h)&0ffh
	line	36
	
l518:
	return	;funcret
	callstack 0
GLOBAL	__end_of_rtc_write_check
	__end_of_rtc_write_check:
	signat	_rtc_write_check,4217
	global	_i2c_ack

;; *************** function _i2c_ack *****************
;; Defined at:
;;		line 76 in file "src/i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
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
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_rtc_read
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2,group=0
	file	"src/i2c.c"
	line	76
global __ptext12
__ptext12:
psect	text12
	file	"src/i2c.c"
	line	76
	
_i2c_ack:
;incstack = 0
	callstack 27
	line	78
	
l2711:
	bcf	c:(31987/8),(31987)&7	;volatile
	line	79
	bcf	c:(32301/8),(32301)&7	;volatile
	line	80
	bsf	c:(32300/8),(32300)&7	;volatile
	line	81
	
l2713:
	call	_i2c_idle	;wreg free
	line	82
	
l305:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_ack
	__end_of_i2c_ack:
	signat	_i2c_ack,89
	global	_bcd_to_decimal

;; *************** function _bcd_to_decimal *****************
;; Defined at:
;;		line 19 in file "src/rtc.c"
;; Parameters:    Size  Location     Type
;;  bcd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  bcd             1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_rtc_read
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2,group=0
	file	"src/rtc.c"
	line	19
global __ptext13
__ptext13:
psect	text13
	file	"src/rtc.c"
	line	19
	
_bcd_to_decimal:
;incstack = 0
	callstack 28
	movwf	((c:bcd_to_decimal@bcd))^00h,c
	line	20
	
l2815:
	movff	(c:bcd_to_decimal@bcd),??_bcd_to_decimal+0
	movlw	0Fh
	andwf	(??_bcd_to_decimal+0)^00h,c
	swapf	((c:bcd_to_decimal@bcd))^00h,c,w
	andlw	(0ffh shr 4) & 0ffh
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addwf	(??_bcd_to_decimal+0)^00h,c,w
	line	21
	
l511:
	return	;funcret
	callstack 0
GLOBAL	__end_of_bcd_to_decimal
	__end_of_bcd_to_decimal:
	signat	_bcd_to_decimal,4217
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
;; This function calls:
;;		_scan_key
;; This function is called by:
;;		_view_dashboard
;;		_set_time
;;		_view_log
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2,group=0
	file	"src/mkp.c"
	line	70
global __ptext14
__ptext14:
psect	text14
	file	"src/mkp.c"
	line	70
	
_read_mkp:
;incstack = 0
	callstack 29
	line	74
	movwf	((c:read_mkp@trigger))^00h,c
	
l2909:
		decf	((c:read_mkp@trigger))^00h,c,w
	btfss	status,2
	goto	u1681
	goto	u1680

u1681:
	goto	l2929
u1680:
	line	76
	
l2911:
	call	_scan_key	;wreg free
	movwf	((c:read_mkp@key))^00h,c
	line	77
	
l2913:
		incf	((c:read_mkp@key))^00h,c,w
	btfsc	status,2
	goto	u1691
	goto	u1690

u1691:
	goto	l2925
u1690:
	
l2915:
		decf	((c:read_mkp@flag))^00h,c,w
	btfss	status,2
	goto	u1701
	goto	u1700

u1701:
	goto	l2925
u1700:
	line	79
	
l2917:
	clrf	((c:read_mkp@flag))^00h,c
	line	80
	
l2919:
	movf	((c:read_mkp@key))^00h,c,w
	goto	l481
	line	81
	
l2925:
		incf	((c:read_mkp@key))^00h,c,w
	btfss	status,2
	goto	u1711
	goto	u1710

u1711:
	goto	l2935
u1710:
	line	83
	
l2927:
	movlw	low(01h)
	movwf	((c:read_mkp@flag))^00h,c
	goto	l2935
	line	85
	
l2929:
	movf	((c:read_mkp@trigger))^00h,c,w
	btfss	status,2
	goto	u1721
	goto	u1720
u1721:
	goto	l2935
u1720:
	line	87
	
l2931:
	call	_scan_key	;wreg free
	goto	l481
	line	89
	
l2935:
	movlw	(0FFh)&0ffh
	line	90
	
l481:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_mkp
	__end_of_read_mkp:
	signat	_read_mkp,4217
	global	_clcd_putch

;; *************** function _clcd_putch *****************
;; Defined at:
;;		line 44 in file "src/clcd.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     const unsigned char 
;;  addr            1    8[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    9[COMRAM] const unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, cstack
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
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_set_time
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2,group=0
	file	"src/clcd.c"
	line	44
global __ptext15
__ptext15:
psect	text15
	file	"src/clcd.c"
	line	44
	
_clcd_putch:
;incstack = 0
	callstack 28
	line	46
	movwf	((c:clcd_putch@data))^00h,c
	
l2995:
	movlw	low(0)
	movwf	((c:clcd_write@control))^00h,c
	movf	((c:clcd_putch@addr))^00h,c,w
	
	call	_clcd_write
	line	47
	movlw	low(01h)
	movwf	((c:clcd_write@control))^00h,c
	movf	((c:clcd_putch@data))^00h,c,w
	
	call	_clcd_write
	line	48
	
l171:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clcd_putch
	__end_of_clcd_putch:
	signat	_clcd_putch,8313
	global	_init_config

;; *************** function _init_config *****************
;; Defined at:
;;		line 27 in file "src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  time            7    0        struct .
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
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_init_adc
;;		_init_clcd
;;		_init_event_log
;;		_init_i2c
;;		_init_mkp
;;		_init_rtc
;;		_init_uart
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2,group=0
	file	"src/main.c"
	line	27
global __ptext16
__ptext16:
psect	text16
	file	"src/main.c"
	line	27
	
_init_config:
;incstack = 0
	callstack 26
	line	29
	
l3351:
	call	_init_clcd	;wreg free
	line	30
	
l3353:
	call	_init_i2c	;wreg free
	line	31
	
l3355:
	call	_init_event_log	;wreg free
	line	32
	
l3357:
	call	_init_rtc	;wreg free
	line	33
	
l3359:
	call	_init_mkp	;wreg free
	line	34
	call	_init_uart	;wreg free
	line	35
	
l3361:
	call	_init_adc	;wreg free
	line	36
	
l3363:
	call	_init_rtc	;wreg free
	line	38
	
l3365:
	clrf	((c:_state))^00h,c
	line	39
	
l343:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_config
	__end_of_init_config:
	signat	_init_config,89
	global	_init_uart

;; *************** function _init_uart *****************
;; Defined at:
;;		line 5 in file "src/uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
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
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2,group=0
	file	"src/uart.c"
	line	5
global __ptext17
__ptext17:
psect	text17
	file	"src/uart.c"
	line	5
	
_init_uart:
;incstack = 0
	callstack 29
	line	8
	
l3079:
	bsf	c:(31911/8),(31911)&7	;volatile
	line	9
	bcf	c:(31910/8),(31910)&7	;volatile
	line	12
	bcf	c:(32102/8),(32102)&7	;volatile
	line	14
	bsf	c:(32101/8),(32101)&7	;volatile
	line	15
	bcf	c:(32100/8),(32100)&7	;volatile
	line	16
	bcf	c:(32099/8),(32099)&7	;volatile
	line	17
	bsf	c:(32098/8),(32098)&7	;volatile
	line	19
	bsf	c:(32095/8),(32095)&7	;volatile
	line	20
	bcf	c:(32094/8),(32094)&7	;volatile
	line	21
	bsf	c:(32092/8),(32092)&7	;volatile
	line	23
	bcf	c:(32195/8),(32195)&7	;volatile
	line	26
	
l3081:
	movlw	low(081h)
	movwf	((c:4015))^0f00h,c	;volatile
	line	27
	
l3083:
	bcf	c:(31988/8),(31988)&7	;volatile
	line	28
	
l3085:
	bcf	c:(31989/8),(31989)&7	;volatile
	line	29
	
l577:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_uart
	__end_of_init_uart:
	signat	_init_uart,89
	global	_init_rtc

;; *************** function _init_rtc *****************
;; Defined at:
;;		line 5 in file "src/rtc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dummy           1   14[COMRAM] unsigned char 
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
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_rtc_read_reg
;;		_rtc_write_reg
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2,group=0
	file	"src/rtc.c"
	line	5
global __ptext18
__ptext18:
psect	text18
	file	"src/rtc.c"
	line	5
	
_init_rtc:
;incstack = 0
	callstack 26
	line	9
	
l3063:
	movlw	(0)&0ffh
	
	call	_rtc_read_reg
	movwf	((c:init_rtc@dummy))^00h,c
	line	10
	
l3065:
	movf	((c:init_rtc@dummy))^00h,c,w
	iorlw	low(080h)
	movwf	((c:rtc_write_reg@data))^00h,c
	movlw	(0)&0ffh
	
	call	_rtc_write_reg
	line	12
	
l3067:
	movlw	(02h)&0ffh
	
	call	_rtc_read_reg
	movwf	((c:init_rtc@dummy))^00h,c
	line	13
	movf	((c:init_rtc@dummy))^00h,c,w
	andlw	low(0BFh)
	movwf	((c:rtc_write_reg@data))^00h,c
	movlw	(02h)&0ffh
	
	call	_rtc_write_reg
	line	15
	
l3069:
	movlw	(0)&0ffh
	
	call	_rtc_read_reg
	movwf	((c:init_rtc@dummy))^00h,c
	line	16
	
l3071:
	movf	((c:init_rtc@dummy))^00h,c,w
	andlw	low(07Fh)
	movwf	((c:rtc_write_reg@data))^00h,c
	movlw	(0)&0ffh
	
	call	_rtc_write_reg
	line	17
	
l508:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_rtc
	__end_of_init_rtc:
	signat	_init_rtc,89
	global	_rtc_write_reg

;; *************** function _rtc_write_reg *****************
;; Defined at:
;;		line 117 in file "src/rtc.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;;  data            1   12[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1   13[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, cstack
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
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_init_rtc
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2,group=0
	line	117
global __ptext19
__ptext19:
psect	text19
	file	"src/rtc.c"
	line	117
	
_rtc_write_reg:
;incstack = 0
	callstack 27
	line	119
	movwf	((c:rtc_write_reg@address))^00h,c
	
l2805:
	call	_i2c_start	;wreg free
	line	120
	
l2807:
	movlw	(0D0h)&0ffh
	
	call	_i2c_write
	line	121
	
l2809:
	movf	((c:rtc_write_reg@address))^00h,c,w
	
	call	_i2c_write
	line	122
	
l2811:
	movf	((c:rtc_write_reg@data))^00h,c,w
	
	call	_i2c_write
	line	123
	
l2813:
	call	_i2c_stop	;wreg free
	line	124
	
l537:
	return	;funcret
	callstack 0
GLOBAL	__end_of_rtc_write_reg
	__end_of_rtc_write_reg:
	signat	_rtc_write_reg,8313
	global	_rtc_read_reg

;; *************** function _rtc_read_reg *****************
;; Defined at:
;;		line 126 in file "src/rtc.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1   12[COMRAM] unsigned char 
;;  data            1   13[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_no_ack
;;		_i2c_read
;;		_i2c_rep_start
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_init_rtc
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2,group=0
	line	126
global __ptext20
__ptext20:
psect	text20
	file	"src/rtc.c"
	line	126
	
_rtc_read_reg:
;incstack = 0
	callstack 26
	line	129
	movwf	((c:rtc_read_reg@address))^00h,c
	
l2787:
	call	_i2c_start	;wreg free
	line	130
	
l2789:
	movlw	(0D0h)&0ffh
	
	call	_i2c_write
	line	131
	
l2791:
	movf	((c:rtc_read_reg@address))^00h,c,w
	
	call	_i2c_write
	line	132
	
l2793:
	call	_i2c_rep_start	;wreg free
	line	133
	
l2795:
	movlw	(0D1h)&0ffh
	
	call	_i2c_write
	line	135
	call	_i2c_read	;wreg free
	movwf	((c:rtc_read_reg@data))^00h,c
	line	136
	
l2797:
	call	_i2c_no_ack	;wreg free
	line	137
	
l2799:
	call	_i2c_stop	;wreg free
	line	139
	
l2801:
	movf	((c:rtc_read_reg@data))^00h,c,w
	line	140
	
l540:
	return	;funcret
	callstack 0
GLOBAL	__end_of_rtc_read_reg
	__end_of_rtc_read_reg:
	signat	_rtc_read_reg,4217
	global	_i2c_no_ack

;; *************** function _i2c_no_ack *****************
;; Defined at:
;;		line 60 in file "src/i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
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
;;		_i2c_idle
;; This function is called by:
;;		_rtc_read
;;		_rtc_read_reg
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2,group=0
	file	"src/i2c.c"
	line	60
global __ptext21
__ptext21:
psect	text21
	file	"src/i2c.c"
	line	60
	
_i2c_no_ack:
;incstack = 0
	callstack 27
	line	61
	
l2573:
	bcf	c:(31987/8),(31987)&7	;volatile
	line	62
	bsf	c:(32301/8),(32301)&7	;volatile
	line	63
	bsf	c:(32300/8),(32300)&7	;volatile
	line	64
	
l2575:
	call	_i2c_idle	;wreg free
	line	65
	
l299:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_no_ack
	__end_of_i2c_no_ack:
	signat	_i2c_no_ack,89
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
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2,group=0
	file	"src/mkp.c"
	line	4
global __ptext22
__ptext22:
psect	text22
	file	"src/mkp.c"
	line	4
	
_init_mkp:
;incstack = 0
	callstack 29
	line	6
	
l3073:
	movlw	low(0Fh)
	movwf	((c:4033))^0f00h,c	;volatile
	line	7
	movlw	low(01Eh)
	movwf	((c:3987))^0f00h,c	;volatile
	line	8
	
l3075:
	bcf	c:(32655/8),(32655)&7	;volatile
	line	10
	
l3077:
	movf	((c:3969))^0f00h,c,w	;volatile
	iorlw	low(0E0h)
	movwf	((c:3969))^0f00h,c	;volatile
	line	11
	
l448:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_mkp
	__end_of_init_mkp:
	signat	_init_mkp,89
	global	_init_i2c

;; *************** function _init_i2c *****************
;; Defined at:
;;		line 5 in file "src/i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
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
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2,group=0
	file	"src/i2c.c"
	line	5
global __ptext23
__ptext23:
psect	text23
	file	"src/i2c.c"
	line	5
	
_init_i2c:
;incstack = 0
	callstack 29
	line	8
	
l3055:
	bsf	c:(31907/8),(31907)&7	;volatile
	line	9
	bsf	c:(31908/8),(31908)&7	;volatile
	line	10
	bsf	c:(32319/8),(32319)&7	;volatile
	line	11
	bsf	c:(32318/8),(32318)&7	;volatile
	line	13
	
l3057:
	movlw	low(028h)
	movwf	((c:4038))^0f00h,c	;volatile
	line	14
	movlw	low(031h)
	movwf	((c:4040))^0f00h,c	;volatile
	line	16
	
l3059:
	bcf	c:(31987/8),(31987)&7	;volatile
	line	17
	
l3061:
	bcf	c:(32011/8),(32011)&7	;volatile
	line	18
	
l275:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_i2c
	__end_of_init_i2c:
	signat	_init_i2c,89
	global	_init_event_log

;; *************** function _init_event_log *****************
;; Defined at:
;;		line 21 in file "src/event_store.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  log_key         1   15[COMRAM] unsigned char 
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
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_i2c_eeprom_read
;;		_i2c_eeprom_write
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2,group=0
	file	"src/event_store.c"
	line	21
global __ptext24
__ptext24:
psect	text24
	file	"src/event_store.c"
	line	21
	
_init_event_log:
;incstack = 0
	callstack 28
	line	24
	
l3045:
	movlw	(02h)&0ffh
	
	call	_i2c_eeprom_read
	movwf	((c:init_event_log@log_key))^00h,c
	line	25
	movlw	(03h)&0ffh
	
	call	_i2c_eeprom_read
	movwf	((c:_write_index))^00h,c
	line	26
	movlw	(04h)&0ffh
	
	call	_i2c_eeprom_read
	movwf	((c:_event_count))^00h,c
	line	28
	
l3047:
		movlw	165
	xorwf	((c:init_event_log@log_key))^00h,c,w
	btfss	status,2
	goto	u1801
	goto	u1800

u1801:
	goto	l224
u1800:
	
l3049:
		movlw	0Ah-0
	cpfslt	((c:_write_index))^00h,c
	goto	u1811
	goto	u1810

u1811:
	goto	l224
u1810:
	
l3051:
		movlw	0Bh-1
	cpfsgt	((c:_event_count))^00h,c
	goto	u1821
	goto	u1820

u1821:
	goto	l225
u1820:
	
l224:
	line	31
	clrf	((c:_write_index))^00h,c
	line	32
	clrf	((c:_event_count))^00h,c
	line	34
	
l3053:
	movff	(c:_write_index),(c:i2c_eeprom_write@data)
	movlw	(03h)&0ffh
	
	call	_i2c_eeprom_write
	line	35
	movff	(c:_event_count),(c:i2c_eeprom_write@data)
	movlw	(04h)&0ffh
	
	call	_i2c_eeprom_write
	line	36
	movlw	low(0A5h)
	movwf	((c:i2c_eeprom_write@data))^00h,c
	movlw	(02h)&0ffh
	
	call	_i2c_eeprom_write
	line	38
	
l225:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_event_log
	__end_of_init_event_log:
	signat	_init_event_log,89
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
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2,group=0
	file	"src/clcd.c"
	line	4
global __ptext25
__ptext25:
psect	text25
	file	"src/clcd.c"
	line	4
	
_init_clcd:
;incstack = 0
	callstack 28
	line	6
	
l3011:
	clrf	((c:3989))^0f00h,c	;volatile
	line	7
	
l3013:
	movf	((c:3988))^0f00h,c,w	;volatile
	andlw	low(0F8h)
	movwf	((c:3988))^0f00h,c	;volatile
	line	8
	
l3015:
	asmopt push
asmopt off
movlw	98
movwf	(??_init_clcd+0)^00h,c
	movlw	102
u2577:
decfsz	wreg,f
	bra	u2577
	decfsz	(??_init_clcd+0)^00h,c,f
	bra	u2577
asmopt pop

	line	9
	
l3017:
	movlw	low(0)
	movwf	((c:clcd_write@control))^00h,c
	movlw	(033h)&0ffh
	
	call	_clcd_write
	line	10
	
l3019:
	asmopt push
asmopt off
movlw	27
movwf	(??_init_clcd+0)^00h,c
	movlw	158
u2587:
decfsz	wreg,f
	bra	u2587
	decfsz	(??_init_clcd+0)^00h,c,f
	bra	u2587
	nop2
asmopt pop

	line	11
	
l3021:
	movlw	low(0)
	movwf	((c:clcd_write@control))^00h,c
	movlw	(033h)&0ffh
	
	call	_clcd_write
	line	12
	
l3023:
	asmopt push
asmopt off
	movlw	166
u2597:
decfsz	wreg,f
	bra	u2597
	nop2
asmopt pop

	line	13
	
l3025:
	movlw	low(0)
	movwf	((c:clcd_write@control))^00h,c
	movlw	(033h)&0ffh
	
	call	_clcd_write
	line	14
	
l3027:
	asmopt push
asmopt off
	movlw	166
u2607:
decfsz	wreg,f
	bra	u2607
	nop2
asmopt pop

	line	15
	
l3029:
	movlw	low(0)
	movwf	((c:clcd_write@control))^00h,c
	movlw	(02h)&0ffh
	
	call	_clcd_write
	line	16
	
l3031:
	asmopt push
asmopt off
	movlw	166
u2617:
decfsz	wreg,f
	bra	u2617
	nop2
asmopt pop

	line	17
	
l3033:
	movlw	low(0)
	movwf	((c:clcd_write@control))^00h,c
	movlw	(038h)&0ffh
	
	call	_clcd_write
	line	18
	
l3035:
	asmopt push
asmopt off
	movlw	166
u2627:
decfsz	wreg,f
	bra	u2627
	nop2
asmopt pop

	line	19
	
l3037:
	movlw	low(0)
	movwf	((c:clcd_write@control))^00h,c
	movlw	(0Ch)&0ffh
	
	call	_clcd_write
	line	20
	
l3039:
	asmopt push
asmopt off
	movlw	166
u2637:
decfsz	wreg,f
	bra	u2637
	nop2
asmopt pop

	line	21
	
l3041:
	movlw	low(0)
	movwf	((c:clcd_write@control))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	22
	
l3043:
	asmopt push
asmopt off
	movlw	166
u2647:
decfsz	wreg,f
	bra	u2647
	nop2
asmopt pop

	line	23
	
l163:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_clcd
	__end_of_init_clcd:
	signat	_init_clcd,89
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
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2,group=0
	file	"src/adc.c"
	line	4
global __ptext26
__ptext26:
psect	text26
	file	"src/adc.c"
	line	4
	
_init_adc:
;incstack = 0
	callstack 29
	line	6
	
l2833:
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
	global	_download_log

;; *************** function _download_log *****************
;; Defined at:
;;		line 113 in file "src/black_box.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  address         1   22[COMRAM] unsigned char 
;;  gear            1   21[COMRAM] unsigned char 
;;  event_index     1   20[COMRAM] unsigned char 
;;  speed           1   19[COMRAM] unsigned char 
;;  sec             1   18[COMRAM] unsigned char 
;;  min             1   17[COMRAM] unsigned char 
;;  hour            1   16[COMRAM] unsigned char 
;;  count           1   15[COMRAM] unsigned char 
;;  start_index     1   14[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         9       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_get_event_count
;;		_i2c_eeprom_read
;;		_old_event_index
;;		_putch
;;		_puts
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2,group=0
	file	"src/black_box.c"
	line	113
global __ptext27
__ptext27:
psect	text27
	file	"src/black_box.c"
	line	113
	
_download_log:
;incstack = 0
	callstack 26
	line	124
	
l3187:
	call	_get_event_count	;wreg free
	movwf	((c:download_log@count))^00h,c
	line	125
	
l3189:
	movf	((c:download_log@count))^00h,c,w
	btfss	status,2
	goto	u2041
	goto	u2040
u2041:
	goto	l3201
u2040:
	line	127
	
l3191:
		movlw	low(STR_1)
	movwf	((c:puts@s))^00h,c
	movlw	high(STR_1)
	movwf	((c:puts@s+1))^00h,c

	call	_puts	;wreg free
	line	128
	
l3193:
	movlw	(0Dh)&0ffh
	
	call	_putch
	line	129
	
l3195:
	movlw	(0Ah)&0ffh
	
	call	_putch
	line	131
	
l3197:
	movlw	low(01h)
	movwf	((c:_state))^00h,c
	goto	l108
	line	135
	
l3201:
	call	_old_event_index	;wreg free
	movwf	((c:download_log@start_index))^00h,c
	line	136
	
l3203:
		movlw	low(STR_2)
	movwf	((c:puts@s))^00h,c
	movlw	high(STR_2)
	movwf	((c:puts@s+1))^00h,c

	call	_puts	;wreg free
	line	137
	
l3205:
	movlw	(0Dh)&0ffh
	
	call	_putch
	line	138
	
l3207:
	movlw	(0Ah)&0ffh
	
	call	_putch
	line	140
	
l3209:
	clrf	((c:download_log@event_index))^00h,c
	goto	l3259
	line	142
	
l3211:
	movf	((c:download_log@start_index))^00h,c,w
	addwf	((c:download_log@event_index))^00h,c,w
	movwf	((c:___awmod@dividend))^00h,c
	clrf	1+((c:___awmod@dividend))^00h,c
	rlcf	1+((c:___awmod@dividend))^00h,c
	
	clrf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	mullw	05h
	movf	(prodl)^0f00h,c,w
	addlw	low(05h)
	movwf	((c:download_log@address))^00h,c
	line	145
	
l3213:
	movf	((c:download_log@address))^00h,c,w
	
	call	_i2c_eeprom_read
	movwf	((c:download_log@hour))^00h,c
	line	146
	
l3215:
	incf	((c:download_log@address))^00h,c,w
	
	call	_i2c_eeprom_read
	movwf	((c:download_log@min))^00h,c
	line	147
	
l3217:
	movf	((c:download_log@address))^00h,c,w
	addlw	low(02h)
	
	call	_i2c_eeprom_read
	movwf	((c:download_log@sec))^00h,c
	line	148
	
l3219:
	movf	((c:download_log@address))^00h,c,w
	addlw	low(03h)
	
	call	_i2c_eeprom_read
	movwf	((c:download_log@gear))^00h,c
	line	149
	
l3221:
	movf	((c:download_log@address))^00h,c,w
	addlw	low(04h)
	
	call	_i2c_eeprom_read
	movwf	((c:download_log@speed))^00h,c
	line	151
	
l3223:
	movff	(c:download_log@hour),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1))^00h,c
	clrf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	addlw	low(030h)
	
	call	_putch
	line	152
	
l3225:
	movff	(c:download_log@hour),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1))^00h,c
	clrf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(030h)
	
	call	_putch
	line	153
	
l3227:
	movlw	(03Ah)&0ffh
	
	call	_putch
	line	154
	
l3229:
	movff	(c:download_log@min),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1))^00h,c
	clrf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	addlw	low(030h)
	
	call	_putch
	line	155
	
l3231:
	movff	(c:download_log@min),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1))^00h,c
	clrf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(030h)
	
	call	_putch
	line	156
	
l3233:
	movlw	(03Ah)&0ffh
	
	call	_putch
	line	157
	
l3235:
	movff	(c:download_log@sec),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1))^00h,c
	clrf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	addlw	low(030h)
	
	call	_putch
	line	158
	
l3237:
	movff	(c:download_log@sec),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1))^00h,c
	clrf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(030h)
	
	call	_putch
	line	159
	
l3239:
		movlw	low(STR_3)
	movwf	((c:puts@s))^00h,c
	movlw	high(STR_3)
	movwf	((c:puts@s+1))^00h,c

	call	_puts	;wreg free
	line	161
	
l3241:
		movlw	09h-0
	cpfslt	((c:download_log@gear))^00h,c
	goto	u2051
	goto	u2050

u2051:
	goto	l3245
u2050:
	line	163
	
l3243:
	movf	((c:download_log@gear))^00h,c,w
	mullw	03h
	movlw	low((_ev))
	addwf	(prodl)^0f00h,c,w
	movwf	tblptrl
	movlw	high((_ev))
	addwfc	(prodh)^0f00h,c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_putch
	line	164
	movf	((c:download_log@gear))^00h,c,w
	mullw	03h
	movlw	01h
	addwf	(prodl)^0f00h,c
	movlw	0
	addwfc	(prodh)^0f00h,c
	movlw	low((_ev))
	addwf	(prodl)^0f00h,c,w
	movwf	tblptrl
	movlw	high((_ev))
	addwfc	(prodh)^0f00h,c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_putch
	line	165
	goto	l3247
	line	167
	
l3245:
	movlw	(05Fh)&0ffh
	
	call	_putch
	line	168
	movlw	(05Fh)&0ffh
	
	call	_putch
	line	171
	
l3247:
		movlw	low(STR_4)
	movwf	((c:puts@s))^00h,c
	movlw	high(STR_4)
	movwf	((c:puts@s+1))^00h,c

	call	_puts	;wreg free
	line	172
	
l3249:
	movff	(c:download_log@speed),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1))^00h,c
	clrf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	addlw	low(030h)
	
	call	_putch
	line	173
	
l3251:
	movff	(c:download_log@speed),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1))^00h,c
	clrf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(030h)
	
	call	_putch
	line	175
	
l3253:
	movlw	(0Dh)&0ffh
	
	call	_putch
	line	176
	
l3255:
	movlw	(0Ah)&0ffh
	
	call	_putch
	line	140
	
l3257:
	incf	((c:download_log@event_index))^00h,c
	
l3259:
		movf	((c:download_log@count))^00h,c,w
	subwf	((c:download_log@event_index))^00h,c,w
	btfss	status,0
	goto	u2061
	goto	u2060

u2061:
	goto	l3211
u2060:
	goto	l3197
	line	179
	
l108:
	return	;funcret
	callstack 0
GLOBAL	__end_of_download_log
	__end_of_download_log:
	signat	_download_log,89
	global	_puts

;; *************** function _puts *****************
;; Defined at:
;;		line 54 in file "src/uart.c"
;; Parameters:    Size  Location     Type
;;  s               2    9[COMRAM] PTR const unsigned char 
;;		 -> STR_4(6), STR_3(5), STR_2(23), STR_1(18), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    9[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_putch
;; This function is called by:
;;		_download_log
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2,group=0
	file	"src/uart.c"
	line	54
global __ptext28
__ptext28:
psect	text28
	file	"src/uart.c"
	line	54
	
_puts:
;incstack = 0
	callstack 28
	line	56
	
l2977:
	goto	l2983
	line	58
	
l2979:
	movff	(c:puts@s),tblptrl
	movff	(c:puts@s+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_putch
	
l2981:
	infsnz	((c:puts@s))^00h,c
	incf	((c:puts@s+1))^00h,c
	line	56
	
l2983:
	movff	(c:puts@s),tblptrl
	movff	(c:puts@s+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	iorlw	0
	btfss	status,2
	goto	u1781
	goto	u1780
u1781:
	goto	l2979
u1780:
	line	61
	
l596:
	return	;funcret
	callstack 0
GLOBAL	__end_of_puts
	__end_of_puts:
	signat	_puts,4218
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 30 in file "src/uart.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    8[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
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
;;		_download_log
;;		_puts
;;		_getche
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2,group=0
	line	30
global __ptext29
__ptext29:
psect	text29
	file	"src/uart.c"
	line	30
	
_putch:
;incstack = 0
	callstack 28
	movwf	((c:putch@data))^00h,c
	line	32
	
l2657:
	line	35
	
l580:
	line	32
	btfss	c:(31988/8),(31988)&7	;volatile
	goto	u1441
	goto	u1440
u1441:
	goto	l580
u1440:
	line	37
	
l2659:
	movff	(c:putch@data),(c:4013)	;volatile
	line	38
	
l583:
	return	;funcret
	callstack 0
GLOBAL	__end_of_putch
	__end_of_putch:
	signat	_putch,4217
	global	_old_event_index

;; *************** function _old_event_index *****************
;; Defined at:
;;		line 67 in file "src/event_store.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_download_log
;;		_view_log
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2,group=0
	file	"src/event_store.c"
	line	67
global __ptext30
__ptext30:
psect	text30
	file	"src/event_store.c"
	line	67
	
_old_event_index:
;incstack = 0
	callstack 29
	line	69
	
l2985:
		movlw	10
	xorwf	((c:_event_count))^00h,c,w
	btfss	status,2
	goto	u1791
	goto	u1790

u1791:
	goto	l2991
u1790:
	line	71
	
l2987:
	movf	((c:_write_index))^00h,c,w
	goto	l237
	line	73
	
l2991:
	movlw	(0)&0ffh
	line	74
	
l237:
	return	;funcret
	callstack 0
GLOBAL	__end_of_old_event_index
	__end_of_old_event_index:
	signat	_old_event_index,89
	global	_i2c_eeprom_read

;; *************** function _i2c_eeprom_read *****************
;; Defined at:
;;		line 21 in file "src/eeprom.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1   12[COMRAM] unsigned char 
;;  data            1   13[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		_i2c_read
;;		_i2c_rep_start
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_download_log
;;		_init_event_log
;;		_view_log
;;		_load_data
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2,group=0
	file	"src/eeprom.c"
	line	21
global __ptext31
__ptext31:
psect	text31
	file	"src/eeprom.c"
	line	21
	
_i2c_eeprom_read:
;incstack = 0
	callstack 28
	line	25
	movwf	((c:i2c_eeprom_read@address))^00h,c
	
l2661:
	call	_i2c_start	;wreg free
	line	26
	
l2663:
	movlw	(0A0h)&0ffh
	
	call	_i2c_write
	line	27
	
l2665:
	movf	((c:i2c_eeprom_read@address))^00h,c,w
	
	call	_i2c_write
	line	28
	
l2667:
	call	_i2c_rep_start	;wreg free
	line	29
	
l2669:
	movlw	(0A1h)&0ffh
	
	call	_i2c_write
	line	30
	call	_i2c_read	;wreg free
	movwf	((c:i2c_eeprom_read@data))^00h,c
	line	31
	
l2671:
	call	_i2c_stop	;wreg free
	line	33
	movf	((c:i2c_eeprom_read@data))^00h,c,w
	line	34
	
l198:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_eeprom_read
	__end_of_i2c_eeprom_read:
	signat	_i2c_eeprom_read,4217
	global	_i2c_rep_start

;; *************** function _i2c_rep_start *****************
;; Defined at:
;;		line 40 in file "src/i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
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
;;		_i2c_idle
;; This function is called by:
;;		_i2c_eeprom_read
;;		_rtc_read
;;		_rtc_read_reg
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2,group=0
	file	"src/i2c.c"
	line	40
global __ptext32
__ptext32:
psect	text32
	file	"src/i2c.c"
	line	40
	
_i2c_rep_start:
;incstack = 0
	callstack 27
	line	41
	
l2561:
	bcf	c:(31987/8),(31987)&7	;volatile
	line	42
	bsf	c:(32297/8),(32297)&7	;volatile
	line	43
	
l2563:
	call	_i2c_idle	;wreg free
	line	44
	
l290:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_rep_start
	__end_of_i2c_rep_start:
	signat	_i2c_rep_start,89
	global	_i2c_read

;; *************** function _i2c_read *****************
;; Defined at:
;;		line 67 in file "src/i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
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
;;		_i2c_rx_mode
;; This function is called by:
;;		_i2c_eeprom_read
;;		_rtc_read
;;		_rtc_read_reg
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2,group=0
	line	67
global __ptext33
__ptext33:
psect	text33
	file	"src/i2c.c"
	line	67
	
_i2c_read:
;incstack = 0
	callstack 27
	line	70
	
l2565:
	call	_i2c_rx_mode	;wreg free
	line	71
	
l2567:
	movff	(c:4041),(c:i2c_read@data)	;volatile
	line	73
	
l2569:
	movf	((c:i2c_read@data))^00h,c,w
	line	74
	
l302:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_read
	__end_of_i2c_read:
	signat	_i2c_read,89
	global	_i2c_rx_mode

;; *************** function _i2c_rx_mode *****************
;; Defined at:
;;		line 53 in file "src/i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
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
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_i2c_read
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2,group=0
	line	53
global __ptext34
__ptext34:
psect	text34
	file	"src/i2c.c"
	line	53
	
_i2c_rx_mode:
;incstack = 0
	callstack 25
	line	55
	
l2539:
	bcf	c:(31987/8),(31987)&7	;volatile
	line	56
	bsf	c:(32299/8),(32299)&7	;volatile
	line	57
	
l2541:
	call	_i2c_idle	;wreg free
	line	58
	
l296:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_rx_mode
	__end_of_i2c_rx_mode:
	signat	_i2c_rx_mode,89
	global	_get_event_count

;; *************** function _get_event_count *****************
;; Defined at:
;;		line 65 in file "src/event_store.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
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
;;		_download_log
;;		_view_log
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2,group=0
	file	"src/event_store.c"
	line	65
global __ptext35
__ptext35:
psect	text35
	file	"src/event_store.c"
	line	65
	
_get_event_count:
;incstack = 0
	callstack 29
	
l2973:
	movf	((c:_event_count))^00h,c,w
	
l233:
	return	;funcret
	callstack 0
GLOBAL	__end_of_get_event_count
	__end_of_get_event_count:
	signat	_get_event_count,89
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 7 in file "/opt/microchip/xc8/v4.00/pic/sources/c99/common/awmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] int 
;;  divisor         2    2[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    5[COMRAM] unsigned char 
;;  counter         1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_view_dashboard
;;		_download_log
;;		_set_time
;;		_decimal_to_bcd
;;		_view_log
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v4.00/pic/sources/c99/common/awmod.c"
	line	7
global __ptext36
__ptext36:
psect	text36
	file	"/opt/microchip/xc8/v4.00/pic/sources/c99/common/awmod.c"
	line	7
	
___awmod:
;incstack = 0
	callstack 27
	line	12
	
l2621:
	clrf	((c:___awmod@sign))^00h,c
	line	13
	
l2623:
	btfsc	((c:___awmod@dividend+1))^00h,c,7
	goto	u1380
	goto	u1381

u1381:
	goto	l2629
u1380:
	line	14
	
l2625:
	negf	((c:___awmod@dividend))^00h,c
	comf	((c:___awmod@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@dividend+1))^00h,c
	line	15
	
l2627:
	movlw	low(01h)
	movwf	((c:___awmod@sign))^00h,c
	line	17
	
l2629:
	btfsc	((c:___awmod@divisor+1))^00h,c,7
	goto	u1390
	goto	u1391

u1391:
	goto	l2633
u1390:
	line	18
	
l2631:
	negf	((c:___awmod@divisor))^00h,c
	comf	((c:___awmod@divisor+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@divisor+1))^00h,c
	line	19
	
l2633:
	movf	((c:___awmod@divisor))^00h,c,w
iorwf	((c:___awmod@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u1401
	goto	u1400

u1401:
	goto	l2649
u1400:
	line	20
	
l2635:
	movlw	low(01h)
	movwf	((c:___awmod@counter))^00h,c
	line	21
	goto	l2639
	line	22
	
l2637:
	bcf	status,0
	rlcf	((c:___awmod@divisor))^00h,c
	rlcf	((c:___awmod@divisor+1))^00h,c
	line	23
	incf	((c:___awmod@counter))^00h,c
	line	21
	
l2639:
	
	btfss	((c:___awmod@divisor+1))^00h,c,(15)&7
	goto	u1411
	goto	u1410
u1411:
	goto	l2637
u1410:
	line	26
	
l2641:
		movf	((c:___awmod@divisor))^00h,c,w
	subwf	((c:___awmod@dividend))^00h,c,w
	movf	((c:___awmod@divisor+1))^00h,c,w
	subwfb	((c:___awmod@dividend+1))^00h,c,w
	btfss	status,0
	goto	u1421
	goto	u1420

u1421:
	goto	l2645
u1420:
	line	27
	
l2643:
	movf	((c:___awmod@divisor))^00h,c,w
	subwf	((c:___awmod@dividend))^00h,c
	movf	((c:___awmod@divisor+1))^00h,c,w
	subwfb	((c:___awmod@dividend+1))^00h,c
	line	28
	
l2645:
	bcf	status,0
	rrcf	((c:___awmod@divisor+1))^00h,c
	rrcf	((c:___awmod@divisor))^00h,c
	line	29
	
l2647:
	decfsz	((c:___awmod@counter))^00h,c
	
	goto	l2641
	line	31
	
l2649:
	movf	((c:___awmod@sign))^00h,c,w
	btfsc	status,2
	goto	u1431
	goto	u1430
u1431:
	goto	l2653
u1430:
	line	32
	
l2651:
	negf	((c:___awmod@dividend))^00h,c
	comf	((c:___awmod@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@dividend+1))^00h,c
	line	33
	
l2653:
	movff	(c:___awmod@dividend),(c:?___awmod)
	movff	(c:___awmod@dividend+1),(c:?___awmod+1)
	line	34
	
l998:
	return	;funcret
	callstack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 7 in file "/opt/microchip/xc8/v4.00/pic/sources/c99/common/awdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] int 
;;  divisor         2    2[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[COMRAM] int 
;;  sign            1    5[COMRAM] unsigned char 
;;  counter         1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_view_dashboard
;;		_download_log
;;		_set_time
;;		_decimal_to_bcd
;;		_view_log
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v4.00/pic/sources/c99/common/awdiv.c"
	line	7
global __ptext37
__ptext37:
psect	text37
	file	"/opt/microchip/xc8/v4.00/pic/sources/c99/common/awdiv.c"
	line	7
	
___awdiv:
;incstack = 0
	callstack 27
	line	13
	
l2577:
	clrf	((c:___awdiv@sign))^00h,c
	line	14
	
l2579:
	btfsc	((c:___awdiv@divisor+1))^00h,c,7
	goto	u1320
	goto	u1321

u1321:
	goto	l2585
u1320:
	line	15
	
l2581:
	negf	((c:___awdiv@divisor))^00h,c
	comf	((c:___awdiv@divisor+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1))^00h,c
	line	16
	
l2583:
	movlw	low(01h)
	movwf	((c:___awdiv@sign))^00h,c
	line	18
	
l2585:
	btfsc	((c:___awdiv@dividend+1))^00h,c,7
	goto	u1330
	goto	u1331

u1331:
	goto	l2591
u1330:
	line	19
	
l2587:
	negf	((c:___awdiv@dividend))^00h,c
	comf	((c:___awdiv@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1))^00h,c
	line	20
	
l2589:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign))^00h,c
	line	22
	
l2591:
	clrf	((c:___awdiv@quotient+1))^00h,c
	movlw	low(0)
	movwf	((c:___awdiv@quotient))^00h,c
	line	23
	
l2593:
	movf	((c:___awdiv@divisor))^00h,c,w
iorwf	((c:___awdiv@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u1341
	goto	u1340

u1341:
	goto	l2613
u1340:
	line	24
	
l2595:
	movlw	low(01h)
	movwf	((c:___awdiv@counter))^00h,c
	line	25
	goto	l2599
	line	26
	
l2597:
	bcf	status,0
	rlcf	((c:___awdiv@divisor))^00h,c
	rlcf	((c:___awdiv@divisor+1))^00h,c
	line	27
	incf	((c:___awdiv@counter))^00h,c
	line	25
	
l2599:
	
	btfss	((c:___awdiv@divisor+1))^00h,c,(15)&7
	goto	u1351
	goto	u1350
u1351:
	goto	l2597
u1350:
	line	30
	
l2601:
	bcf	status,0
	rlcf	((c:___awdiv@quotient))^00h,c
	rlcf	((c:___awdiv@quotient+1))^00h,c
	line	31
	
l2603:
		movf	((c:___awdiv@divisor))^00h,c,w
	subwf	((c:___awdiv@dividend))^00h,c,w
	movf	((c:___awdiv@divisor+1))^00h,c,w
	subwfb	((c:___awdiv@dividend+1))^00h,c,w
	btfss	status,0
	goto	u1361
	goto	u1360

u1361:
	goto	l2609
u1360:
	line	32
	
l2605:
	movf	((c:___awdiv@divisor))^00h,c,w
	subwf	((c:___awdiv@dividend))^00h,c
	movf	((c:___awdiv@divisor+1))^00h,c,w
	subwfb	((c:___awdiv@dividend+1))^00h,c
	line	33
	
l2607:
	bsf	(0+(0/8)+(c:___awdiv@quotient))^00h,c,(0)&7
	line	35
	
l2609:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1))^00h,c
	rrcf	((c:___awdiv@divisor))^00h,c
	line	36
	
l2611:
	decfsz	((c:___awdiv@counter))^00h,c
	
	goto	l2601
	line	38
	
l2613:
	movf	((c:___awdiv@sign))^00h,c,w
	btfsc	status,2
	goto	u1371
	goto	u1370
u1371:
	goto	l2617
u1370:
	line	39
	
l2615:
	negf	((c:___awdiv@quotient))^00h,c
	comf	((c:___awdiv@quotient+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1))^00h,c
	line	40
	
l2617:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	line	41
	
l985:
	return	;funcret
	callstack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_display_main_menu

;; *************** function _display_main_menu *****************
;; Defined at:
;;		line 21 in file "src/menu.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    6[COMRAM] unsigned int 
;;  key             1    8[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_clcd_print
;;		_scan_key
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2,group=0
	file	"src/menu.c"
	line	21
global __ptext38
__ptext38:
psect	text38
	file	"src/menu.c"
	line	21
	
_display_main_menu:
;incstack = 0
	callstack 29
	line	25
	
l406:
	line	26
	
l3367:
	movf	((c:_menu_index))^00h,c,w
	btfss	status,2
	goto	u2211
	goto	u2210
u2211:
	goto	l3371
u2210:
	line	27
	
l3369:
		movlw	low(STR_12)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_12)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	28
		movlw	low(STR_13)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_13)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	29
	goto	l3381
	
l3371:
		decf	((c:_menu_index))^00h,c,w
	btfss	status,2
	goto	u2221
	goto	u2220

u2221:
	goto	l3375
u2220:
	line	30
	
l3373:
		movlw	low(STR_14)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_14)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	31
		movlw	low(STR_15)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_15)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	32
	goto	l3381
	
l3375:
		movlw	2
	xorwf	((c:_menu_index))^00h,c,w
	btfss	status,2
	goto	u2231
	goto	u2230

u2231:
	goto	l3379
u2230:
	line	33
	
l3377:
		movlw	low(STR_16)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_16)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	34
		movlw	low(STR_17)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_17)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	35
	goto	l3381
	line	37
	
l3379:
		movlw	low(STR_18)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_18)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	38
		movlw	low(STR_19)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_19)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	41
	
l3381:
	call	_scan_key	;wreg free
	movwf	((c:display_main_menu@key))^00h,c
	line	43
	
l3383:
		movlw	8
	xorwf	((c:display_main_menu@key))^00h,c,w
	btfsc	status,2
	goto	u2241
	goto	u2240

u2241:
	goto	l3387
u2240:
	
l3385:
		movlw	9
	xorwf	((c:display_main_menu@key))^00h,c,w
	btfss	status,2
	goto	u2251
	goto	u2250

u2251:
	goto	l406
u2250:
	line	45
	
l3387:
	asmopt push
asmopt off
movlw	65
movwf	(??_display_main_menu+0)^00h,c
	movlw	238
u2657:
decfsz	wreg,f
	bra	u2657
	decfsz	(??_display_main_menu+0)^00h,c,f
	bra	u2657
	nop2
asmopt pop

	line	46
	
l3389:
	call	_scan_key	;wreg free
	xorwf	((c:display_main_menu@key))^00h,c,w
	btfsc	status,2
	goto	u2261
	goto	u2260
u2261:
	goto	l3393
u2260:
	goto	l406
	line	48
	
l3393:
	clrf	((c:display_main_menu@count+1))^00h,c
	movlw	low(0)
	movwf	((c:display_main_menu@count))^00h,c
	line	49
	goto	l3401
	line	51
	
l3395:
	asmopt push
asmopt off
movlw	65
movwf	(??_display_main_menu+0)^00h,c
	movlw	238
u2667:
decfsz	wreg,f
	bra	u2667
	decfsz	(??_display_main_menu+0)^00h,c,f
	bra	u2667
	nop2
asmopt pop

	line	52
	
l3397:
		movf	((c:display_main_menu@count+1))^00h,c,w
	bnz	u2271
	movlw	100
	subwf	 ((c:display_main_menu@count))^00h,c,w
	btfsc	status,0
	goto	u2271
	goto	u2270

u2271:
	goto	l3401
u2270:
	line	54
	
l3399:
	infsnz	((c:display_main_menu@count))^00h,c
	incf	((c:display_main_menu@count+1))^00h,c
	line	49
	
l3401:
	call	_scan_key	;wreg free
	xorwf	((c:display_main_menu@key))^00h,c,w
	btfsc	status,2
	goto	u2281
	goto	u2280
u2281:
	goto	l3395
u2280:
	line	57
	
l3403:
		movf	((c:display_main_menu@count+1))^00h,c,w
	bnz	u2290
	movlw	100
	subwf	 ((c:display_main_menu@count))^00h,c,w
	btfss	status,0
	goto	u2291
	goto	u2290

u2291:
	goto	l3421
u2290:
	line	58
	
l3405:
		movlw	8
	xorwf	((c:display_main_menu@key))^00h,c,w
	btfss	status,2
	goto	u2301
	goto	u2300

u2301:
	goto	l423
u2300:
	line	59
	
l3407:
	movf	((c:_menu_index))^00h,c,w
	btfss	status,2
	goto	u2311
	goto	u2310
u2311:
	goto	l3411
u2310:
	line	60
	
l3409:
	movlw	low(02h)
	movwf	((c:_state))^00h,c
	goto	l431
	line	61
	
l3411:
		decf	((c:_menu_index))^00h,c,w
	btfss	status,2
	goto	u2321
	goto	u2320

u2321:
	goto	l3415
u2320:
	line	62
	
l3413:
	movlw	low(04h)
	movwf	((c:_state))^00h,c
	goto	l431
	line	63
	
l3415:
		movlw	2
	xorwf	((c:_menu_index))^00h,c,w
	btfss	status,2
	goto	u2331
	goto	u2330

u2331:
	goto	l3419
u2330:
	line	64
	
l3417:
	movlw	low(05h)
	movwf	((c:_state))^00h,c
	goto	l431
	line	66
	
l3419:
	movlw	low(03h)
	movwf	((c:_state))^00h,c
	goto	l431
	line	67
	
l423:
	line	68
	clrf	((c:_state))^00h,c
	goto	l431
	line	74
	
l3421:
		movlw	8
	xorwf	((c:display_main_menu@key))^00h,c,w
	btfss	status,2
	goto	u2341
	goto	u2340

u2341:
	goto	l3427
u2340:
	
l3423:
	movf	((c:_menu_index))^00h,c,w
	btfsc	status,2
	goto	u2351
	goto	u2350
u2351:
	goto	l3427
u2350:
	line	75
	
l3425:
	decf	((c:_menu_index))^00h,c
	goto	l406
	line	76
	
l3427:
		movlw	9
	xorwf	((c:display_main_menu@key))^00h,c,w
	btfss	status,2
	goto	u2361
	goto	u2360

u2361:
	goto	l406
u2360:
	
l3429:
		movlw	03h-0
	cpfslt	((c:_menu_index))^00h,c
	goto	u2371
	goto	u2370

u2371:
	goto	l406
u2370:
	line	77
	
l3431:
	incf	((c:_menu_index))^00h,c
	goto	l406
	line	80
	
l431:
	return	;funcret
	callstack 0
GLOBAL	__end_of_display_main_menu
	__end_of_display_main_menu:
	signat	_display_main_menu,89
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
;;		_display_main_menu
;;		_read_mkp
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2,group=0
	file	"src/mkp.c"
	line	13
global __ptext39
__ptext39:
psect	text39
	file	"src/mkp.c"
	line	13
	
_scan_key:
;incstack = 0
	callstack 28
	line	15
	
l2715:
	bcf	((c:3969))^0f00h,c,5	;volatile
	line	16
	bsf	((c:3969))^0f00h,c,6	;volatile
	line	17
	bsf	((c:3969))^0f00h,c,7	;volatile
	line	19
	btfsc	((c:3969))^0f00h,c,1	;volatile
	goto	u1491
	goto	u1490
u1491:
	goto	l451
u1490:
	line	21
	
l2717:
	movlw	(01h)&0ffh
	goto	l452
	line	22
	
l451:
	btfsc	((c:3969))^0f00h,c,2	;volatile
	goto	u1501
	goto	u1500
u1501:
	goto	l454
u1500:
	line	24
	
l2723:
	movlw	(04h)&0ffh
	goto	l452
	line	25
	
l454:
	btfsc	((c:3969))^0f00h,c,3	;volatile
	goto	u1511
	goto	u1510
u1511:
	goto	l456
u1510:
	line	27
	
l2729:
	movlw	(07h)&0ffh
	goto	l452
	line	28
	
l456:
	btfsc	((c:3969))^0f00h,c,4	;volatile
	goto	u1521
	goto	u1520
u1521:
	goto	l453
u1520:
	line	30
	
l2735:
	movlw	(0Ah)&0ffh
	goto	l452
	line	31
	
l453:
	line	32
	bsf	((c:3969))^0f00h,c,5	;volatile
	line	33
	bcf	((c:3969))^0f00h,c,6	;volatile
	line	34
	bsf	((c:3969))^0f00h,c,7	;volatile
	line	36
	btfsc	((c:3969))^0f00h,c,1	;volatile
	goto	u1531
	goto	u1530
u1531:
	goto	l459
u1530:
	line	38
	
l2739:
	movlw	(02h)&0ffh
	goto	l452
	line	39
	
l459:
	btfsc	((c:3969))^0f00h,c,2	;volatile
	goto	u1541
	goto	u1540
u1541:
	goto	l461
u1540:
	line	41
	
l2745:
	movlw	(05h)&0ffh
	goto	l452
	line	42
	
l461:
	btfsc	((c:3969))^0f00h,c,3	;volatile
	goto	u1551
	goto	u1550
u1551:
	goto	l463
u1550:
	line	44
	
l2751:
	movlw	(08h)&0ffh
	goto	l452
	line	45
	
l463:
	btfsc	((c:3969))^0f00h,c,4	;volatile
	goto	u1561
	goto	u1560
u1561:
	goto	l460
u1560:
	line	47
	
l2757:
	movlw	(0Bh)&0ffh
	goto	l452
	line	48
	
l460:
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
	goto	u1571
	goto	u1570
u1571:
	goto	l466
u1570:
	line	56
	
l2761:
	movlw	(03h)&0ffh
	goto	l452
	line	57
	
l466:
	btfsc	((c:3969))^0f00h,c,2	;volatile
	goto	u1581
	goto	u1580
u1581:
	goto	l468
u1580:
	line	59
	
l2767:
	movlw	(06h)&0ffh
	goto	l452
	line	60
	
l468:
	btfsc	((c:3969))^0f00h,c,3	;volatile
	goto	u1591
	goto	u1590
u1591:
	goto	l470
u1590:
	line	62
	
l2773:
	movlw	(09h)&0ffh
	goto	l452
	line	63
	
l470:
	btfsc	((c:3969))^0f00h,c,4	;volatile
	goto	u1601
	goto	u1600
u1601:
	goto	l2783
u1600:
	line	65
	
l2779:
	movlw	(0Ch)&0ffh
	goto	l452
	line	67
	
l2783:
	movlw	(0FFh)&0ffh
	line	68
	
l452:
	return	;funcret
	callstack 0
GLOBAL	__end_of_scan_key
	__end_of_scan_key:
	signat	_scan_key,89
	global	_clcd_print

;; *************** function _clcd_print *****************
;; Defined at:
;;		line 50 in file "src/clcd.c"
;; Parameters:    Size  Location     Type
;;  data            2    2[COMRAM] PTR const unsigned char 
;;		 -> STR_21(18), STR_20(15), view_log@line2(16), view_log@line1(16), 
;;		 -> STR_19(18), STR_18(17), STR_17(17), STR_16(18), 
;;		 -> STR_15(18), STR_14(17), STR_13(18), STR_12(17), 
;;		 -> STR_11(18), STR_10(18), STR_9(21), STR_8(15), 
;;		 -> STR_7(15), STR_6(16), STR_5(19), view_dashboard@line2(16), 
;;		 -> view_dashboard@line1(16), 
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
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_view_dashboard
;;		_set_time
;;		_main
;;		_display_main_menu
;;		_view_log
;; This function uses a non-reentrant model
;;
psect	text40,class=CODE,space=0,reloc=2,group=0
	file	"src/clcd.c"
	line	50
global __ptext40
__ptext40:
psect	text40
	file	"src/clcd.c"
	line	50
	
_clcd_print:
;incstack = 0
	callstack 29
	line	52
	
l2939:
	movlw	low(0)
	movwf	((c:clcd_write@control))^00h,c
	movf	((c:clcd_print@addr))^00h,c,w
	
	call	_clcd_write
	line	53
	goto	l2945
	line	55
	
l2941:
	movlw	low(01h)
	movwf	((c:clcd_write@control))^00h,c
	movff	(c:clcd_print@data),tblptrl
	movff	(c:clcd_print@data+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u1737

	tblrd	*
	
	movf	tablat,w
	bra	u1730
u1737:
	movff	tblptrl,fsr1l
	movff	tblptrh,fsr1h
	movf	indf1,w
u1730:
	
	call	_clcd_write
	
l2943:
	infsnz	((c:clcd_print@data))^00h,c
	incf	((c:clcd_print@data+1))^00h,c
	line	53
	
l2945:
	movff	(c:clcd_print@data),tblptrl
	movff	(c:clcd_print@data+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u1747

	tblrd	*
	
	movf	tablat,w
	bra	u1740
u1747:
	movff	tblptrl,fsr1l
	movff	tblptrh,fsr1h
	movf	indf1,w
u1740:
	iorlw	0
	btfss	status,2
	goto	u1751
	goto	u1750
u1751:
	goto	l2941
u1750:
	line	57
	
l177:
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
;;		_clcd_putch
;;		_clcd_print
;; This function uses a non-reentrant model
;;
psect	text41,class=CODE,space=0,reloc=2,group=0
	line	25
global __ptext41
__ptext41:
psect	text41
	file	"src/clcd.c"
	line	25
	
_clcd_write:
;incstack = 0
	callstack 28
	line	27
	movwf	((c:clcd_write@byte))^00h,c
	
l2675:
	btfsc	((c:clcd_write@control))^00h,c,0
	goto	u1451
	goto	u1450
u1451:
	bsf	c:(31761/8),(31761)&7	;volatile
	goto	u1465
u1450:
	bcf	c:(31761/8),(31761)&7	;volatile
u1465:
	line	28
	
l2677:
	movff	(c:clcd_write@byte),(c:3971)	;volatile
	line	30
	
l2679:
	bsf	c:(31762/8),(31762)&7	;volatile
	line	31
	
l2681:
	bcf	c:(31762/8),(31762)&7	;volatile
	line	32
	
l2683:
	bsf	c:(31919/8),(31919)&7	;volatile
	line	33
	
l2685:
	bsf	c:(31760/8),(31760)&7	;volatile
	line	34
	
l2687:
	bcf	c:(31761/8),(31761)&7	;volatile
	line	37
	
l2689:
	bsf	c:(31762/8),(31762)&7	;volatile
	line	38
	
l2691:
	bcf	c:(31762/8),(31762)&7	;volatile
	line	39
	
l2693:
	btfsc	c:(31775/8),(31775)&7	;volatile
	goto	u1471
	goto	u1470
u1471:
	goto	l2689
u1470:
	
l167:
	line	40
	bcf	c:(31760/8),(31760)&7	;volatile
	line	41
	bcf	c:(31919/8),(31919)&7	;volatile
	line	42
	
l168:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clcd_write
	__end_of_clcd_write:
	signat	_clcd_write,8313
	global	_clear_log

;; *************** function _clear_log *****************
;; Defined at:
;;		line 76 in file "src/event_store.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, cstack
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
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_i2c_eeprom_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text42,class=CODE,space=0,reloc=2,group=0
	file	"src/event_store.c"
	line	76
global __ptext42
__ptext42:
psect	text42
	file	"src/event_store.c"
	line	76
	
_clear_log:
;incstack = 0
	callstack 27
	line	78
	
l3347:
	clrf	((c:_write_index))^00h,c
	line	79
	clrf	((c:_event_count))^00h,c
	line	81
	
l3349:
	movff	(c:_write_index),(c:i2c_eeprom_write@data)
	movlw	(03h)&0ffh
	
	call	_i2c_eeprom_write
	line	82
	movff	(c:_event_count),(c:i2c_eeprom_write@data)
	movlw	(04h)&0ffh
	
	call	_i2c_eeprom_write
	line	83
	
l240:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clear_log
	__end_of_clear_log:
	signat	_clear_log,89
	global	_i2c_eeprom_write

;; *************** function _i2c_eeprom_write *****************
;; Defined at:
;;		line 6 in file "src/eeprom.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;;  data            1   12[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1   14[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		_i2c_is_nack
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_init_event_log
;;		_event_store
;;		_clear_log
;;		_i2c_eeprom_save_data
;; This function uses a non-reentrant model
;;
psect	text43,class=CODE,space=0,reloc=2,group=0
	file	"src/eeprom.c"
	line	6
global __ptext43
__ptext43:
psect	text43
	file	"src/eeprom.c"
	line	6
	
_i2c_eeprom_write:
;incstack = 0
	callstack 28
	line	8
	movwf	((c:i2c_eeprom_write@address))^00h,c
	
l2695:
	call	_i2c_start	;wreg free
	line	9
	
l2697:
	movlw	(0A0h)&0ffh
	
	call	_i2c_write
	line	10
	
l2699:
	call	_i2c_is_nack	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u1481
	goto	u1480
u1481:
	goto	l2705
u1480:
	line	12
	
l2701:
	call	_i2c_stop	;wreg free
	goto	l195
	line	15
	
l2705:
	movf	((c:i2c_eeprom_write@address))^00h,c,w
	
	call	_i2c_write
	line	16
	movf	((c:i2c_eeprom_write@data))^00h,c,w
	
	call	_i2c_write
	line	18
	
l2707:
	call	_i2c_stop	;wreg free
	line	19
	
l2709:
	asmopt push
asmopt off
movlw	33
movwf	(??_i2c_eeprom_write+0)^00h,c
	movlw	118
u2677:
decfsz	wreg,f
	bra	u2677
	decfsz	(??_i2c_eeprom_write+0)^00h,c,f
	bra	u2677
	nop2
asmopt pop

	line	20
	
l195:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_eeprom_write
	__end_of_i2c_eeprom_write:
	signat	_i2c_eeprom_write,8313
	global	_i2c_write

;; *************** function _i2c_write *****************
;; Defined at:
;;		line 46 in file "src/i2c.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1   11[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, cstack
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
;;		_i2c_idle
;; This function is called by:
;;		_i2c_eeprom_write
;;		_i2c_eeprom_read
;;		_rtc_write_check
;;		_write_time_rtc
;;		_rtc_write_reg
;;		_rtc_read_reg
;;		_rtc_set_time
;; This function uses a non-reentrant model
;;
psect	text44,class=CODE,space=0,reloc=2,group=0
	file	"src/i2c.c"
	line	46
global __ptext44
__ptext44:
psect	text44
	file	"src/i2c.c"
	line	46
	
_i2c_write:
;incstack = 0
	callstack 27
	line	48
	movwf	((c:i2c_write@data))^00h,c
	
l2547:
	bcf	c:(31987/8),(31987)&7	;volatile
	line	49
	
l2549:
	movff	(c:i2c_write@data),(c:4041)	;volatile
	line	50
	
l2551:
	call	_i2c_idle	;wreg free
	line	51
	
l293:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_write
	__end_of_i2c_write:
	signat	_i2c_write,4217
	global	_i2c_stop

;; *************** function _i2c_stop *****************
;; Defined at:
;;		line 33 in file "src/i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
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
;;		_i2c_idle
;; This function is called by:
;;		_i2c_eeprom_write
;;		_i2c_eeprom_read
;;		_write_time_rtc
;;		_rtc_read
;;		_rtc_write_reg
;;		_rtc_read_reg
;;		_rtc_set_time
;; This function uses a non-reentrant model
;;
psect	text45,class=CODE,space=0,reloc=2,group=0
	line	33
global __ptext45
__ptext45:
psect	text45
	file	"src/i2c.c"
	line	33
	
_i2c_stop:
;incstack = 0
	callstack 27
	line	35
	
l2557:
	bcf	c:(31987/8),(31987)&7	;volatile
	line	36
	bsf	c:(32298/8),(32298)&7	;volatile
	line	37
	
l2559:
	call	_i2c_idle	;wreg free
	line	38
	
l287:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_stop
	__end_of_i2c_stop:
	signat	_i2c_stop,89
	global	_i2c_start

;; *************** function _i2c_start *****************
;; Defined at:
;;		line 26 in file "src/i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
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
;;		_i2c_idle
;; This function is called by:
;;		_i2c_eeprom_write
;;		_i2c_eeprom_read
;;		_write_time_rtc
;;		_rtc_read
;;		_rtc_write_reg
;;		_rtc_read_reg
;;		_rtc_set_time
;; This function uses a non-reentrant model
;;
psect	text46,class=CODE,space=0,reloc=2,group=0
	line	26
global __ptext46
__ptext46:
psect	text46
	file	"src/i2c.c"
	line	26
	
_i2c_start:
;incstack = 0
	callstack 27
	line	28
	
l2543:
	bcf	c:(31987/8),(31987)&7	;volatile
	line	29
	bsf	c:(32296/8),(32296)&7	;volatile
	line	30
	
l2545:
	call	_i2c_idle	;wreg free
	line	31
	
l284:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_start
	__end_of_i2c_start:
	signat	_i2c_start,89
	global	_i2c_idle

;; *************** function _i2c_idle *****************
;; Defined at:
;;		line 20 in file "src/i2c.c"
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
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_rep_start
;;		_i2c_write
;;		_i2c_rx_mode
;;		_i2c_no_ack
;;		_i2c_ack
;; This function uses a non-reentrant model
;;
psect	text47,class=CODE,space=0,reloc=2,group=0
	line	20
global __ptext47
__ptext47:
psect	text47
	file	"src/i2c.c"
	line	20
	
_i2c_idle:
;incstack = 0
	callstack 25
	line	22
	
l2537:
	line	23
	
l278:
	line	22
	btfss	c:(31987/8),(31987)&7	;volatile
	goto	u1311
	goto	u1310
u1311:
	goto	l278
u1310:
	
l280:
	line	24
	bcf	c:(31987/8),(31987)&7	;volatile
	line	25
	
l281:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_idle
	__end_of_i2c_idle:
	signat	_i2c_idle,89
	global	_i2c_is_nack

;; *************** function _i2c_is_nack *****************
;; Defined at:
;;		line 83 in file "src/i2c.c"
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
;;		_i2c_eeprom_write
;;		_rtc_write_check
;; This function uses a non-reentrant model
;;
psect	text48,class=CODE,space=0,reloc=2,group=0
	line	83
global __ptext48
__ptext48:
psect	text48
	file	"src/i2c.c"
	line	83
	
_i2c_is_nack:
;incstack = 0
	callstack 27
	
l2553:
	movlw	0
	btfsc	c:(32302/8),(32302)&7	;volatile
	movlw	1
	
l308:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_is_nack
	__end_of_i2c_is_nack:
	signat	_i2c_is_nack,89
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
