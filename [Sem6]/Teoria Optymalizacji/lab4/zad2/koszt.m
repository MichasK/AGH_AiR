function [q,x]=koszt(x,z,d)
 % KOSZT wylicza wskaünik jakoúci dla wektora zmiennych % decyzyjnych x+z*d.
 if nargin==2, x=x+z; elseif nargin==3, x=x+z*d; end q=6*x(1)^2 + 6*x(2)*x(1) + x(2)^2 + 4.5*(exp(x(1)) - x(1) - 1) + 1.5*(exp(x(2)) - x(2) - 1)