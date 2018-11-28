org 0x00
jmp INIT

org 23h
JMP IRR_SERIAL


org 0x30
INIT:
    orl PCON,#0x80 ; SMOD=1
    mov SCON,#0x50 ; predkosc wyliczana z licznika
    mov TMOD,#0x20 ; timer Use only the TLX register as an 8-bit counter.
    mov TH1,#0xF5 ; ;245
    mov TL1,#0xF5 ; ;245
    setb TR1 ;timer 1 on
    SETB EA; enable all interupt
    SETB ES ; enable serial interput
    SETB TI ; call first interr

MAIN:
JMP Main

IRR_SERIAL:
   JB TI, SEND;
   JB RI, READ;
SEND:
    CLR TI; clear flag
    RETI

READ:
   CLR RI ; clear Ri
   MOV R0,SBUF ;
   CJNE R0, #47, GREATER_CONDITION ; 47 is / 48 is 0 when R0<47 JNC:= 0 when R0>48 JNC:=1
RETI

GREATER_CONDITION:
   JNC IS_GREATER;
RETI

IS_GREATER:
    CJNE R0, #58, SMALLER_CONDITION ; 58 is : / 57 is 9 when R0<58 JNC:= 0 when R0>58 JNC:=1

SMALLER_CONDITION:
   JNC TO_BIG_END
   MOV SBUF,R0;
RETI

TO_BIG_END:
RETI

END
