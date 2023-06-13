ORG 0

MOV A, #5BH ; Input in binary 01011011

MOV R2, #8 ; Loop counter for 8 bits

CheckNextBit:
    RLC A ; Rotate left through carry
    JNC BitIsZero ; If carry flag is not set, bit was 0
    INC R1 ; If this point is reached, bit was 1
    SJMP ContinueLoop
BitIsZero:
    INC R0 ; Increment count of zeros
ContinueLoop:
    DJNZ R2, CheckNextBit ; Decrement loop counter and loop if not finished

; At this point, R1 contains the count of ones, and R2 contains the count of zeros

END ; End of the program

