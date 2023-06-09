;Edquila, Ryan Christopher V.
;184.1 - M67
;Lab 7 - Project

ORG 0000H

;Input
SETB P0.0
SETB P0.1
SETB P0.2
SETB P0.3
SETB P0.4
SETB P0.5
SETB P0.6
SETB P0.7

SETB P1.0
SETB P1.1
SETB P1.2
SETB P1.3
SETB P1.4
SETB P1.5
SETB P1.6
SETB P1.7

MAIN:
	;FIRST INPUT
	ACALL INPUT
	CLR P0.3
	SETB P0.2
	SETB P0.1
	SETB P0.0
	CPL A
	MOV P1, A
	ACALL DELAY

	;SECOND INPUT
	ACALL INPUT
	SETB P0.3
	CLR P0.2
	SETB P0.1
	SETB P0.0
	CPL A
	MOV P1, A
	ACALL DELAY


	;THIRD INPUT
	ACALL INPUT
	SETB P0.3
	SETB P0.2
	CLR P0.1
	SETB P0.0
	CPL A
	MOV P1, A
	ACALL DELAY


	;FOURTH INPUT
	ACALL INPUT
	CLR P0.3
	SETB P0.2
	SETB P0.1
	CLR P0.0
	CPL A
	MOV P1, A
	ACALL DELAY

	SJMP MAIN

INPUT:
	MOV P2, #1011b	;Keypad 0
	MOV C, P3.0
	CPL C
	JC ZERO

	MOV P2, #0111b	;Keypad 1
	MOV C, P3.3
	CPL C
	ACALL CHECKONE

	MOV P2, #1011b	;Keypad 2
	MOV C, P3.3
	CPL C
	ACALL CHECKTWO

	MOV P2, #1101b	;Keypad 3
	MOV C, P3.3
	CPL C
	ACALL CHECKTHREE

	MOV P2, #0111b	;Keypad 4
	MOV C, P3.2
	CPL C
	ACALL CHECKFOUR

	MOV P2, #1011b	;Keypad 5
	MOV C, P3.2
	CPL C
	ACALL CHECKFIVE

	MOV P2, #1101b	;Keypad 6
	MOV C, P3.2
	CPL C
	ACALL CHECKSIX

	MOV P2, #0111b	;Keypad 7
	MOV C, P3.1
	CPL C
	ACALL CHECKSEVEN

	MOV P2, #1011b	;Keypad 8
	MOV C, P3.1
	CPL C
	ACALL CHECKEIGHT

	MOV P2, #1101b	;Keypad 9
	MOV C, P3.1
	CPL C
	ACALL CHECKNINE

	RET

ZERO:	
	MOV A, #3FH
	RET

CHECKONE: 	JC ONE
		RET
ONE:
	MOV A, #06H
	RET
	
CHECKTWO:	JC TWO
		RET	
TWO:
	MOV A, #5BH
	RET

CHECKTHREE: 	JC THREE
		RET
THREE:
	MOV A, #4FH
	RET

CHECKFOUR:	JC FOUR
		RET	
FOUR:
	MOV A, #66H
	RET

CHECKFIVE: 	JC FIVE
		RET
	
FIVE: 
	MOV A, #6DH
	RET

CHECKSIX: 	JC SIX
		RET
	
SIX: 
	MOV A, #7DH
	RET

CHECKSEVEN: 	JC SEVEN
		RET
	
SEVEN:
	MOV A, #07H
	RET

CHECKEIGHT: 	JC EIGHT
		RET
	
EIGHT:
	MOV A, #7FH
	RET

CHECKNINE: 	JC NINE
		RET
	
NINE:
	MOV A, #6FH
	RET

DELAY:
	MOV R0, #0FH
	LOOP:
		DJNZ R0, LOOP
	RET


END



