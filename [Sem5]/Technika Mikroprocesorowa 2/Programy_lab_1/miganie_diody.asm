twoLoopDel:
	MOV R0,#04H;petla zewnetrzna liczy sie od 4

loadR1:
	MOV R1,#0FFH;petla zagniezdzona liczy sie od 255
	DJNZ R1,$
	DJNZ R0,loadR1
	RET


org 0x000
LJMP START
start:
MOV P1,#00000000B;zapal wszystkie diody na porcie 1
LCALL twoLoopDel;opoznienie 
MOV P1,#11111111B;zgas wszystkie diody na porcie 1
LCALL twoLoopDel
LJMP start 
