.ORIG x3000

; clear registers
AND R0, R0, #0 ; x3100
AND R1, R1, #0 ; x3101
AND R2, R2, #0 ; x3102
AND R3, R3, #0 ; x3103
AND R4, R4, #0 ; x3104
AND R5, R5, #0 ; x3105

; load X and Y into registers
LDI R0, X_LOC
LDI R1, Y_LOC

; X + Y
ADD R2, R1, R0
STI R2, SUM_LOC

; X AND Y
AND R2, R1, R0
STI R2, AND_LOC

; X OR Y
NOT R0, R0 ; store !R0 in R0
NOT R1, R1 ; store !R1 in R1
AND R2, R0, R1 ; store R0 && R1 in R2 (og val !(R0 && R1))
NOT R2, R2 ; store !R2 in R2
; then store that value into OR_LOC
; i don't think  i understand waht OR is doing
STI R2, OR_LOC

; reset R0, and R1
LDI R0, X_LOC
LDI R1, Y_LOC

; NOT X
NOT R2, R0 ; store NOT R0 in R2
STI R2, NOT_X_LOC 

; NOT Y
NOT R2, R1 ; store !R1 in R2
STI R2, NOT_Y_LOC

; 
HALT

X_LOC .FILL x3100
Y_LOC .FILL x3101
SUM_LOC .FILL x3102
AND_LOC .FILL x3103
OR_LOC .FILL x3104
NOT_X_LOC .FILL x3105
NOT_Y_LOC .FILL x3106
X_PLUS_3 .FILL x3107
Y_MINUS_3 .FILL x3108
.END