ORG 0000H

; Write an assembly language program to find the cube of a given number.
INPUT	EQU	20	; Define the input number

MOV A, #INPUT
MOV R0, A	; Store the input
MOV B, A	; Copy to B the input
MUL AB		; Perform ^2

MOV R1, B	; If there are any carries, then there is a carry high byte. Move to R1
MOV B, R0	; Copy to B again the input
MUL AB		; Perform ^3

MOV R3, A	; The low byte is stored in R3
MOV R2, B	; If the product > 255, the high byte is stored in R2. Otherwise, it will stay 0

MOV A, R1	; Move to A the carry high byte
MOV B, R0	; Copy to B the input again
MUL AB		; Multiply the carry of the high byte with the input number

MOV R0, B	; Store any carries to R0
ADD A, R2	; Add the results (the carry high byte) to the high byte in R2
ADD A, R0	; Also add the extra carry in R0
MOV R2, A	; Move the resulting high byte to R2.
		; R2 and R3 stores the value of the cube. R2 stores the high byte of the cube, and R3 the low byte
		; If the result is more than 16 bits (which is more than 255 or 0FFH), carry flag is high
MOV R0, 0
MOV R1, 0
CLR OV
MOV A, #0
MOV B, #0

END