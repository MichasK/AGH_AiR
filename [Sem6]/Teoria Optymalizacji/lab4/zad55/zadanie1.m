
close all;
clear all;

n = 14;
x0 = [3*n; 9*n];

[x1, x2] = meshgrid(-150:0.3:150, -1300:0.1:130);
q = @(x1, x2) 100*(x2-x1.^2).^2 + (1-x1).^2;
figure()
contour(x1, x2, q(x1,x2));
hold on
par = 3; % 
granad
plot(przyblizenia(1,:), przyblizenia(2,:), 'b');
plot(przyblizenia(1,:), przyblizenia(2,:), 'bo');
ylabel('x_2');
xlabel('x_1');
title('Q(x_1, x_2) dla a = 1');