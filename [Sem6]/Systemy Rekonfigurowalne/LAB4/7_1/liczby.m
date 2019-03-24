close all;
clear all;

A = 0.32345;
B = -0.78743;
C = 0.56532;
sign=1; %0-unsigned value, 1-signed value % sign 
prec_i=1; %number of integer part bits (Nc) % one bit 
prec_f=8; %number of fractional part bits (Nu) % eight bits 
word = 1 + prec_i + prec_f; % whole word

A_fix = fi(A,sign,word,prec_f);
B_fix = fi(B,sign,word,prec_f);
C_fix = fi(C,sign,word,prec_f);

R_A = double(A_fix);
R_B = double(B_fix);
R_C = double(C_fix);



%Czy nast¹pi³a zmiana ?
delta = abs(A-R_A)+abs(C-R_C)+ abs(B-R_B)

res = zeros(1,17);
error = zeros(1,17);
res_correct = (A+B)*C;
for prec_f=0:16
    sign=1; %0-unsigned value, 1-signed value % sign 
    prec_i=1; %number of integer part bits (Nc) % one bit 
    word = 1 + prec_i + prec_f; % whole word

    A_fix = fi(A,sign,word,prec_f);
    B_fix = fi(B,sign,word,prec_f);
    C_fix = fi(C,sign,word,prec_f);
    
    res(prec_f+1) = (A_fix+B_fix)*C_fix;
    error(prec_f+1) = abs(res(prec_f+1)-res_correct);
end; 

figure(1)
plot(res,'DisplayName','Wynik operacji');
hold on;
plot(error,'DisplayName','B³¹d bezwzglêdny');
grid on;
xlabel('prec_f');
ylabel('Wynik')
legend show;
