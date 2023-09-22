opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 7503"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 11 "F:\MPLAB WORK SPACE\hitech c\dino game\dinogame.c"
	psect config,class=CONFIG,delta=2 ;#
# 11 "F:\MPLAB WORK SPACE\hitech c\dino game\dinogame.c"
	dw 0X1F7A ;#
	FNCALL	_main,_character
	FNCALL	_main,_cmd
	FNCALL	_main,_data
	FNCALL	_main,_jump
	FNCALL	_main,_score
	FNCALL	_main,_stop
	FNCALL	_main,_main
	FNCALL	_score,_cmd
	FNCALL	_score,_data
	FNCALL	_score,_jump
	FNCALL	_stop,_cmd
	FNCALL	_stop,_data
	FNCALL	_jump,_cmd
	FNCALL	_jump,_data
	FNCALL	_character,_cmd
	FNCALL	_character,_data
	FNROOT	_main
	global	main@F1103
	global	main@F1105
	global	main@F1107
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"F:\MPLAB WORK SPACE\hitech c\dino game\dinogame.c"
	line	43

;initializer for main@F1103
	retlw	03h
	retlw	02h
	retlw	013h
	retlw	016h
	retlw	01Fh
	retlw	0Eh
	retlw	0Ah
	retlw	0Ah
	line	45

;initializer for main@F1105
	retlw	0Eh
	retlw	0Eh
	retlw	04h
	retlw	01Eh
	retlw	04h
	retlw	04h
	retlw	01Eh
	retlw	0
	line	47

;initializer for main@F1107
	retlw	014h
	retlw	014h
	retlw	015h
	retlw	015h
	retlw	01Dh
	retlw	06h
	retlw	04h
	retlw	01Fh
	global	main@F1109
	global	_c
	global	_i
	global	_k
	global	_PORTD
_PORTD	set	8
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC3
_RC3	set	59
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISC3
_TRISC3	set	1083
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	50	;'2'
	retlw	51	;'3'
	retlw	52	;'4'
	retlw	53	;'5'
	retlw	54	;'6'
	retlw	55	;'7'
	retlw	56	;'8'
	retlw	57	;'9'
	retlw	0
psect	strings
	
STR_3:	
	retlw	71	;'G'
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	86	;'V'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	0
psect	strings
	
STR_2:	
	retlw	115	;'s'
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	file	"dinogame.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
main@F1109:
       ds      8

_c:
       ds      2

_i:
       ds      2

_k:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"F:\MPLAB WORK SPACE\hitech c\dino game\dinogame.c"
	line	43
main@F1103:
       ds      8

psect	dataBANK0
	file	"F:\MPLAB WORK SPACE\hitech c\dino game\dinogame.c"
	line	45
main@F1105:
       ds      8

psect	dataBANK0
	file	"F:\MPLAB WORK SPACE\hitech c\dino game\dinogame.c"
	line	47
main@F1107:
       ds      8

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
	clrf	((__pbssBANK0)+10)&07Fh
	clrf	((__pbssBANK0)+11)&07Fh
	clrf	((__pbssBANK0)+12)&07Fh
	clrf	((__pbssBANK0)+13)&07Fh
global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+24)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_score
?_score:	; 0 bytes @ 0x0
	global	?_stop
?_stop:	; 0 bytes @ 0x0
	global	?_cmd
?_cmd:	; 0 bytes @ 0x0
	global	??_cmd
??_cmd:	; 0 bytes @ 0x0
	global	?_data
?_data:	; 0 bytes @ 0x0
	global	??_data
??_data:	; 0 bytes @ 0x0
	global	?_jump
?_jump:	; 2 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	ds	2
	global	cmd@command
cmd@command:	; 1 bytes @ 0x2
	global	data@data1
data@data1:	; 1 bytes @ 0x2
	ds	1
	global	??_jump
??_jump:	; 0 bytes @ 0x3
	global	??_stop
??_stop:	; 0 bytes @ 0x3
	global	?_character
?_character:	; 0 bytes @ 0x3
	global	character@location
character@location:	; 1 bytes @ 0x3
	ds	1
	global	??_character
??_character:	; 0 bytes @ 0x4
	ds	2
	global	??_score
??_score:	; 0 bytes @ 0x6
	global	character@car
character@car:	; 1 bytes @ 0x6
	global	stop@stop
