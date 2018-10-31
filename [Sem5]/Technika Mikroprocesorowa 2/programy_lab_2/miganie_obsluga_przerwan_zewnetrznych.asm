ORG 00h
JMP INIT

ORG 03h ; adres rozszerzonego przerwania wynikajacego z stanu  P3.2
JMP INTERR_SWITCH32

ORG 0Bh ; adres przerwania od timera T0
jmp INTERR_TIMER0

ORG 30h
INIT:
MOV R0,#07 ; R0*10=PWM
MOV R1,#03 ; R1=100-pwm)/10
CLR F0; FLAGA=1 70 FLAGA=0=30
;External interrupt 0 signal type control bit. Set to 1 by program to enable external interrupt 1 to be triggered by a falling edge signal. Set to 0 by program to enable a low-level signal on external interrupt 0 to generate an interrupt.
SETB IT0
MOV TMOD,#01
MOV TL0, #0CBh
MOV TH0, #0FCh
SETB ET0; wlaczenie obslugi przerwan
SETB EX0;wlaczenie przerwan zewnetrznych p3.2
SETB EA; wlaczenie przerwan t0
SETB TR0;t0 start
SETB P1.0;dioda zgaszona


MAIN:
JMP MAIN; ;pusty progra glowny

INTERR_TIMER0:
MOV TL0, #0CBh
MOV TH0, #0FCh;reload timera
DJNZ R0, END_INTERR
MOV A,R1
Mov R0,A
MOV A,#10
SUBB A,R0
MOV R1,A 
CPL P1.0

END_INTERR:
RETI

INTERR_SWITCH32:
;The JB instruction branches to the address specified in the second operand if the value of the bit specified in the first operand is 1. The bit that is tested is not modified. No flags are affected by this instruction.
JB F0, F7
F3:
MOV R0, #03
JMP SUBBPWM ; ustawienie wartosci r1 jako 10-ro
F7:
MOV R0,#07
SUBBPWM:
MOV A,#10
SUBB A,R0
MOV R1,A
CPL F0
CLR p1.0
RETI
END 

 
