% POWNAD Pierwsza i druga metoda Powella.
% Oznaczenia: n - wymiar zmiennej decyzyjnej
%             xn - przybli¿enie rozwi¹zania
%             dm - macierz kierunków poszukiwania
%             e0 - dok³adnoœæ obliczeñ.

im=inf;%aby zmazac wartoœæ przy poprzednich wywo³aniach programu
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
  