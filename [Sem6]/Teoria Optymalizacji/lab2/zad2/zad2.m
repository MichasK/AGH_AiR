clear all;
close all;
clc
drawArrow = @(p1, p2, varargin) quiver(p1(1), p1(2), p2(1) - p1(1), p2(2) - p1(2), 0, varargin{:});

[x1, x2] = meshgrid(-5:0.01:5, -2:0.01:10);
x0 = [7/2; 7] * 14;%N=14
q=100*(x2-x1.^2).^2+(1-x1.^2).^2;
figure 
hold on;
contour(x1, x2, q, [1, 2, 5, 20, 50, 100, 200], 'ShowText', 'on');
x0 = [48; 49];
metoda = 1; 
pownad
grid on;

%ograniczenie wykresu ze wzglêdu na odleg³oœæ punktu pocz¹tkowego od
%koñcowego
axis([-5 5  -2 10])
hold on;

%kolejne wyznaczone punkty
plot(x_iter(1, :), x_iter(2, :), 'r');
plot(x_iter(1, :), x_iter(2, :), 'rd');

%punkt pocz¹tkowy (49,98)
plot(x_iter(1, 1), x_iter(2, 1), 'b*');
%znaleziony punkt koñcowy
plot(x_iter(1, size(x_iter, 2)), x_iter(2, size(x_iter, 2)), 'bo');

%rysuj wektory bazowe
for i = 1:size(x_iter, 2)
    drawArrow(x_iter(:, i), x_iter(:, i) + kier_baz(:, i)/4, 'color', 'blue '); 
    drawArrow(x_iter(:, i), x_iter(:, i) + kier_baz(:, i + 1)/4, 'color', 'blue ');
end;

