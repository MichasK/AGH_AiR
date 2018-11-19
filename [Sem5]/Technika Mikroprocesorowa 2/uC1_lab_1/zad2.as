delay:
	MOV R0,#0FFH;petla zewnetrzna liczy sie 0 do 255
	loadR1:;przywracamy R1 wartosc 255
	MOV R1,#0FFH;petla zagniezdzona liczy sie 0 do 255
	DJNZ R1,$
	DJNZ R0,loadR1
	RET
org 0x00
LJMP MAIN
	org 0x30
MAIN:
	MOV P1,#00000000B;zapal wszystkie diody na porcie 1
	LCALL delay;opoznienie
	MOV P1,#11111111B;zgas wszystkie diody na porcie 1
	LCALL delay;opóźnienie
	LJMP MAIN
