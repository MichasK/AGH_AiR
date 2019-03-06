close all;
clear all;

x1 = -10:0.1:100;
x2 = [0.01 0.1 1 -10 100];
x3 = [0.0100    0.1111    1.1007   -9.9194   90.7768];
w_coef = [1, -91.11, -899.989, 1100.009, -110.91, 1];

y1 = polyval(w_coef,x1);
y2 = polyval(w_coef,x2);
y3 = polyval(w_coef,x3);

figure(1)
plot(x1,y1,'DisplayName','f(x)')
hold on;
plot(x2,y2,'c*','DisplayName','pierwiastki analitycznie')
plot(x3,y3,'c o','DisplayName','pierwiastki numerycznie')
grid on;
xlabel('x')
ylabel('y')
title('Porównanie znalezionych pierwiastków')
legend show;
