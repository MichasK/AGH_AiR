% GAUSE Metoda Gaussa - Seidela w zadanej bazie.
% Oznaczenia: n - wymiar zmiennej decyzyjnej
%             x0 - aktualne przybliżenie rozwiązania
%             dm - macierz kierunków poszukiwania
%             e0 - dokładność obliczeń.

x0=[3;3];
n=length(x0);
dm=eye(n);
e0=1e-8;
delta=1;

while delta>e0   
   xn=x0;
   for i=1:n
      [xn,qn]=prosta1(xn,dm(:,i));
   end
   delta=(xn-x0)'*(xn-x0);
   x0=xn;
end