stop@stop:	; 1 bytes @ 0x6
	ds	1
	global	character@i
character@i:	; 2 bytes @ 0x7
	global	stop@i
stop@i:	; 2 bytes @ 0x7
	ds	2
	global	score@name
score@name:	; 1 bytes @ 0x9
	ds	1
	global	score@num
score@num:	; 1 bytes @ 0xA
	ds	1
	global	score@j
score@j:	; 2 bytes @ 0xB
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	4
	global	main@arr
main@arr:	; 8 bytes @ 0x4
	ds	8
	global	main@arr1
main@arr1:	; 8 bytes @ 0xC
	ds	8
	global	main@arr2
main@arr2:	; 8 bytes @ 0x14
	ds	8
	global	main@arr3
main@arr3:	; 8 bytes @ 0x1C
	ds	8
	global	main@i
main@i:	; 2 bytes @ 0x24
	ds	2
;;Data sizes: Strings 30, constant 0, data 24, bss 14, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
;; BANK0           80     38      76
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_jump	int  size(1) Largest target is 0
;;
;; stop@stop	PTR unsigned char  size(1) Largest target is 10
;;		 -> STR_3(CODE[10]), 
;;
;; score@name	PTR unsigned char  size(1) Largest target is 9
;;		 -> STR_2(CODE[9]), 
;;
;; score@num	PTR unsigned char  size(1) Largest target is 11
;;		 -> STR_1(CODE[11]), 
;;
;; character@car	PTR unsigned char  size(1) Largest target is 8
;;		 -> main@arr3(BANK0[8]), main@arr2(BANK0[8]), main@arr1(BANK0[8]), main@arr(BANK0[8]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_score
;;   _score->_jump
;;   _stop->_cmd
;;   _stop->_data
;;   _jump->_cmd
;;   _jump->_data
;;   _character->_cmd
;;   _character->_data
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                38    38      0    1400
;;                                              0 BANK0     38    38      0
;;                          _character
;;                                _cmd
;;                               _data
;;                               _jump
;;                              _score
;;                               _stop
;;                               _main
;; ---------------------------------------------------------------------------------
;; (1) _score                                                7     7      0     224
;;                                              6 COMMON     7     7      0
;;                                _cmd
;;                               _data
;;                               _jump
;; ---------------------------------------------------------------------------------
;; (1) _stop                                                 6     6      0     135
;;                                              3 COMMON     6     6      0
;;                                _cmd
;;                               _data
;; ---------------------------------------------------------------------------------
;; (2) _jump                                                 3     3      0      44
;;                                              3 COMMON     3     3      0
;;                                _cmd
;;                               _data
;; ---------------------------------------------------------------------------------
;; (1) _character                                            6     5      1     156
;;                                              3 COMMON     6     5      1
;;                                _cmd
;;                               _data
;; ---------------------------------------------------------------------------------
;; (2) _data                                                 3     3      0      22
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _cmd                                                  3     3      0      22
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _character
;;     _cmd
;;     _data
;;   _cmd
;;   _data
;;   _jump
;;     _cmd
;;     _data
;;   _score
;;     _cmd
;;     _data
;;     _jump
;;       _cmd
;;       _data
;;   _stop
;;     _cmd
;;     _data
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      5C      12        0.0%
;;ABS                  0      0      59       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       3       2        0.0%
;;BANK0               50     26      4C       5       95.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      D       D       1       92.9%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 39 in file "F:\MPLAB WORK SPACE\hitech c\dino game\dinogame.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  arr3            8   28[BANK0 ] unsigned char [8]
;;  arr2            8   20[BANK0 ] unsigned char [8]
;;  arr1            8   12[BANK0 ] unsigned char [8]
;;  arr             8    4[BANK0 ] unsigned char [8]
;;  i               2   36[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  2  709[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      34       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      38       0       0       0
;;Total ram usage:       38 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_character
;;		_cmd
;;		_data
;;		_jump
;;		_score
;;		_stop
;;		_main
;; This function is called by:
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\MPLAB WORK SPACE\hitech c\dino game\dinogame.c"
	line	39
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	40
	
l2168:	
;dinogame.c: 40: TRISC = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	41
;dinogame.c: 41: TRISD = 0;
	clrf	(136)^080h	;volatile
	line	42
	
l2170:	
;dinogame.c: 42: TRISC3 = 1;
	bsf	(1083/8)^080h,(1083)&7
	line	43
	
l2172:	
;dinogame.c: 43: char arr[8]={0x03,0x02,0x13,0x16,0x1F,0x0E,0x0A,0x0A};
	movlw	(main@arr)&0ffh
	movwf	fsr0
	movlw	low(main@F1103)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	8
	movwf	((??_main+0)+0+2)
u2430:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2430
	line	44
	
l2174:	
;dinogame.c: 44: character(arr,0);
	clrf	(?_character)
	movlw	(main@arr)&0ffh
	fcall	_character
	line	45
	
l2176:	
;dinogame.c: 45: char arr1[8]={0x0E,0x0E,0x04,0x1E,0x04,0x04,0x1E,0x00};
	movlw	(main@arr1)&0ffh
	movwf	fsr0
	movlw	low(main@F1105)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	8
	movwf	((??_main+0)+0+2)
u2440:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2440
	line	46
	
l2178:	
;dinogame.c: 46: character(arr1,1);
	clrf	(?_character)
	bsf	status,0
	rlf	(?_character),f
	movlw	(main@arr1)&0ffh
	fcall	_character
	line	47
	
l2180:	
;dinogame.c: 47: char arr2[8]={0x14,0x14,0x15,0x15,0x1D,0x06,0X04,0x1F};
	movlw	(main@arr2)&0ffh
	movwf	fsr0
	movlw	low(main@F1107)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	8
	movwf	((??_main+0)+0+2)
u2450:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2450
	line	48
	
l2182:	
;dinogame.c: 48: character(arr2,2);
	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_character)
	movlw	(main@arr2)&0ffh
	fcall	_character
	line	49
	
l2184:	
;dinogame.c: 49: char arr3[8]={0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00};
	movlw	(main@arr3)&0ffh
	movwf	fsr0
	movlw	low(main@F1109)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	8
	movwf	((??_main+0)+0+2)
u2460:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2460
	line	50
	
l2186:	
;dinogame.c: 50: character(arr3,3);
	movlw	(03h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_character)
	movlw	(main@arr3)&0ffh
	fcall	_character
	line	51
	
l2188:	
;dinogame.c: 51: cmd(0x01);
	movlw	(01h)
	fcall	_cmd
	line	52
	
l2190:	
;dinogame.c: 52: cmd(0x0C);
	movlw	(0Ch)
	fcall	_cmd
	line	53
	
l2192:	
;dinogame.c: 53: cmd(0x38);
	movlw	(038h)
	fcall	_cmd
	line	54
	
l2194:	
;dinogame.c: 54: cmd(0xc0);
	movlw	(0C0h)
	fcall	_cmd
	line	55
	
l2196:	
;dinogame.c: 55: data(0);
	movlw	(0)
	fcall	_data
	line	56
	
l2198:	
;dinogame.c: 56: cmd(0xcf);
	movlw	(0CFh)
	fcall	_cmd
	line	57
	
l2200:	
;dinogame.c: 57: data(2);
	movlw	(02h)
	fcall	_data
	line	58
	
l2202:	
;dinogame.c: 58: int i=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	line	59
	
l2204:	
;dinogame.c: 59: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2527:
	decfsz	((??_main+0)+0),f
	goto	u2527
	decfsz	((??_main+0)+0+1),f
	goto	u2527
	decfsz	((??_main+0)+0+2),f
	goto	u2527
opt asmopt_on

	goto	l2206
	line	60
;dinogame.c: 60: while(1)
	
l718:	
	line	63
	
l2206:	
;dinogame.c: 61: {
;dinogame.c: 63: if(RC3 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(59/8),(59)&7
	goto	u2471
	goto	u2470
u2471:
	goto	l2210
u2470:
	line	65
	
l2208:	
;dinogame.c: 64: {
;dinogame.c: 65: jump();
	fcall	_jump
	goto	l2210
	line	66
	
l719:	
	line	67
	
l2210:	
;dinogame.c: 66: }
;dinogame.c: 67: score();
	fcall	_score
	line	68
	
l2212:	
;dinogame.c: 68: data(3);
	movlw	(03h)
	fcall	_data
	line	69
	
l2214:	
;dinogame.c: 69: cmd(0xcf - c);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decf	(_c),w
	xorlw	0ffh
	addlw	0CFh
	fcall	_cmd
	line	70
	
l2216:	
;dinogame.c: 70: data(3);
	movlw	(03h)
	fcall	_data
	line	71
	
l2218:	
;dinogame.c: 71: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u2537:
	decfsz	((??_main+0)+0),f
	goto	u2537
	decfsz	((??_main+0)+0+1),f
	goto	u2537
	decfsz	((??_main+0)+0+2),f
	goto	u2537
opt asmopt_on

	line	72
	
l2220:	
;dinogame.c: 72: data(3);
	movlw	(03h)
	fcall	_data
	line	73
	
l2222:	
;dinogame.c: 73: cmd(0xcf - c);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decf	(_c),w
	xorlw	0ffh
	addlw	0CFh
	fcall	_cmd
	line	74
	
l2224:	
;dinogame.c: 74: data(2);
	movlw	(02h)
	fcall	_data
	line	75
	
l2226:	
;dinogame.c: 75: c++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_c),f
	skipnc
	incf	(_c+1),f
	movlw	high(01h)
	addwf	(_c+1),f
	line	76
	
l2228:	
;dinogame.c: 76: if(c>15 && RC3 == 0)
	movf	(_c+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2485
	movlw	low(010h)
	subwf	(_c),w
u2485:

	skipc
	goto	u2481
	goto	u2480
u2481:
	goto	l2238
u2480:
	
l2230:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(59/8),(59)&7
	goto	u2491
	goto	u2490
u2491:
	goto	l2238
u2490:
	line	78
	
l2232:	
;dinogame.c: 77: {
;dinogame.c: 78: stop();
	fcall	_stop
	line	79
	
l2234:	
;dinogame.c: 79: cmd(0x01);
	movlw	(01h)
	fcall	_cmd
	line	80
	
l2236:	
;dinogame.c: 80: main();
	fcall	_main
	goto	l2238
	line	81
	
l720:	
	line	82
	
l2238:	
;dinogame.c: 81: }
;dinogame.c: 82: if(c>15)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2505
	movlw	low(010h)
	subwf	(_c),w
u2505:

	skipc
	goto	u2501
	goto	u2500
u2501:
	goto	l2248
u2500:
	line	84
	
l2240:	
;dinogame.c: 83: {
;dinogame.c: 84: cmd(0xc0);
	movlw	(0C0h)
	fcall	_cmd
	line	85
;dinogame.c: 85: data(3);
	movlw	(03h)
	fcall	_data
	line	86
	
l2242:	
;dinogame.c: 86: c=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_c)
	clrf	(_c+1)
	line	87
	
l2244:	
;dinogame.c: 87: cmd(0xc0);
	movlw	(0C0h)
	fcall	_cmd
	line	88
	
l2246:	
;dinogame.c: 88: data(0);
	movlw	(0)
	fcall	_data
	goto	l2248
	line	89
	
l721:	
	line	90
	
l2248:	
;dinogame.c: 89: }
;dinogame.c: 90: if(RC3 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(59/8),(59)&7
	goto	u2511
	goto	u2510
u2511:
	goto	l2206
u2510:
	line	91
	
l2250:	
;dinogame.c: 91: jump();
	fcall	_jump
	goto	l2206
	
l722:	
	goto	l2206
	line	93
	
l723:	
	line	60
	goto	l2206
	
l724:	
	line	94
	
l725:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_score
psect	text175,local,class=CODE,delta=2
global __ptext175
__ptext175:

;; *************** function _score *****************
;; Defined at:
;;		line 96 in file "F:\MPLAB WORK SPACE\hitech c\dino game\dinogame.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               2   11[COMMON] int 
;;  num             1   10[COMMON] PTR unsigned char 
;;		 -> STR_1(11), 
;;  name            1    9[COMMON] PTR unsigned char 
;;		 -> STR_2(9), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_cmd
;;		_data
;;		_jump
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text175
	file	"F:\MPLAB WORK SPACE\hitech c\dino game\dinogame.c"
	line	96
	global	__size_of_score
	__size_of_score	equ	__end_of_score-_score
	
_score:	
	opt	stack 5
; Regs used in _score: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	97
	
l2132:	
;dinogame.c: 97: char *num="0123456789";
	movlw	((STR_1-__stringbase))&0ffh
	movwf	(??_score+0)+0
	movf	(??_score+0)+0,w
	movwf	(score@num)
	line	98
;dinogame.c: 98: char *name="score : ";
	movlw	((STR_2-__stringbase))&0ffh
	movwf	(??_score+0)+0
	movf	(??_score+0)+0,w
	movwf	(score@name)
	line	99
	
l2134:	
;dinogame.c: 99: cmd(0x82);
	movlw	(082h)
	fcall	_cmd
	line	100
	
l2136:	
;dinogame.c: 100: for(int j=0;j<7;j++)
	clrf	(score@j)
	clrf	(score@j+1)
	
l2138:	
	movf	(score@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2385
	movlw	low(07h)
	subwf	(score@j),w
u2385:

	skipc
	goto	u2381
	goto	u2380
u2381:
	goto	l2142
u2380:
	goto	l2148
	
l2140:	
	goto	l2148
	line	101
	
l728:	
	
l2142:	
;dinogame.c: 101: data(name[j]);
	movf	(score@j),w
	addwf	(score@name),w
	movwf	fsr0
	fcall	stringdir
	fcall	_data
	line	100
	
l2144:	
	movlw	low(01h)
	addwf	(score@j),f
	skipnc
	incf	(score@j+1),f
	movlw	high(01h)
	addwf	(score@j+1),f
	
l2146:	
	movf	(score@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2395
	movlw	low(07h)
	subwf	(score@j),w
u2395:

	skipc
	goto	u2391
	goto	u2390
u2391:
	goto	l2142
u2390:
	goto	l2148
	
l729:	
	line	102
	
l2148:	
;dinogame.c: 102: cmd(0x8A);
	movlw	(08Ah)
	fcall	_cmd
	line	103
	
l2150:	
;dinogame.c: 103: data(num[k]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_k),w
	addwf	(score@num),w
	movwf	fsr0
	fcall	stringdir
	fcall	_data
	line	104
	
l2152:	
;dinogame.c: 104: cmd(0x8B);
	movlw	(08Bh)
	fcall	_cmd
	line	105
;dinogame.c: 105: data(num[i]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_i),w
	addwf	(score@num),w
	movwf	fsr0
	fcall	stringdir
	fcall	_data
	line	106
	
l2154:	
;dinogame.c: 106: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_score+0)+0+2),f
movlw	136
movwf	((??_score+0)+0+1),f
	movlw	86
movwf	((??_score+0)+0),f
u2547:
	decfsz	((??_score+0)+0),f
	goto	u2547
	decfsz	((??_score+0)+0+1),f
	goto	u2547
	decfsz	((??_score+0)+0+2),f
	goto	u2547
opt asmopt_on

	line	108
	
l2156:	
;dinogame.c: 108: if(i>10)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2405
	movlw	low(0Bh)
	subwf	(_i),w
u2405:

	skipc
	goto	u2401
	goto	u2400
u2401:
	goto	l730
u2400:
	line	110
	
l2158:	
;dinogame.c: 109: {
;dinogame.c: 110: i=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_i)
	clrf	(_i+1)
	line	111
	
l2160:	
;dinogame.c: 111: k++;
	movlw	low(01h)
	addwf	(_k),f
	skipnc
	incf	(_k+1),f
	movlw	high(01h)
	addwf	(_k+1),f
	line	112
	
l2162:	
;dinogame.c: 112: if(k==9)
	movlw	09h
	xorwf	(_k),w
	iorwf	(_k+1),w
	skipz
	goto	u2411
	goto	u2410
u2411:
	goto	l734
u2410:
	line	113
	
l2164:	
;dinogame.c: 113: k=0;
	clrf	(_k)
	clrf	(_k+1)
	goto	l734
	
l731:	
	line	114
;dinogame.c: 114: }
	goto	l734
	line	115
	
l730:	
;dinogame.c: 115: else if(RC3 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(59/8),(59)&7
	goto	u2421
	goto	u2420
u2421:
	goto	l734
u2420:
	line	116
	
l2166:	
;dinogame.c: 116: jump();
	fcall	_jump
	goto	l734
	
l733:	
	goto	l734
	line	117
	
l732:	
	
l734:	
	return
	opt stack 0
GLOBAL	__end_of_score
	__end_of_score:
;; =============== function _score ends ============

	signat	_score,88
	global	_stop
psect	text176,local,class=CODE,delta=2
global __ptext176
__ptext176:

;; *************** function _stop *****************
;; Defined at:
;;		line 133 in file "F:\MPLAB WORK SPACE\hitech c\dino game\dinogame.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    7[COMMON] int 
;;  stop            1    6[COMMON] PTR unsigned char 
;;		 -> STR_3(10), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_cmd
;;		_data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text176
	file	"F:\MPLAB WORK SPACE\hitech c\dino game\dinogame.c"
	line	133
	global	__size_of_stop
	__size_of_stop	equ	__end_of_stop-_stop
	
_stop:	
	opt	stack 6
; Regs used in _stop: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	134
	
l2114:	
;dinogame.c: 134: cmd(0x01);
	movlw	(01h)
	fcall	_cmd
	line	135
;dinogame.c: 135: cmd(0x80);
	movlw	(080h)
	fcall	_cmd
	line	136
	
l2116:	
;dinogame.c: 136: char *stop="GAME OVER";
	movlw	((STR_3-__stringbase))&0ffh
	movwf	(??_stop+0)+0
	movf	(??_stop+0)+0,w
	movwf	(stop@stop)
	line	137
	
l2118:	
;dinogame.c: 137: for(int i=0;i<9;i++)
	clrf	(stop@i)
	clrf	(stop@i+1)
	
l2120:	
	movf	(stop@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2365
	movlw	low(09h)
	subwf	(stop@i),w
u2365:

	skipc
	goto	u2361
	goto	u2360
u2361:
	goto	l2124
u2360:
	goto	l743
	
l2122:	
	goto	l743
	line	138
	
l740:	
	line	139
	
l2124:	
;dinogame.c: 138: {
;dinogame.c: 139: data(stop[i]);
	movf	(stop@i),w
	addwf	(stop@stop),w
	movwf	fsr0
	fcall	stringdir
	fcall	_data
	line	140
	
l2126:	
;dinogame.c: 140: _delay((unsigned long)((300)*(20000000/4000.0)));
	opt asmopt_off
movlw  8
movwf	((??_stop+0)+0+2),f
movlw	150
movwf	((??_stop+0)+0+1),f
	movlw	9
movwf	((??_stop+0)+0),f
u2557:
	decfsz	((??_stop+0)+0),f
	goto	u2557
	decfsz	((??_stop+0)+0+1),f
	goto	u2557
	decfsz	((??_stop+0)+0+2),f
	goto	u2557
	clrwdt
opt asmopt_on

	line	137
	
l2128:	
	movlw	low(01h)
	addwf	(stop@i),f
	skipnc
	incf	(stop@i+1),f
	movlw	high(01h)
	addwf	(stop@i+1),f
	
l2130:	
	movf	(stop@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2375
	movlw	low(09h)
	subwf	(stop@i),w
u2375:

	skipc
	goto	u2371
	goto	u2370
u2371:
	goto	l2124
u2370:
	goto	l743
	
l741:	
	goto	l743
	line	142
;dinogame.c: 141: }
;dinogame.c: 142: while(1);
	
l742:	
	
l743:	
	goto	l743
	
l744:	
	line	143
	
l745:	
	return
	opt stack 0
GLOBAL	__end_of_stop
	__end_of_stop:
;; =============== function _stop ends ============

	signat	_stop,88
	global	_jump
psect	text177,local,class=CODE,delta=2
global __ptext177
__ptext177:

;; *************** function _jump *****************
;; Defined at:
;;		line 119 in file "F:\MPLAB WORK SPACE\hitech c\dino game\dinogame.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  692[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_cmd
;;		_data
;; This function is called by:
;;		_main
;;		_score
;; This function uses a non-reentrant model
;;
psect	text177
	file	"F:\MPLAB WORK SPACE\hitech c\dino game\dinogame.c"
	line	119
	global	__size_of_jump
	__size_of_jump	equ	__end_of_jump-_jump
	
_jump:	
	opt	stack 5
; Regs used in _jump: [wreg+status,2+status,0+pclath+cstack]
	line	120
	
l2098:	
;dinogame.c: 120: cmd(0xc0);
	movlw	(0C0h)
	fcall	_cmd
	line	121
;dinogame.c: 121: data(3);
	movlw	(03h)
	fcall	_data
	line	122
;dinogame.c: 122: cmd(0x81);
	movlw	(081h)
	fcall	_cmd
	line	123
;dinogame.c: 123: data(1);
	movlw	(01h)
	fcall	_data
	line	124
	
l2100:	
;dinogame.c: 124: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_jump+0)+0+2),f
movlw	14
movwf	((??_jump+0)+0+1),f
	movlw	176
movwf	((??_jump+0)+0),f
u2567:
	decfsz	((??_jump+0)+0),f
	goto	u2567
	decfsz	((??_jump+0)+0+1),f
	goto	u2567
	decfsz	((??_jump+0)+0+2),f
	goto	u2567
opt asmopt_on

	line	125
	
l2102:	
;dinogame.c: 125: cmd(0x81);
	movlw	(081h)
	fcall	_cmd
	line	126
	
l2104:	
;dinogame.c: 126: data(3);
	movlw	(03h)
	fcall	_data
	line	127
	
l2106:	
;dinogame.c: 127: cmd(0xc0);
	movlw	(0C0h)
	fcall	_cmd
	line	128
	
l2108:	
;dinogame.c: 128: data(0);
	movlw	(0)
	fcall	_data
	line	129
	
l2110:	
;dinogame.c: 129: return(i++);
;	Return value of _jump is never used
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	goto	l737
	
l2112:	
	line	131
	
l737:	
	return
	opt stack 0
GLOBAL	__end_of_jump
	__end_of_jump:
;; =============== function _jump ends ============

	signat	_jump,90
	global	_character
psect	text178,local,class=CODE,delta=2
global __ptext178
__ptext178:

;; *************** function _character *****************
;; Defined at:
;;		line 31 in file "F:\MPLAB WORK SPACE\hitech c\dino game\dinogame.c"
;; Parameters:    Size  Location     Type
;;  car             1    wreg     PTR unsigned char 
;;		 -> main@arr3(8), main@arr2(8), main@arr1(8), main@arr(8), 
;;  location        1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  car             1    6[COMMON] PTR unsigned char 
;;		 -> main@arr3(8), main@arr2(8), main@arr1(8), main@arr(8), 
;;  i               2    7[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_cmd
;;		_data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text178
	file	"F:\MPLAB WORK SPACE\hitech c\dino game\dinogame.c"
	line	31
	global	__size_of_character
	__size_of_character	equ	__end_of_character-_character
	
_character:	
	opt	stack 6
; Regs used in _character: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;character@car stored from wreg
	movwf	(character@car)
	line	32
	
l2080:	
;dinogame.c: 32: cmd(0x40+location*8);
	movf	(character@location),w
	movwf	(??_character+0)+0
	movlw	(03h)-1
u2335:
	clrc
	rlf	(??_character+0)+0,f
	addlw	-1
	skipz
	goto	u2335
	clrc
	rlf	(??_character+0)+0,w
	addlw	040h
	fcall	_cmd
	line	33
	
l2082:	
;dinogame.c: 33: _delay((unsigned long)((20)*(20000000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_character+0)+0+1),f
	movlw	221
movwf	((??_character+0)+0),f
u2577:
	decfsz	((??_character+0)+0),f
	goto	u2577
	decfsz	((??_character+0)+0+1),f
	goto	u2577
	nop2
opt asmopt_on

	line	34
	
l2084:	
;dinogame.c: 34: for(int i=0;i<8;i++)
	clrf	(character@i)
	clrf	(character@i+1)
	
l2086:	
	movf	(character@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2345
	movlw	low(08h)
	subwf	(character@i),w
u2345:

	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l2090
u2340:
	goto	l2096
	
l2088:	
	goto	l2096
	line	35
	
l705:	
	
l2090:	
;dinogame.c: 35: data(car[i]);
	movf	(character@i),w
	addwf	(character@car),w
	movwf	(??_character+0)+0
	movf	0+(??_character+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_data
	line	34
	
l2092:	
	movlw	low(01h)
	addwf	(character@i),f
	skipnc
	incf	(character@i+1),f
	movlw	high(01h)
	addwf	(character@i+1),f
	
l2094:	
	movf	(character@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2355
	movlw	low(08h)
	subwf	(character@i),w
u2355:

	skipc
	goto	u2351
	goto	u2350
u2351:
	goto	l2090
u2350:
	goto	l2096
	
l706:	
	line	36
	
l2096:	
;dinogame.c: 36: _delay((unsigned long)((20)*(20000000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_character+0)+0+1),f
	movlw	221
movwf	((??_character+0)+0),f
u2587:
	decfsz	((??_character+0)+0),f
	goto	u2587
	decfsz	((??_character+0)+0+1),f
	goto	u2587
	nop2
opt asmopt_on

	line	37
	
l707:	
	return
	opt stack 0
GLOBAL	__end_of_character
	__end_of_character:
;; =============== function _character ends ============

	signat	_character,8312
	global	_data
psect	text179,local,class=CODE,delta=2
global __ptext179
__ptext179:

;; *************** function _data *****************
;; Defined at:
;;		line 22 in file "F:\MPLAB WORK SPACE\hitech c\dino game\dinogame.c"
;; Parameters:    Size  Location     Type
;;  data1           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data1           1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_character
;;		_main
;;		_score
;;		_jump
;;		_stop
;; This function uses a non-reentrant model
;;
psect	text179
	file	"F:\MPLAB WORK SPACE\hitech c\dino game\dinogame.c"
	line	22
	global	__size_of_data
	__size_of_data	equ	__end_of_data-_data
	
_data:	
	opt	stack 6
; Regs used in _data: [wreg]
;data@data1 stored from wreg
	movwf	(data@data1)
	line	23
	
l2074:	
;dinogame.c: 23: RC0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	24
;dinogame.c: 24: RC1 = 0;
	bcf	(57/8),(57)&7
	line	25
;dinogame.c: 25: RC2 = 1;
	bsf	(58/8),(58)&7
	line	26
	
l2076:	
;dinogame.c: 26: PORTD = data1;
	movf	(data@data1),w
	movwf	(8)	;volatile
	line	27
;dinogame.c: 27: _delay((unsigned long)((20)*(20000000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_data+0)+0+1),f
	movlw	221
movwf	((??_data+0)+0),f
u2597:
	decfsz	((??_data+0)+0),f
	goto	u2597
	decfsz	((??_data+0)+0+1),f
	goto	u2597
	nop2
opt asmopt_on

	line	28
	
l2078:	
;dinogame.c: 28: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	29
	
l702:	
	return
	opt stack 0
GLOBAL	__end_of_data
	__end_of_data:
;; =============== function _data ends ============

	signat	_data,4216
	global	_cmd
psect	text180,local,class=CODE,delta=2
global __ptext180
__ptext180:

;; *************** function _cmd *****************
;; Defined at:
;;		line 13 in file "F:\MPLAB WORK SPACE\hitech c\dino game\dinogame.c"
;; Parameters:    Size  Location     Type
;;  command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  command         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_character
;;		_main
;;		_score
;;		_jump
;;		_stop
;; This function uses a non-reentrant model
;;
psect	text180
	file	"F:\MPLAB WORK SPACE\hitech c\dino game\dinogame.c"
	line	13
	global	__size_of_cmd
	__size_of_cmd	equ	__end_of_cmd-_cmd
	
_cmd:	
	opt	stack 6
; Regs used in _cmd: [wreg]
;cmd@command stored from wreg
	movwf	(cmd@command)
	line	14
	
l2068:	
;dinogame.c: 14: RC0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	15
;dinogame.c: 15: RC1 = 0;
	bcf	(57/8),(57)&7
	line	16
;dinogame.c: 16: RC2 = 1;
	bsf	(58/8),(58)&7
	line	17
	
l2070:	
;dinogame.c: 17: PORTD = command;
	movf	(cmd@command),w
	movwf	(8)	;volatile
	line	18
;dinogame.c: 18: _delay((unsigned long)((20)*(20000000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_cmd+0)+0+1),f
	movlw	221
movwf	((??_cmd+0)+0),f
u2607:
	decfsz	((??_cmd+0)+0),f
	goto	u2607
	decfsz	((??_cmd+0)+0+1),f
	goto	u2607
	nop2
opt asmopt_on

	line	19
	
l2072:	
;dinogame.c: 19: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	20
	
l699:	
	return
	opt stack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
;; =============== function _cmd ends ============

	signat	_cmd,4216
psect	text181,local,class=CODE,delta=2
global __ptext181
__ptext181:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
