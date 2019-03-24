drawArrow = @(p1, p2, varargin) quiver(p1(1), p1(2), p2(1) - p1(1), p2(2) - p1(2), 0, varargin{:});

[x1, x2] = meshgrid(-10:0.04:10, -2:0.01:10);
x00 = [9/2; 9] * 14;%N=14
q=100*(x2-x1.^2).^2+(1-x1.^2).^2;
figure 
hold on;
contour(x1, x2, q, [1, 2, 5, 20, 50, 100, 200], 'ShowText', 'on');


%ograniczenie wykresu ze wzgl?du na odleg?o?? punktu pocz?tkowego od
%ko?cowego
hold on;

%kolejne wyznaczone punkty
plot(x_iter(1, :), x_iter(2, :), 'r');
plot(x_iter(1, :), x_iter(2, :), 'rd');

%punkt pocz?tkowy (63,126)
plot(x_iter(1, 1), x_iter(2, 1), 'b*');
%znaleziony punkt ko?cowy
plot(x_iter(1, size(x_iter, 2)), x_iter(2, size(x_iter, 2)), 'bo');
grid on;
xlabel('x1')
ylabel('x2')

%rysuj wektory bazowe
for i = 1:size(x_iter, 2)
    drawArrow(x_iter(:, i), x_iter(:, i) + kier_baz(:, i)/4, 'color', 'blue '); 
    drawArrow(x_iter(:, i), x_iter(:, i) + kier_baz(:, i + 1)/4, 'color', 'blue ');
end;