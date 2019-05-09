function [q,x]=koszt(x,z,d)

% KOSZT wylicza wskaünik jakoúci dla wektora zmiennych
% decyzyjnych x+z*d.

if nargin==2, x=x+z;
elseif nargin==3, x=x+z*d;
end
q=x(1)*exp(x(1))+1.54*x(1)*exp(-x(1))-3.5*exp(x(1))-5.38*exp(-x(1))+9.7;
q=q*q;