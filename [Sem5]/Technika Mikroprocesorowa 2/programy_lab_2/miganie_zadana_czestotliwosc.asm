ORG 00h

JMP INIT_TIMER
ORG 0Bh ;adres zgloszonego przerwania przez T0
JMP IRQ_TIMER

ORG 30h
INIT_TIMER:
SETB EA;wlacz obsluge przerwan (wszystkich)
SETB ET0;wlacz obsluge ubsluge przerwan timera 0
MOV TMOD,#01
MOV TH0, #0FCh
MOV TL0, #0CBh; wpisuje sobie dowolna liczbe 16 bitowa. Czas wykonywania sie 1 odliczania licznika jest rowny (2^16 - liczba)*12/10^6
; w tym przypadku jest to 0.00098 sekundy
MOV R0,#10 ;f-zadana czestotliwosc T-zadany okres to wartosc przesylana do R0 = 0,00098*2*T
SETB TR0; uruchomienie licznika T0

MAIN:
JMP MAIN

IRQ_TIMER:
MOV TH0, #0FCh
MOV TL0, #0CBh
DJNZ R0, END_INTERRUPT
MOV R0, #10
CPL P1.0

END_INTERRUPT:
RETI
END
