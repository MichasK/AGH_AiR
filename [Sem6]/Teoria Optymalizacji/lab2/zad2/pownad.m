% POWNAD Pierwsza i druga metoda Powella.
% Oznaczenia: n - wymiar zmiennej decyzyjnej
%             xn - przybli�enie rozwi�zania
%             dm - macierz kierunk�w poszukiwania
%             e0 - dok�adno�� oblicze�.

im=inf;%aby zmazac warto�� przy poprzednich wywo�aniach programu

z=2;
xn= x0;
X=xn;
itp=1;
n=length(xn);
e0=0.001;
maxit=100;
dm=eye(2);
x_iter = [ xn]
kier_baz = [dm]
metoda=1
   if metoda==1,powe_1
   else,powe_2
   end