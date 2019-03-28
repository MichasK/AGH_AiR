function g=gradie(x)

% GRADIE Wyznacza analitycznie gradient funkcji kosztu w punkcie X.

%g=[2*x(1)
%   0.6*x(2)];
g=[12*x(1)+6*x(2)+4.5*(exp(x(1))-1); 6*x(1)+2*x(2)+1.5*(exp(x(2))-1)];
%g = [-400*x(1)*(x(2)-x(1)^2)-2*(1-x(1)); 200*(x(2)-x(1)^2)];