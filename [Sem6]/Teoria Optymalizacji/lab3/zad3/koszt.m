function [q,x]=koszt(x,z,d)

% KOSZT wylicza wskaünik jakoúci dla wektora zmiennych
% decyzyjnych x+z*d.

if nargin==2, x=x+z;
elseif nargin==3, x=x+z*d;
end
q = 100*(x(1)^2-x(2))^2+(x(1)-1)^2+90*(x(3)^3-x(4))^2 +(x(3)-1)^2+10.1*((x(2)-1)^2+(x(4)-1)^2)+19.8*(x(2)-1)*(x(4)-1);