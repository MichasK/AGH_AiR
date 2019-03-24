close all;
clear all;

A = 0.32345;
B = -0.78743;
C = 0.56532;
sign=1; %0-unsigned value, 1-signed value % sign 
prec_i=1; %number of integer part bits (Nc) % one bit 
prec_f=6; %number of fractional part bits (Nu) % eight bits 
word = 1 + prec_i + prec_f; % whole word

A_fix = fi(A,sign,word,prec_f);
B_fix = fi(B,sign,word,prec_f);
C_fix = fi(C,sign,word,prec_f);
AB_fix = A_fix+B_fix;
Y = (A_fix+B_fix)*C_fix;
sum_correct = bin(AB_fix);
Y_correct = bin(Y)