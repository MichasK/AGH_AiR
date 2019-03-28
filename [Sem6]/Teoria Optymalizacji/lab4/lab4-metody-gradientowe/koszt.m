function [q,x]=koszt(x,z,d)

% KOSZT wylicza wskaünik jakoúci dla wektora zmiennych
% decyzyjnych x+z*d.

if nargin==2, x=x+z;
elseif nargin==3, x=x+z*d;
end
f = @(x1, x2) 6*x1.^2 + 6*x1*x2 + x2.^2 + 4.5*(exp(x1) - x1 - 1) + 1.5*(exp(x2) - x2 - 1);
%f = @(x1, x2) 100*(x2-x1^2)^2 + (1-x1)^2;
q = f(x(1),x(2));
%q=x(1)^2+1*0.3*x(2)^2;