function [q,x]=koszt(x,z,d)

% KOSZT wylicza wskaünik jakoúci dla wektora zmiennych
% decyzyjnych x+z*d.

if nargin==2, x=x+z;
elseif nargin==3, x=x+z*d;
end
q=x(1)^2+3*x(2)^2;