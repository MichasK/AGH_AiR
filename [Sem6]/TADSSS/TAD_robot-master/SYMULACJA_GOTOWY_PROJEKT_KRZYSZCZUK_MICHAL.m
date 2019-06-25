%% Importy - NIE RUSZAC
close all;
clear all;


import Robot.*;

%% Ustawienie pliku mapy - WYPELNIC

map = imread('mapa_mk.png');

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

connectionMatrix(1,2)=7;
connectionMatrix(2,1)=7;

connectionMatrix(2,3)=44;
connectionMatrix(3,2)=44;

connectionMatrix(3,4)=25;
connectionMatrix(4,3)=25;

connectionMatrix(4,5)=15;
connectionMatrix(5,4)=15;

connectionMatrix(6,2)=44;
connectionMatrix(2,6)=44;

connectionMatrix(7,6)=44;
connectionMatrix(6,7)=44;

connectionMatrix(7,3)=44;
connectionMatrix(3,7)=44;

connectionMatrix(7,8)=10;
connectionMatrix(8,7)=10;

connectionMatrix(8,9)=15;
connectionMatrix(9,8)=15;

connectionMatrix(9,4)=44;
connectionMatrix(4,9)=44;

connectionMatrix(9,10)=15;
connectionMatrix(10,9)=15;

connectionMatrix(10,5)=44;
connectionMatrix(5,10)=44;

connectionMatrix(11,6)=30;
connectionMatrix(6,11)=30;

connectionMatrix(11,12)=44;
connectionMatrix(12,11)=44;

connectionMatrix(12,7)=30;
connectionMatrix(7,12)=30;

connectionMatrix(12,13)=10;
connectionMatrix(13,12)=10;

connectionMatrix(13,8)=30;
connectionMatrix(8,13)=30;

connectionMatrix(14,13)=30;
connectionMatrix(13,14)=30;
connectionMatrix(14,10)=30;
connectionMatrix(10,14)=30;

connectionMatrix(15,11)=10;
connectionMatrix(11,15)=10;

connectionMatrix(15,16)=44;
connectionMatrix(16,15)=44;

connectionMatrix(16,12)=10;
connectionMatrix(12,16)=10;

connectionMatrix(17,16)=40;
connectionMatrix(16,17)=40;
connectionMatrix(17,14)=10;
connectionMatrix(14,17)=10;






%% Wspolrzedne wezlow(ich nazwy) - WYPELNIC
% Wezly maja byc na skrzyzowaniach i na koncach korytarzy, zeby dalo sie
% jezdzic wszedzie

names={'8,2','8,8','8,52','8,77','8,92','52,8','52,52','52,62','52,77','52,92','82,8','82,52','82,62','82,92','92,8','92,52','92,92'};

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
robot.y = 8;

robot2.x = 8;
robot2.y = 52;

robot3.x = 52;
robot3.y = 52;

robot4.x = 8;
robot4.y =77;

robot5.x = 8;
robot5.y = 92;

robot6.x = 92;
robot6.y = 8;

%% Ustalenie robotom celow, koordynaty docelowe musza sie pokrywac z ktoryms z wezlow - WYPELNIC
robot.findPathToNode(G,map,92,92);
robot2.findPathToNode(G,map,92,92);
robot3.findPathToNode(G,map,82,62);
robot4.findPathToNode(G,map,92,92);
robot5.findPathToNode(G,map,92,92);
robot6.findPathToNode(G,map,92,92);


robot.radious_of_eyeshot = 10;
robot2.radious_of_eyeshot = 10;
robot3.radious_of_eyeshot = 10;
robot4.radious_of_eyeshot = 10;
robot5.radious_of_eyeshot = 10;
robot6.radious_of_eyeshot = 10;

robots_list = [robot,robot2,robot3,robot4,robot5,robot6];

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
    pause(0.1);
end