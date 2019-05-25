% DANEPL Plik z danymi do zadania programowania liniowego.
%        Zawiera elementy wektor�w i macierzy:
%        c - wektor kosztu
%        b - wektor prawych stron
%        A - macierz ogranicze� wierszowych
%        t - wektor typ�w ogranicze�:
%            =-1 dla <=
%            = 0 dla =
%            = 1 dla >=
%        l,u - wektory dolnych i g�rnych ogranicze� na zmienne.
% Warto�� domy�lna dla element�w wszystkich wektor�w i macierzy 
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