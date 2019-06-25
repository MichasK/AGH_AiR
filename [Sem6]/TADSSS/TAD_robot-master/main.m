clear all;
close all;


import Robot.*;


map = imread('mapa.png');
map = double(map);
map = map/255;
map = abs(map-1);
map = map(:,:,1);



robot = Robot();
connectionMatrix = zeros(3);


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


names = {'11,12','11,21','11,26','23,21','23,7','18,7'};

G = graph(connectionMatrix,names);
plot(G,'Layout','layered','EdgeLabel',G.Edges.Weight);

robot.x = 11;
robot.y = 12;


robot.findPathToNode(G,map,18,7);
while (robot.x ~= 18 || robot.y ~= 7)
    robot.evaluate_step();
end