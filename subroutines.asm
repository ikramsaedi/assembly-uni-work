.ORIG x3000

LDI R0, N ; Argument N is now in R0 
JSR F ; Jump to subroutine F. 
STI R1, FN

HALT

N .FILL x3120 ; Address where n is located
FN .FILL x3121  ; Address where fn will be stored.

; Subroutine F begins 
AND R1, R1, x0 
F AND R1, R1, x0
; Clear R1
ADD R1, R0, x0 ; R1←R0
ADD R1, R1, R1 ; R1 ← R1 + R1
ADD R1, R1, x3 ; R1 ← R1 + 3. Result is in R1 
; return from subroutine
RET

.END