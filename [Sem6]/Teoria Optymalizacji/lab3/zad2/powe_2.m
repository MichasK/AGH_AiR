% POWE_2 Druga metoda Powella.
% Oznaczenia: n - wymiar zmiennej decyzyjnej
%             xn - aktualne przybli¿enie rozwi¹zania
%             dm - macierz kierunków poszukiwania
%             e0 - dok³adnoœæ obliczeñ.

detdm=1;
x_iter = [xn];
kier_baz = [];

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
   
   detdm= [detdm,D];
   xn=prosta1(xn,dm(:,n));
   x_iter = [ x_iter , xn ];
   kier_baz =[ kier_baz , dm ];
   end   
end
itp=iter;