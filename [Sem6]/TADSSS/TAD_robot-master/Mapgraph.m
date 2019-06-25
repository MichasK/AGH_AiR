classdef Mapgraph
    properties
        graph_
    end
    methods
        function obj=Mapgraph(connections,X_coordinates,Y_coordinates)
            nodecoordinates={};
            for i = 1:size(connections,1)
                currentX=int2str(X_coordinates(i));
                currentY=int2str(Y_coordinates(i));
                nodecoordinates=[nodecoordinates,strcat(currentX,',',currentY)];
            end
            obj.graph_=graph(connections,nodecoordinates,'upper','omitselfloops');
        end
        function show()
            figure()
            plot(obj)
        end
        function p=find_path(startpoint,endpoint)
            p=shortestpath(obj,startpoint,endpoint);
        end
        function flag=is_a_crossroad(x,y)
            flag=0;
            currentX=int2str(x);
            currentY=int2str(y);
            nodename=strcat(currentX,',',currentY);
            for i=1:size(obj.graph_.Nodes,1)
                if strcmp(obj.graph_.Nodes(i),nodename)
                    flag=1;
                end
            end
        end
    end
end