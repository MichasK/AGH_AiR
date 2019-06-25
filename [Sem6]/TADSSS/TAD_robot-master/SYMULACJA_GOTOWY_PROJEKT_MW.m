%% Importy - NIE RUSZAC
close all;
clear all;


import Robot.*;

%% Ustawienie pliku mapy - WYPELNIC

map = imread('mapa_mw.png');

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

connectionMatrix(1,2)=15;
connectionMatrix(2,1)=15;

connectionMatrix(2,3)=29;
connectionMatrix(3,2)=29;

connectionMatrix(2,6)=20;
connectionMatrix(6,2)=20;

connectionMatrix(3,4)=44;
connectionMatrix(4,3)=44;

connectionMatrix(3,7)=12;
connectionMatrix(7,3)=12;

connectionMatrix(4,14)=25;
connectionMatrix(14,4)=25;

connectionMatrix(14,13)=11;
connectionMatrix(13,14)=11;

connectionMatrix(12,13)=9;
connectionMatrix(13,12)=9;

connectionMatrix(5,6)=20;
connectionMatrix(6,5)=20;

connectionMatrix(6,16)=21;
connectionMatrix(16,6)=21;

connectionMatrix(7,10)=14;
connectionMatrix(10,7)=14;

connectionMatrix(9,10)=15;
connectionMatrix(10,9)=15;

connectionMatrix(10,11)=16;
connectionMatrix(11,10)=16;

connectionMatrix(15,16)=11;
connectionMatrix(16,15)=11;

connectionMatrix(16,17)=14;
connectionMatrix(17,16)=14;

connectionMatrix(9,17)=15;
connectionMatrix(17,9)=15;

connectionMatrix(17,18)=17;
connectionMatrix(18,17)=17;

connectionMatrix(11,19)=17;
connectionMatrix(19,11)=17;

connectionMatrix(19,20)=17;
connectionMatrix(20,19)=17;

connectionMatrix(13,20)=18;
connectionMatrix(20,13)=18;

connectionMatrix(17,21)=13;
connectionMatrix(21,17)=13;

connectionMatrix(21,22)=31;
connectionMatrix(22,21)=31;

connectionMatrix(19,22)=11;
connectionMatrix(22,19)=11;

connectionMatrix(15,23)=21;
connectionMatrix(23,15)=21;

connectionMatrix(23,24)=25;
connectionMatrix(24,23)=25;

connectionMatrix(21,24)=8;
connectionMatrix(24,21)=8;

connectionMatrix(24,25)=7;
connectionMatrix(25,24)=7;

connectionMatrix(25,26)=27;
connectionMatrix(26,25)=27;

connectionMatrix(20,27)=31;
connectionMatrix(27,20)=31;

connectionMatrix(27,28)=15;
connectionMatrix(28,27)=15;

connectionMatrix(27,33)=11;
connectionMatrix(33,27)=11;

connectionMatrix(23,30)=23;
connectionMatrix(30,23)=23;

connectionMatrix(30,31)=13;
connectionMatrix(31,30)=13;

connectionMatrix(31,29)=12;
connectionMatrix(29,31)=12;

connectionMatrix(31,32)=39;
connectionMatrix(32,31)=39;

connectionMatrix(26,32)=21;
connectionMatrix(32,26)=21;

connectionMatrix(7,8)=24;
connectionMatrix(8,7)=24;

connectionMatrix(8,12)=13;
connectionMatrix(12,8)=13;


%% Wspolrzedne wezlow(ich nazwy) - WYPELNIC
% Wezly maja byc na skrzyzowaniach i na koncach korytarzy, zeby dalo sie
% jezdzic wszedzie

names={'8,7','8,22','8,51','8,95','28,2','28,22','20,51','20,75','34,36','34,51','34,67','33,75','33,84','33,95'...
    ,'49,11','49,22','49,36','49,53','51,67','51,84','62,36','62,67','70,11','70,36','77,36','77,63','82,84','82,98'...
    ,'85,24','93,11','93,24','93,63','93,84'};

%% Tworzenie grafu - NIE RUSZAC
G = graph(connectionMatrix,names);

%% Tworzenie robotow, tutaj nowe roboty(jesli chcecie wiecej) - WYPELNIC
robot = Robot();
robot2 = Robot();
robot3 = Robot();
robot4 = Robot();
robot5 = Robot();
robot6 = Robot();

%% Ustawienie robotom id, musi byc unikalne - WYPELNIC
robot.id = 1;
robot2.id = 2;
robot3.id = 3;
robot4.id = 4;
robot5.id = 5;
robot6.id = 6;

%% Wspolrzedne poczatkowe robotow - WYPELNIC
% Tak samo x i y, musza sie znajdywac w bialej czesci mapy

robot.x = 8;
robot.y = 7;

robot2.x = 49;
robot2.y = 53;

robot3.x = 93;
robot3.y = 11;

robot4.x = 28;
robot4.y = 2;

robot5.x = 83;
robot5.y = 99;

robot6.x = 93;
robot6.y = 63;


%% Ustalenie robotom celow, koordynaty docelowe musza sie pokrywac z ktoryms z wezlow - WYPELNIC
robot.findPathToNode(G,map,93,84);
robot2.findPathToNode(G,map,85,24);
robot3.findPathToNode(G,map,49,53);
robot4.findPathToNode(G,map,62,67);
robot5.findPathToNode(G,map,28,2);
robot6.findPathToNode(G,map,8,51);


robot.radious_of_eyeshot = 10;
robot2.radious_of_eyeshot = 10;
robot3.radious_of_eyeshot = 10;
robot4.radious_of_eyeshot = 10;
robot5.radious_of_eyeshot = 10;
robot6.radious_of_eyeshot = 10;
robots_list = [robot,robot2,robot3,robot4,robot5,robot6];
% robots_list = [robot];

%% Przykladowe oczekiwania, mozliwie potrzebne na poczatku - MOZNA WYPELNIC

robot3.wait(6);

   
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
    pause(0.1);
end