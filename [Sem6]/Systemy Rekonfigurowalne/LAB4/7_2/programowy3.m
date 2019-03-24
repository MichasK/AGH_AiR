close all;
clear all;

A = -100.34;
B = -2.317;
C = 5.92;
D = 9.171;
E = -49.99;
F = 104.56;

sign=1; %0-unsigned value, 1-signed value % sign

prec_i=9; %number of integer part bits (Nc) % one bit 
prec_f=8; %number of fractional part bits (Nu) % eight bits 
word = 1 + prec_i + prec_f; % whole word
A_fix = fi(A,sign,word,prec_f);
A_bin = bin(A_fix);


prec_i=4; %number of integer part bits (Nc) % one bit 
prec_f=3; %number of fractional part bits (Nu) % eight bits 
word = 1 + prec_i + prec_f; % whole word
B_fix = fi(B,sign,word,prec_f);
B_bin = bin(B_fix);

prec_i=4; %number of integer part bits (Nc) % one bit 
prec_f=7; %number of fractional part bits (Nu) % eight bits 
word = 1 + prec_i + prec_f; % whole word
C_fix = fi(C,sign,word,prec_f);
C_bin = bin(C_fix);

prec_i=5; %number of integer part bits (Nc) % one bit 
prec_f=2; %number of fractional part bits (Nu) % eight bits 
word = 1 + prec_i + prec_f; % whole word
D_fix = fi(D,sign,word,prec_f);
D_bin = bin(D_fix);

prec_i=8; %number of integer part bits (Nc) % one bit 
prec_f=5; %number of fractional part bits (Nu) % eight bits 
word = 1 + prec_i + prec_f; % whole word
E_fix = fi(E,sign,word,prec_f);
E_bin = bin(E_fix);

prec_i=9; %number of integer part bits (Nc) % one bit 
prec_f=9; %number of fractional part bits (Nu) % eight bits 
word = 1 + prec_i + prec_f; % whole word
F_fix = fi(F,sign,word,prec_f);
F_bin = bin(F_fix);


A_plus_B = bin(A_fix + B_fix);
A_plus_B_x_C = bin((A_fix + B_fix)*C_fix);


D_plus_E = bin(D_fix + E_fix);
F_plus_E = bin(F_fix + E_fix);

D_plus_E_x_F_plus_E = bin((F_fix + E_fix)*(D_fix + E_fix));
result = ((A_fix + B_fix)*C_fix)+(D_fix + E_fix)*(F_fix + E_fix);
dec2hex(bin2dec(bin(result)))