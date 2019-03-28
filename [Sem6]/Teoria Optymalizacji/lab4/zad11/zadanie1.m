
close all;
clear all;

n = 14;
x0 = [3*n; 9*n];

[x1, x2] = meshgrid(linspace(-3*n-10, 3*n+10), linspace(-9*n-10, 9*n+10));
q = @(x1, x2) x1.^2 + 1*x2.^2;
figure()
contour(x1, x2, q(x1,x2));
hold on
par = 0; % 
granad
plot(etap(1,:), etap(2,:), 'b');
plot(etap(1,:), etap(2,:), 'bo');
ylabel('x_2');
xlabel('x_1');
title('Q(x_1, x_2) dla a = 1');