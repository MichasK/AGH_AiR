function [xn,qn]=prosta1(x0,d,w)

% PROSTA1 Metoda Gaussa - Seidela: przeszukiwanie prostej 
%         o kierunku d, przechodz¹cej przez punkt x0.

[zw,qw,wskaz,z,q]=ekspan(x0,d,1,10,w);
if wskaz>1
   [zw,qw,z,q]=zlopod(x0,d,zw,qw,5,z,q,w);
   [zw,qw,z,q]=apropa(x0,d,zw,qw,1,z,q,w);
   i=2;
end
if wskaz==0,i=1;
elseif wskaz==1,i=3;
end
xn=x0+zw(i)*d;
qn=qw(i);
