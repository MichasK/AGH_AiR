function g=gradie(x)
 % GRADIE Wyznacza analitycznie gradient funkcji kosztu w punkcie X.
 g=[12*x(1)+6*x(2)-4.5+4.5*exp(x(1))   6*x(1)+2*x(2)-1.5+1.5*exp(x(2))]; 