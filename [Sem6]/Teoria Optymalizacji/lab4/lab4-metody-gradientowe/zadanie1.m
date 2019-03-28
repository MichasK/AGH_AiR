% zadanie 1

n = 13;
x0 = [3*n; 9*n];

[x1, x2] = meshgrid(linspace(-3*n-10, 3*n+10), linspace(-9*n-10, 9*n+10));
q = @(x1, x2) x1.^2 + 0.5*x2.^2;
figure()
contour(x1, x2, q(x1,x2));
hold on
par = 0; % metoda najszybszego spadku
granad
plot(przyblizenia(1,:), przyblizenia(2,:), 'r');
plot(przyblizenia(1,:), przyblizenia(2,:), 'ro');
xlabel('x_1');
ylabel('x_2');
title('Q(x_1, x_2) dla a = 0.3');