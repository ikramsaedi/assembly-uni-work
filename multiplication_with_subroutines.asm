.ORIG x3000

; get x and y values
; these are params to the MULT subroutine
LDI R0, X_LOC
LDI R1, Y_LOC

JSR MULT

STI R3, PRODUCT
HALT

MULT
    ; this will be our index for the loop
    ; we will decrement it on every iteration
    LDI R2, Y_LOC
    ; initialise R3 as 0
    AND R3, R3, #0

    LOOP
        ADD R3, R3, R0
        ; re-enter loop if positive
        ; otherwise break out of loop
        ADD R2, R2, #-1  
        BRp LOOP
    RET

X_LOC .FILL x3100
Y_LOC .FILL x3101
PRODUCT .FILL x3102

.END