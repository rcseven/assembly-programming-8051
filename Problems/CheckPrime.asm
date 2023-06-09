ORG 0

MAIN:
	INIT:
		MOV A, #11 ;NUMBER TO CHECK IF PRIME
		MOV R0, A ;NUMBER TEMP VARIABLE
		MOV R2, #2 ;INITIALIZE DIVISOR
		SUBB A, #2
		MOV R1, A ; NUMBER OF LOOPS

	CHECK_PRIME:
		MOV A, R0
		MOV B, R2
		DIV AB
		MOV A, B
		JZ NOT_PRIME
		INC R2
		DJNZ R1, CHECK_PRIME
		
	PRIME:
		MOV P0, #0FFH
		JMP END
	
	NOT_PRIME:
		MOV P0, #00H

	END:
		END
