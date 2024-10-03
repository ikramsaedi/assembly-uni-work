.ORIG x3000

; get x and y values
LDI R0, X_LOC
LDI R1, Y_LOC

; this will be our index for the loop
; we will decrement it on every iteration
LDI R2, Y_LOC
; product
AND R3, R3, #0

LOOP
    ADD R3, R3, R0
    ; re-enter loop if positive
    ; otherwise break out of loop
    ADD R2, R2, #-1  
    BRp LOOP

STI R3, PRODUCT
HALT

X_LOC .FILL x3100
Y_LOC .FILL x3101
PRODUCT .FILL x3102

.END