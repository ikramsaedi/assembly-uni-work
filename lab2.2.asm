; this lets you get the absolute value
.ORIG x3000
LDI R1, X_LOC
LDI R2, Y_LOC

ADD R2, R1, #0 ; R2 ← R1, can now use condition codes 
BRzp ZP ; 
    NOT R2, R2
    ADD R2, R2, #1 ; R2 = −R1
ZP

HALT
X_LOC .FILL x3100
Y_LOC .FILL x3101
.END