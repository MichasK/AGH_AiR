% POWE_2 Druga metoda Powella.
% Oznaczenia: n - wymiar zmiennej decyzyjnej
%             xn - aktualne przybli¿enie rozwi¹zania
%             dm - macierz kierunków poszukiwania
%             e0 - dok³adnoœæ obliczeñ.

detdm=1;
xn=prosta1(xn,dm(:,n));

for iter=itp:maxit       
   tmax=0;
   x0=xn;
   for i=1:n
      [xn,qn,tn]=prosta1(xn,dm(:,i));
      if abs(tn)>tmax
         imax=i;
         tmax=abs(tn);
      end

   end
   delta=norm(xn-x0);
   if delta<e0, break, end
   D=tmax*detdm/delta;
   if D>=.8
   dm(:,imax)=[];
   dm(:,n)=(xn-x0)/delta;
   zm_kier=[zm_kier im];   % dodana zmienna pomocnicza
   kier_baz=[kier_baz  dm];  % dodana zmienna pomocnicza
   detdm=D;
   xn=prosta1(xn,dm(:,n));
   end   
end
itp=iter;