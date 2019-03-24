% POWE_1 Pierwsza metoda Powella.
% Oznaczenia: n - wymiar zmiennej decyzyjnej
%             xn - aktualne przybli¿enie rozwi¹zania
%             dm - macierz kierunków poszukiwania
%             e0 - dok³adnoœæ obliczeñ.

for iter=itp:maxit 
   xn=prosta1(xn,dm(:,n));
   x0=xn;
   for i=1:n
      [xn,qn]=prosta1(xn,dm(:,i));
   end
   delta=norm(xn-x0);
   if delta<e0, break, end
   kier_baz=[kier_baz  dm];   %    dodana zmienna 
   dm(:,1)=[];
   dm(:,n)=(xn-x0)/delta;
d=[d dm];
end
itp=iter;