%% Importy - NIE RUSZAC
close all;
clear all;


import Robot.*;

%% Ustawienie pliku mapy - WYPELNIC

map = imread('mapa_bartek.png');

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

connectionMatrix(1,2)=6;
connectionMatrix(2,1)=6;
connectionMatrix(2,3)=15;
connectionMatrix(3,2)=15;
connectionMatrix(3,4)=8;
connectionMatrix(4,3)=8;
connectionMatrix(4,5)=7;
connectionMatrix(5,4)=7;
connectionMatrix(5,6)=28;
connectionMatrix(6,5)=28;
connectionMatrix(7,2)=13;
connectionMatrix(2,7)=13;
connectionMatrix(7,8)=30;
connectionMatrix(8,7)=30;
connectionMatrix(9,8)=28;
connectionMatrix(8,9)=28;
connectionMatrix(8,5)=13;
connectionMatrix(5,8)=13;
connectionMatrix(9,6)=13;
connectionMatrix(6,9)=13;
connectionMatrix(9,10)=14;
connectionMatrix(10,9)=14;
connectionMatrix(10,11)=22;
connectionMatrix(11,10)=22;
connectionMatrix(10,13)=15;
connectionMatrix(13,10)=15;
connectionMatrix(13,12)=34;
connectionMatrix(12,13)=34;
connectionMatrix(14,15)=12;
connectionMatrix(15,14)=12;
connectionMatrix(15,16)=22;
connectionMatrix(16,15)=22;
connectionMatrix(12,16)=12;
connectionMatrix(16,12)=12;
connectionMatrix(17,13)=24;
connectionMatrix(13,17)=24;
connectionMatrix(17,18)=22;
connectionMatrix(18,17)=22;
connectionMatrix(18,11)=39;
connectionMatrix(11,18)=39;
connectionMatrix(15,19)=18;
connectionMatrix(19,15)=18;
connectionMatrix(20,1)=15;
connectionMatrix(1,20)=15;
connectionMatrix(24,1)=10;
connectionMatrix(1,24)=10;
connectionMatrix(21,3)=15;
connectionMatrix(3,21)=15;
connectionMatrix(22,4)=15;
connectionMatrix(4,22)=15;
connectionMatrix(23,6)=15;
connectionMatrix(6,23)=15;
connectionMatrix(25,7)=16;
connectionMatrix(7,25)=16;
connectionMatrix(26,10)=28;
connectionMatrix(10,26)=28;
connectionMatrix(27,14)=24;
connectionMatrix(14,27)=24;
connectionMatrix(28,19)=18;
connectionMatrix(19,28)=18;
connectionMatrix(29,16)=29;
connectionMatrix(16,29)=29;
connectionMatrix(30,17)=17;
connectionMatrix(17,30)=17;





%% Wspolrzedne wezlow(ich nazwy) - WYPELNIC
% Wezly maja byc na skrzyzowaniach i na koncach korytarzy, zeby dalo sie
% jezdzic wszedzie

names={'16,11','16,17','16,32','16,40','16,47','16,75','29,17','29,47','29,75','43,75','43,97','58,41','58,75','70,7','70,19','70,41','82,75','82,97','88,19','1,11','1,32','1,40','1,75','16,1','29,1','43,47','46,7','88,1','99,41','99,75'};

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

robot.x = 2;
robot.y = 11;

robot2.x = 3;
robot2.y = 75;

robot3.x = 88;
robot3.y = 3;

robot4.x = 99;
robot4.y =75;

robot5.x = 43;
robot5.y = 47;

robot6.x = 82;
robot6.y = 97;

%% Ustalenie robotom celow, koordynaty docelowe musza sie pokrywac z ktoryms z wezlow - WYPELNIC
robot.findPathToNode(G,map,82,97);
robot2.findPathToNode(G,map,58,41);
robot3.findPathToNode(G,map,16,11);
robot4.findPathToNode(G,map,46,7);
robot5.findPathToNode(G,map,1,32);
robot6.findPathToNode(G,map,29,1);


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
    pause(0.25);
end