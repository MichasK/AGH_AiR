%% Importy - NIE RUSZAC
close all;
clear all;


import Robot.*;

%% Ustawienie pliku mapy - WYPELNIC

map = imread('mapa_pw.png');

%% Plansza wejsciowa - NIE RUSZAC
map = double(map);
map = map/255;
map2draw = map(:,:,1);
map2draw = transpose(map2draw);
map = abs(map-1);
map = map(:,:,1);

%% Dlugosci polaczen pomiedzy wezlami- WYPELNIC
% Wspolrzedne dzialaja tak ze x to wiersze y to kolumny, czyli x gora dol y
% lewo prawo
% Dlugosci nalezy wpisac w dwie strony, tak jak w ponizszym przykladzie

connectionMatrix(1,4)=3;
connectionMatrix(4,1)=3;
connectionMatrix(3,4)=14;
connectionMatrix(4,3)=14;
connectionMatrix(4,5)=22;
connectionMatrix(5,4)=22;
connectionMatrix(2,5)=3;
connectionMatrix(5,2)=3;
connectionMatrix(5,6)=23;
connectionMatrix(6,5)=23;
connectionMatrix(6,15)=24;
connectionMatrix(15,6)=24;
connectionMatrix(35,7)=12;
connectionMatrix(7,35)=12;
connectionMatrix(7,8)=19;
connectionMatrix(8,7)=19;
connectionMatrix(7,16)=15;
connectionMatrix(16,7)=15;
connectionMatrix(4,11)=24;
connectionMatrix(11,4)=24;
connectionMatrix(5,13)=24;
connectionMatrix(13,5)=24;
connectionMatrix(9,10)=8;
connectionMatrix(10,9)=8;
connectionMatrix(10,11)=6;
connectionMatrix(11,10)=6;
connectionMatrix(10,17)=18;
connectionMatrix(17,10)=18;
connectionMatrix(11,12)=10;
connectionMatrix(12,11)=10;
connectionMatrix(12,13)=12;
connectionMatrix(13,12)=12;
connectionMatrix(12,18)=18;
connectionMatrix(18,12)=18;
connectionMatrix(13,14)=11;
connectionMatrix(14,13)=11;
connectionMatrix(14,15)=12;
connectionMatrix(15,14)=12;
connectionMatrix(14,19)=18;
connectionMatrix(19,14)=18;
connectionMatrix(15,16)=20;
connectionMatrix(16,15)=20;
connectionMatrix(17,18)=16;
connectionMatrix(18,17)=16;
connectionMatrix(18,19)=23;
connectionMatrix(19,18)=23;
connectionMatrix(18,25)=23;
connectionMatrix(25,18)=23;
connectionMatrix(25,26)=23;
connectionMatrix(26,25)=23;
connectionMatrix(19,26)=23;
connectionMatrix(26,19)=23;
connectionMatrix(15,20)=28;
connectionMatrix(20,15)=28;
connectionMatrix(20,21)=24;
connectionMatrix(21,20)=24;
connectionMatrix(21,29)=22;
connectionMatrix(29,21)=22;
connectionMatrix(21,22)=15;
connectionMatrix(22,21)=15;
connectionMatrix(26,28)=9;
connectionMatrix(28,26)=9;
connectionMatrix(26,27)=12;
connectionMatrix(27,26)=12;
connectionMatrix(20,27)=13;
connectionMatrix(27,20)=13;
connectionMatrix(28,29)=36;
connectionMatrix(29,28)=36;
connectionMatrix(28,30)=8;
connectionMatrix(30,28)=8;
connectionMatrix(23,24)=3;
connectionMatrix(24,23)=3;
connectionMatrix(24,32)=22;
connectionMatrix(32,24)=22;
connectionMatrix(31,32)=3;
connectionMatrix(32,31)=3;
connectionMatrix(32,33)=21;
connectionMatrix(33,32)=21;
connectionMatrix(33,34)=8;
connectionMatrix(34,33)=8;
connectionMatrix(24,33)=22;
connectionMatrix(33,24)=22;

%% Wspolrzedne wezlow(ich nazwy) - WYPELNIC
% Wezly maja byc na skrzyzowaniach i na koncach korytarzy, zeby dalo sie
% jezdzic wszedzie
%najpierw y potem x

names={'1,15','1,37','4,1','4,15','4,37','4,60','13,80','13,90','28,1','28,10','28,15','28,25','28,37','28,48','28,60','28,80','46,9','46,25','46,48','56,60','56,84','56,99','69,1','69,4','69,25','69,48','69,60','78,48','78,84','85,48','91,1','91,4','91,25','99,25','1,80'};

%% Tworzenie grafu - NIE RUSZAC
G = graph(connectionMatrix,names);

%% Tworzenie robotow, tutaj nowe roboty(jesli chcecie wiecej) - WYPELNIC
robot = Robot();
robot2 = Robot();
robot3 = Robot();
robot4 = Robot();
robot5 = Robot();

%% Ustawienie robotom id, musi byc unikalne - WYPELNIC
robot.id = 1;
robot2.id = 2;
robot3.id = 3;
robot4.id = 4;
robot5.id = 5;


%% Wspolrzedne poczatkowe robotow - WYPELNIC
% Tak samo x i y, musza sie znajdywac w bialej czesci mapy

robot.x =46;
robot.y = 26;

robot2.x = 68;
robot2.y = 48;

robot3.x = 46;
robot3.y = 47;

robot4.x = 23;
robot4.y = 14;

robot5.x = 28;
robot5.y = 24;
%% Ustalenie robotom celow, koordynaty docelowe musza sie pokrywac z ktoryms z wezlow - WYPELNIC
robot.findPathToNode(G,map,46,48);
robot2.findPathToNode(G,map,28,48);
robot3.findPathToNode(G,map,46,9);
robot4.findPathToNode(G,map,28,37);
robot5.findPathToNode(G,map,28,1);

robot.radious_of_eyeshot = 10;
robot2.radious_of_eyeshot = 10;
robot3.radious_of_eyeshot = 10;
robot4.radious_of_eyeshot = 10;
robot5.radious_of_eyeshot = 10;

robots_list = [robot,robot2,robot3,robot4,robot5];

%% Przykladowe oczekiwania, mozliwie potrzebne na poczatku - MOZNA WYPELNIC

%robot.wait(10);

   
%% Symulacja ustawic licznik iteracji - NIE RUSZAC

plot_init(robots_list);
for i=1:500
    w = warning('query','last');
    warning('off',w.identifier)
    rmpath('folderthatisnotonpath')
    for j=1:length(robots_list)
          
        robots_list(j).evaluate_step(); 
        robots_list(j).find_threats(robots_list);
        robots_list(j).send_message(robots_list);
        robots_list(j).send_to_coordinator(robots_list);
        robots_list(j).resolve_conflicts(robots_list);       

    end
    plot_board(robots_list,map2draw);
    pause(0.25);
end