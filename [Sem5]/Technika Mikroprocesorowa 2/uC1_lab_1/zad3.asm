delay:
    MOV R2, #4;liczba iteracji petli zewn
    loop: CALL petla
    DJNZ R2, loop
    RET
petla:
    MOV R0, #203
reR1:
    MOV R1, #255
    DJNZ R1, $
    DJNZ R0, reR1
    RET




org 0x00
  LJMP MAIN
org 0x30
MAIN:
  MOV P1,#00000000B;zapal wszystkie diody na porcie 1
  LCALL delay;opoznienie 0.5sek
  MOV P1,#11111111B;zgas wszystkie diody na porcie 1
  LCALL delay;opoznienie 0.5sek
LJMP MAIN
