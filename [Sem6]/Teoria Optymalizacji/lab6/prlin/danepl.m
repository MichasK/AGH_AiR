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
% Wartoœæ domyœlna dla elementów wszystkich wektorów i macierzy 
% wynosi zero.
% Wpisz rodzaj zadania:
%        zadan='maks'  dla maksymalizacji
%             ='mini'  dla minimalizacji.

zadan='mini';
c=[1 3 2];
b=[1;2];
A=[1 1 2
   3 1 1];
u=inf*[1;1;1];