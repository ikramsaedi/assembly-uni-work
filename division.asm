.ORIG x3000

; x divided by y
; these are the params for DIV
LDI R0, X_LOC
LDI R1, Y_LOC

JSR DIV

HALT

X_LOC .FILL x3100
Y_LOC .FILL x3101

; will be empty, and store values in there
QUOTIENT .FILL x3102
REMAINDER .FILL x3103

DIV
    ; R2 is quotient
    AND R2, R2, #0
    ; remainder, which starts off as n
    ; load R0 into R3
    ADD R3, R0, #0
    ; negate R1
    NOT R1, R1
    ADD R1, R1, #1

    LOOP
        ; increment quotient
        ADD R2, R2, #1
        ; subtract divisor r1 from remainder r3
        ADD R3, R3, R1
        ;  check if we need to do another iteration
        ADD R4, R3, R1
        ; then decrement the quotient
        BRzp LOOP
    RET
.END