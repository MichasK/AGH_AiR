function g=gradie(x)

% GRADIE Wyznacza analitycznie gradient funkcji kosztu w punkcie X.

g=[200*(x(2)-x(1).^2)*(-2*x(1))+2*x(1)-2   200*(x(2)-x(1).^2)];

