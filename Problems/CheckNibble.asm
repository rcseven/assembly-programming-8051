ORG 0

MOV A, #0FAH ; Input to check

;TO GET LOWER NIBBLE
MOV R0, A ; Move the content of A to R0
ANL A, #0FH ; Mask higher nibble of A, so A contains lower nibble
MOV R1, A ; Move lower nibble to R1

;TO GET HIGHER NIBBLE
MOV A, R0 ; Restore original content of A from R0
SWAP A ; Swap nibbles, so higher nibble is now lower nibble
ANL A, #0FH ; Mask higher nibble, so A contains original higher nibble

; SUBTRACT LOWER AND HIGHER NIBBLE
CLR C ; Clear carry flag
SUBB A, R1 ; Subtract A from R1 and store result in A

; CHECK CARRY FLAG
JC LowerIsGreater ; If carry is set, lower nibble is greater

; LOWER NIBBLE IS NOT GREATER
MOV P0, #0FFH
SJMP End ; Jump to end

LowerIsGreater:
MOV P0, #00H ;

End:
 END

