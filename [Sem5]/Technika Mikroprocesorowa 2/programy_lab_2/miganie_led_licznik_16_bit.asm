 
ORG 00h
JMP INIT_TIMER

ORG 0Bh
JMP IRQ_TIMER

ORG 30h
INIT_TIMER:
MOV TMOD, #01;ustawienie trybu licznika 16 bitowego
SETB EA;wlacz obsluge przerwan (wszystkich)
SETB ET0;wlacz obsluge ubsluge przerwan timera 0
SETB TR0;start timera 0

MAIN:
JMP MAIN

IRQ_TIMER:
CPL P1.0

RETI
END
