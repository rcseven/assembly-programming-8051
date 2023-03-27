ORG 0

; Immediate
MOV A, #25h 
MOV 30H, #69H
MOV 42H, #44H

; Direct
MOV A, 20h
MOV 01H, 04H
MOV 05H, 02H


; Indirect
MOV A, @R0
MOV R1, #30H
MOV 42H, #44H

END