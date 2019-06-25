close all;
clear all;

import Robot.*;
%% Plansza wejsciowa - NIE RUSZAC
map = imread('mapa.png');
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

 connectionMatrix(1,2) = 14;
 connectionMatrix(2,1) = 14;
 connectionMatrix(2,3) = 5;
 connectionMatrix(3,2) = 5;
 connectionMatrix(2,4) = 12;
 connectionMatrix(4,2) = 12;
 connectionMatrix(4,5) = 14;
 connectionMatrix(5,4) = 14;
 connectionMatrix(5,6) = 5;
 connectionMatrix(6,5) = 5;

%% Wspolrzedne wezlow(ich nazwy) - WYPELNIC
% Wezly maja byc na skrzyzowaniach i na koncach korytarzy, zeby dalo sie
% jezdzic wszedzie

names = {'11,12','11,21','11,26','23,21','23,7','18,7'};

%% Tworzenie grafu - NIE RUSZAC
G = graph(connectionMatrix,names);

%% Tworzenie robotow, tutaj nowe roboty(jesli chcecie wiecej) - WYPELNIC
robot = Robot();
robot2 = Robot();
robot3 = Robot();

%% Ustawienie robotom id, musi byc unikalne - WYPELNIC
robot.id = 1;
robot2.id = 2;
robot3.id = 3;

%% Wspolrzedne poczatkowe robotow - WYPELNIC
% Tak samo x i y, musza sie znajdywac w bialej czesci mapy

robot.x = 3;
robot.y = 12;

robot2.x = 18;
robot2.y = 7;

robot3.x = 23;
robot3.y = 21;

%% Ustalenie robotom celow, koordynaty docelowe musza sie pokrywac z ktoryms z nodow - WYPELNIC
robot.findPathToNode(G,map,18,7);
robot2.findPathToNode(G,map,11,12);
robot3.findPathToNode(G,map,11,26);


robot.radious_of_eyeshot = 10;
robot2.radious_of_eyeshot = 10;
robot3.radious_of_eyeshot = 10;
robots_list = [robot,robot2,robot3];

%% Przykladowe oczekiwania, mozliwie potrzebne na poczatku - MOZNA WYPELNIC

%robot.wait(10);

   
%% Symulacja ustawic licznik iteracji - NIE RUSZAC

plot_init(robots_list);
for i=1:500
   
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