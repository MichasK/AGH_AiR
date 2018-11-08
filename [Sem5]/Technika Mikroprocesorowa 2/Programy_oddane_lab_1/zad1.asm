org 0x00
  LJMP MAIN
ORG 0x30
MAIN:
  MOV P0, #0x00 ;wyślij do portu liczbę gaszącą wszystkie diody LED
  MOV P1, #0x55 ; zapal diody LED 0,2,4,6
  MOV P2, #0xF0
  MOV P3, #0xC3
loop:
  LJMP loop
end
