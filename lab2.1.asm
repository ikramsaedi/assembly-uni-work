.ORIG x3000

; clear registers
AND R0, R0, #0
AND R1, R1, #0
AND R2, R2, #0
AND R3, R3, #0

; load X and Y into registers
LDI R0, X_LOC
LDI R1, Y_LOC

; X - Y
; Get the complement of Y
NOT R3, R1
; add 1
ADD R3, R3, #1
; now subtract 
ADD R2, R0, R3
STI R2, DIFF_LOC

HALT

X_LOC .FILL x3120
Y_LOC .FILL x3121
DIFF_LOC .FILL x3122
.END