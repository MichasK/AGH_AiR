close all;
clear all;
x=-1:0.001:1;
probkowanie_f_t=-1:0.2:1;
probkowanie_f_t_b=-1:0.6:1;
promkowanie_wynik = sin(2*pi*probkowanie_f_t); 
promkowanie_wynik_bad = sin(2*pi*probkowanie_f_t_b); 

y5 = sin(2*pi*x);
%y10 = sin(2*5*pi*x);
figure()
plot(x,y5,'DisplayName','sin(2*pi*x)')
hold on;
%plot(x,y10,'DisplayName','sin(10*pi*x)')
plot(probkowanie_f_t,promkowanie_wynik,'*-','DisplayName','próbkowanie OK')
plot(probkowanie_f_t_b,promkowanie_wynik_bad,'*-','DisplayName','próbkowanie nOK')

grid on;
hold on;
legend show
