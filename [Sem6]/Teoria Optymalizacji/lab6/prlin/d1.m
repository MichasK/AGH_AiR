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
zadan='maks';

A=[2:10;3:11;4:12;5:13;6:14;7:15;8:16;9:17;10:18];
A=ones(9)./A;   
b=A*ones(9,1);
c=b'+A(1,:);
t=-ones(9,1);
u=inf*ones(9,1);

