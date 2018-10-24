org 0

LJMP start

org 100h
start:
mov P0, #0x00
mov P1, #0xFF

loop:
LJMP loop

end
