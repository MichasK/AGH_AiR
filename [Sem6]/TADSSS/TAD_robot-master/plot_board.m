function [] = plot_board(robots,map)
%map mapa inicjalizuj¹ca, jedna na ca³¹ symulacjê, do niej dorysowywane s¹
%pozycje robotów
    scaling_factor = 5;
    map_cpy = map;
    map_cpy = imresize(map,[size(map,1)*scaling_factor,size(map,2)*scaling_factor]);
    map_cpy = transpose(map_cpy);
%1) Rysowanie robotów z listy robotów wykonywane co iteracjê
for robot = robots
   map_cpy=insertShape(map_cpy,'FilledCircle',[int16(robot.y)*scaling_factor,int16(robot.x)*scaling_factor,5],'Color',robot.color_of_plot);
end
imshow(imresize(map_cpy,[900,900]))
end

