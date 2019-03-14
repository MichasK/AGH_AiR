% POWE_1 Pierwsza metoda Powella.
% Oznaczenia: n - wymiar zmiennej decyzyjnej
%             xn - aktualne przybli¿enie rozwi¹zania
%             dm - macierz kierunków poszukiwania
%             e0 - dok³adnoœæ obliczeñ.
y = []
for iter=1:maxit 
   xn=prosta1(xn,dm(:,z));
   x0=xn;
   X=[X xn];
   for i=1:z
      [xn,qn]=prosta1(xn,dm(:,i));
   end
   delta=norm(xn-x0);
   if delta<e0, break, end
   dm(:,1)=[];
   y = [y qn];
   dm(:,z)=(xn-x0)/delta;
   x_iter = [x_iter, xn];
   kier_baz = [kier_baz , dm(:, n)];
end