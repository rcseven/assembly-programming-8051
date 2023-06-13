ORG 0

; FIRST NUMBER
MOV R0, #0FFH ; Lower byte 
MOV R1, #0FFH ; Higher byte

;SECOND NUMBER
MOV R2, #0FFH ; Lower byte
MOV R3, #0FFH ; Higher byte

; Subtract the lower bytes
MOV A, R0 ; Load lower byte to A
SUBB A, R2 ; Subtract lower byte of the second number from A
MOV R4, A ; Store the result's lower byte in R4

; Subtract the higher bytes
MOV A, R1 ; Load higher byte of the first number into Accumulator
SUBB A, R3 ; Subtract higher byte of the second number from Accumulator
MOV R5, A ; Store the result's higher byte in R5

; The result of subtraction is now in R5:R4

END
