;T=10ms
;f=100Hz
;   (((2*liczba_iteracji_3p + 1 +1) * liczba_iteracji_2p +1 +1)*liczba_iteracji_petli_zewn +1 +1) * 12/10^6 = 
threeLoopDelay:

    MOV R2, #0AH

loop: CALL twoLoopDelay

    DJNZ R2, loop
    RET
  	
twoLoopDelay:

    MOV R0, #0FFH

loadR1:

    MOV R1, #0FFH
    DJNZ R1, $
    DJNZ R0, loadR1
    RET

JMP main:
CLR P1.1
 
