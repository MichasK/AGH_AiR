 ORG 00h
JMP INIT_TIMER

ORG 0Bh;adres przerwania zgloszonego przez licznik T0
JMP INTERR_TIMER

ORG 30h
INIT_TIMER:
SETB ET0;wlaczenie ogolnej obslugi przerwan
SETB EA; wlaczenie obslugi przerwan timer
MOV R1,#50 ;%wypelnienia
MOV R0,#50 ;%braku wypelnienia
MOV TL0,#10101100B
MOV TH0,#11111111B;wpisanie liczby takiej by licznik generowal przerwanie co 0.1ms liczba to 65452
CLR P0.0
SETB P0.1

MOV TMOD, #01 ; licznik 16 bitowy
SETB TR0;start timera T0

MAIN:
JMP MAIN
INTERR_TIMER:
MOV TL0,#10101100B
MOV TH0,#11111111B;wpisanie liczby takiej by licznik generowal przerwanie co 0.1ms liczba to 65452

DJNZ R0, END_INTERR; gdy R0 nie jest zerem zakoncz obsluge przerwania, jesli R0 jest zerem idz dalej

MOV A,R1; do akumulatora przypisanie wartosci z R1- czyli czas stanu przeciwnego do uprzednio obliczanego w ^
MOV R0, A;
MOV A,#100
SUBB A,R0
MOV R1,A
CPL P0.0
CPL P0.1; zmiana stanow diod
END_INTERR:
RETI
END

