function [q,x]=koszt(x,z,d)

% KOSZT wylicza wskaünik jakoúci dla wektora zmiennych
% decyzyjnych x+z*d.

if nargin==2, x=x+z;
elseif nargin==3, x=x+z*d;
end
x1 = x(1); x2 = x(2); x3 = x(3); x4 = x(4);
q = 100*(x1.^2-x2).^ 2 + (1-x1).^2+90*(x3.^3-x4).^2+ ( 1 - x3 ) .^ 2 + 10.1 * ( ( x2 - 1 ) .^ 2 + ( x4 - 1 ) .^ 2 ) +  19.8 * ( x2 - 1 ) * ( x4 - 1 );
