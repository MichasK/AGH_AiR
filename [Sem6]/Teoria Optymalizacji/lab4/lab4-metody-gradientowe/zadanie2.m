% zadanie 1

n = 14;
x0 = [3/100*n; 9/100*n];
%x0=[3;3];
[x1, x2] = meshgrid(linspace(-3, 3), linspace(-3, 3));
q = @(x1, x2) 6*x1.^2 + 6*x1*x2 + x2.^2 + 4.5*(exp(x1) - x1 - 1) + 1.5*(exp(x2) - x2 - 1);
figure()
contour(x1, x2, q(x1,x2));
hold on
par = 3; % metoda najszybszego spadku
granad
plot(przyblizenia(1,:), przyblizenia(2,:), 'r');
plot(przyblizenia(1,:), przyblizenia(2,:), 'ro');
xlabel('x_1');
ylabel('x_2');