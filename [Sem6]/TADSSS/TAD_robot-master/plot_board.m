function [] = plot_board(robots,map)
%map mapa inicjalizuj�ca, jedna na ca�� symulacj�, do niej dorysowywane s�
%pozycje robot�w
    scaling_factor = 5;
    map_cpy = map;
    map_cpy = imresize(map,[size(map,1)*scaling_factor,size(map,2)*scaling_factor]);
    map_cpy = transpose(map_cpy);
%1) Rysowanie robot�w z listy robot�w wykonywane co iteracj�
for robot = robots
   map_cpy=insertShape(map_cpy,'FilledCircle',[int16(robot.y)*scaling_factor,int16(robot.x)*scaling_factor,5],'Color',robot.color_of_plot);
end
imshow(imresize(map_cpy,[900,900]))
end

