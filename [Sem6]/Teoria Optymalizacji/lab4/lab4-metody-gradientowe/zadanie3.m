% zadanie 1

n = 14;
x0 = [3*n; 9*n];

[x1, x2] = meshgrid(linspace(-3*n-10, 3*n+10), linspace(-9*n-10, 9*n+10));
q = @(x1, x2) 100*(x2-x1^2)^2 + (1-x1)^2;
figure()
contour(x1, x2, q(x1,x2));
hold on
par = 3; % metoda najszybszego spadku
granad
plot(etap(1,:), etap(2,:), 'b');
plot(etap(1,:), etap(2,:), 'bo');
xlabel('x_1');
ylabel('x_2');
