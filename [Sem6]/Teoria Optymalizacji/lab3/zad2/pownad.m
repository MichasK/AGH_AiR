% POWNAD Pierwsza i druga metoda Powella.
% Oznaczenia: n - wymiar zmiennej decyzyjnej
%             xn - przybliżenie rozwiązania
%             dm - macierz kierunków poszukiwania
%             e0 - dokładność obliczeń.

im=inf;%aby zmazac wartość przy poprzednich wywołaniach programu
maxit=100;
itp=1;
xn=x00;
n=length(xn);
dm=eye(n);
d=eye(n);
xa=xn;
qa=inf;
e0=1e-7;


   if metoda==1,powe_1
   else,powe_2
   end
  