function [q,x]=koszt(x,z,d,w)

%w dany wektor wsp wielomianu 

if nargin==3, x=x+z;
elseif nargin==4, x=x+z*d;
end
q = polyval(w,x); %wielomian w
q = q.*q %wielomia w*w