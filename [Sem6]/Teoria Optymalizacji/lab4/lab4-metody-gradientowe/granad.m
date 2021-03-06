% GRANAD Zawiera nast�puj�ce metody gradientowe:
%        - najszybszego spadku (par=0)
%        - Fletchera - Reevesa (par=1)
%        - Polaka - Ribiere'a  (par=2)
%        - z pe�n� formu�� na wsp�czynnik beta (par=3).
% Oznaczenia: maxit - maksymalna liczba iteracji g�rnego poziomu
%             x0 - aktualne przybli�enie rozwi�zania optymalnego
%             e0 - metoda si� zatrzymuje, gdy kwadrat normy gradientu
%                  n2 spadnie poni�ej e0
%             g - gradient
%             d - kierunek poszukiwania
%             czod - cz�sto�� odnowy.

maxit=200;
e0=1e-3;
czod=2*length(x0);
wskaz=0;
przyblizenia = x0;

for i=1:maxit
   g = gradie(x0);
   n2=g'*g;
   if n2<e0,break,end
   if ~par|rem(i,czod)==1|~wskaz
      d=-g;
   else
      if par==1
         beta=n2/ns2;
      elseif par==2
         beta=g'*(g-gs)/ns2;         
      elseif par==3
         beta=g'*(g-gs)/(d'*(g-gs));
      end
      d=-g+beta*d;
   end
   if d'*g<0 
      ns2=n2; 
      gs=g;
      [x0,wskaz]=kierun(x0,d);
   else
      wskaz=0;
   end
   przyblizenia = [przyblizenia x0];
end    