close all;
clear all;

import Robot.*;
%%%%Plansza wejsciowa
map=zeros(300,300,3);
%%%%Tworzenie kilku robotow
robots_list = [];
for i=1:4
    r = Robot();
    r.x=rand*300;
    r.y=rand*300;
    r.id=i;
    robots_list =  [robots_list r];
end
   
    plot_init(robots_list);
    %%%prosta symulacja
for i=1:500
    
    
    for robot = robots_list
        number = -2 + 4*rand;
        robot.x=robot.x+number;
        robot.y=robot.y +number;   
    end
    plot_board(robots_list,map);
    pause(0.25);
end

