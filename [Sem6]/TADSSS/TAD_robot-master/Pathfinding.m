%% Pathfinding
% An example how to use class Graph.
% Usage: 
%   g=Graph(map);
%   Constructor, where map is 2D matrix of mobility map.
%
%   ShowPath(g,map,shortpathv); 
%   Displaying where shortpathv is list of nodes on shortest path.
%
%   [shortpathv g]=GetPath(g,initv,finalv); Computing the shortest path
%   between init_node and final_node.

mapread = imread('testxd.png');
start = [36,8];
ending =[91,84];
path = pathtracking(mapread,start,ending);