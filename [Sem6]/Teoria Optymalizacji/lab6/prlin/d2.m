% DANEPL Plik z danymi do zadania programowania liniowego.
%        Zawiera elementy wektorów i macierzy:
%        c - wektor kosztu
%        b - wektor prawych stron
%        A - macierz ograniczeñ wierszowych
%        t - wektor typów ograniczeñ:
%            =-1 dla <=
%            = 0 dla =
%            = 1 dla >=
%        l,u - wektory dolnych i górnych ograniczeñ na zmienne.
%        Wartoœæ domyœlna dla elementów wszystkich wektorów 
%        i macierzy wynosi zero.

% Tu wpisz rodzaj zadania:
% zadan='maks'  dla maksymalizacji
%     ='mini'  dla minimalizacji:
zadan='mini';

c=[0  0  0  0  1  1  1  1];
A=[1  1  0  0  0  0  0  0
   0  0  1  1  0  0  0  0
   2  0  1  0  0  0  0  0
  -1  0  0  0  1  0  0  0
   0 -1  0  0  0  1  0  0
   0  0 -1  0  0  0  1  0
   0  0  0 -1  0  0  0  1
   1  0  0  0  1  0  0  0
   0  1  0  0  0  1  0  0
   0  0  1  0  0  0  1  0
   0  0  0  1  0  0  0  1];

b=[1  1  3  0  0  0  0]';
t=[-1 -1  0  1  1  1  1  1  1  1  1]';
l=[-inf -inf -inf -inf 0 0 0 0]';
u=inf*ones(8,1);


