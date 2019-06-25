classdef Robot < handle
    properties
        x
        y
        path
        width
        veloctity
        id
        color_of_plot
        radious_of_eyeshot%zasiêg widzenia robota
        robots_in_the_eyeshot
        robots_in_danger %informacje do przekazania dla nadzorcy
        shortest_path
        coordinator_id_list
        coordinator_path_list
        is_coordinator
        queue
    end
    methods   
        
        function result = findPathThroughGraph(obj,graph,x,y,c,d)
                   
            names = graph.Nodes.Name;
            stringNames = string(size(names,1));
            
            for i=1:size(names,1)
                stringNames(i) = char(names(i));
            end
            
            cords = strcat(x,',');
            cords = strcat(cords,y);
            targetNodeNumber = find(stringNames == cords);
            
            c = num2str(c);
            d = num2str(d);
            
            cords = strcat(c,',');
            cords = strcat(cords,d);

            currentNodeNumber = find(stringNames == cords);
            
            path_temp = shortestpath(graph,currentNodeNumber,targetNodeNumber); 
            result = [];
            for i=1:size(path_temp,2)
                result = [result, graph.Nodes(path_temp(i),1).Name];
            end
        end
        
        function result = findPathToNode(obj,graph,map,x,y)
            shortest = Inf;
            
            
            
            path = [];
            for i=1:size(graph.Nodes,1)
                target_point = strsplit(string(graph.Nodes(i,1).Name),',');
                
                target_point_int = [];
                
                target_point_int = [str2double(target_point(1))];
                target_point_int = [target_point_int, str2double(target_point(2))];

                
                new_path = pathtracking(map,[obj.x,obj.y],target_point_int);
                if(size(new_path,1) < shortest)
                    shortest = size(new_path,1);
                    path = new_path;
                    closest_point = target_point;
                end
                
            end
            second_part = obj.findPathThroughGraph(graph,closest_point(1),closest_point(2),x,y);
            parsed_path = [];
            for i = 1:size(second_part,2)
                parse = strsplit(char(second_part(i)),',');
                parsed_path(i,1) = str2double(parse(1));
                parsed_path(i,2) = str2double(parse(2));
            end
            path(1,:) = [];
            path = path(:,1:2);
            path = flip(path,1);
            
            parsed_path = flip(parsed_path,1);
            current_point = parsed_path(1,:);
            for i =1:size(parsed_path,1)-1
                direction = [parsed_path(i+1,1) - parsed_path(i,1) , parsed_path(i+1,2) - parsed_path(i,2)];
                direction = direction/max(abs(direction));
                
                while(current_point(1) ~= parsed_path(i+1,1) || current_point(2) ~= parsed_path(i+1,2))            
                    path = [path; current_point];
                    current_point(1) = current_point(1) + direction(1);
                    current_point(2) = current_point(2) + direction(2);
                end
                path = [path; current_point];
            end
            
            obj.path = path;
            track_length = size(obj.path,1);
            for i=1:500
                obj.path(track_length+i,:) = obj.path(track_length,:);
            end
        end
        
        function obj = evaluate_step(obj)
             if(~isempty(obj.path))
           obj.x = obj.path(1,1);
           obj.y = obj.path(1,2);
           obj.path(1,:) = [];
             end
        end
        
        function obj = wait(obj,wait_time)
            for i=1:wait_time
            obj.path = [obj.path(1,:) ; obj.path];
            end
        end
        
        function obj = move(obj,x,y)
            point_x = obj.path(1,1);
            point_y = obj.path(1,2);
            point_x = point_x + x;
            point_y = point_y + y;
            obj.path(1,:) = [point_x, point_y]; 
        end
        
        function obj = find_threats(obj,robots)
            % Uzupe?nia wektor robot?w w polu widzenia
            for robot = robots
                if ((robot.x-obj.x)^2+(robot.y-obj.y)^2<obj.radious_of_eyeshot^2)
                    if (~ismember(robot.id,obj.robots_in_the_eyeshot))
                        obj.robots_in_the_eyeshot = [obj.robots_in_the_eyeshot robot.id]; 
                    end
                else
                    [is_member, loc] = ismember(robot.id,obj.robots_in_the_eyeshot);
                    if (is_member) 
                        obj.robots_in_the_eyeshot(loc) = [];
                    end
                end
                if (isempty(obj.robots_in_the_eyeshot))
                    obj.robots_in_danger = [];
                end
            end
        end
        
        function obj = receive_message(obj,robots_id)
            % Odbiera wiadomo?ci od innych robot?w i aktualizuje list?
            % robot?w na trasach kolizyjnych
            for i = robots_id
                if (~ismember(i,obj.robots_in_danger))
                    obj.robots_in_danger = [obj.robots_in_danger,i];
                end
            end
        end
        
        function send_message(obj,robots)
            %Wysy?a ka?demu z robot?w w zasi?gu informacj? o robotach w
            %zasi?gu
            for robot = robots
               if (ismember(robot.id,obj.robots_in_the_eyeshot))
                  robot.receive_message(obj.robots_in_the_eyeshot);
               end
            end
        end 
        function send_to_coordinator(obj,robots)
            %Koordynatorem zostaje robot o najstarszym id, robot wysy³a mu
            %swój index i scie¿kê
            
            id = min(obj.robots_in_danger);
            for robot = robots
                if (robot.id == id)
                    robot.is_coordinator = 1;
                    robot.coordinator_path_list = [];
                    obj.path = uint8(obj.path);
                    smth = 10;
                    obj.shortest_path = 10;
                    robot.coordinator_id_list = [robot.coordinator_id_list, obj.id];
                    robot.coordinator_id_list = unique(robot.coordinator_id_list);
                    
                    for robot_inner = robots
                        if(size(robot_inner.path,1)<10)
                            smth = size(robot_inner.path,1);
                            if(smth<obj.shortest_path)
                                obj.shortest_path = smth;
                                if(size(robot.coordinator_path_list,1) > smth+1)
                                 robot.coordinator_path_list = robot.coordinator_path_list(1:smth+1,:);
                                end
                            end
                        end
                        temp = [robot_inner.id, 0; robot_inner.path(1:obj.shortest_path,:)];
                        robot.coordinator_path_list = [robot.coordinator_path_list, temp];
 
                        
                    end
                else
                    robot.is_coordinator = 0;
                end
            end
        end
   
        function obj = resolve_conflicts(obj,robots)
            if(obj.is_coordinator == 1)
            collisions = [];
            for i=1:size(obj.coordinator_path_list,1)-1
                robot_number = size(obj.coordinator_path_list,2)/2;
                for j=1:robot_number-1
                    for z=j+1:robot_number
                        if(obj.coordinator_path_list(i,2*j-1) == obj.coordinator_path_list(i,2*z-1) && obj.coordinator_path_list(i,2*j) == obj.coordinator_path_list(i,2*z)...
                                || obj.coordinator_path_list(i,2*j-1) == obj.coordinator_path_list(i+1,2*z-1) && obj.coordinator_path_list(i,2*j) == obj.coordinator_path_list(i+1,2*z))
                            collisions = [collisions, [j;z;i]];
                            
                        end
                        
                    end
                end
            end
        if(~isempty(collisions))
            for i=1:size(collisions,2)
                direction = [obj.coordinator_path_list(collisions(3,i)+1,2*collisions(1,i)-1) - obj.coordinator_path_list(collisions(3,i),2*collisions(1,i)-1);...
                    obj.coordinator_path_list(collisions(3,i)+1,2*collisions(1,i)) - obj.coordinator_path_list(collisions(3,i),2*collisions(1,i))];
                points = [];
                if(collisions(3,i)>1)
                    points = [obj.coordinator_path_list(collisions(3,i)-1,2*collisions(1,i)-1) + abs(double(direction(1,1))-1), obj.coordinator_path_list(collisions(3,i)-1,2*collisions(1,i)) + abs(double(direction(2,1))-1)];

                end
                points = [points; obj.coordinator_path_list(collisions(3,i),2*collisions(1,i)-1) + abs(double(direction(1,1))-1), obj.coordinator_path_list(collisions(3,i),2*collisions(1,i)) + abs(double(direction(2,1))-1)];
                
                if(size(obj.coordinator_path_list,1)>collisions(3,i))
                    points = [points; obj.coordinator_path_list(collisions(3,i)+1,2*collisions(1,i)-1) + abs(double(direction(1,1))-1), obj.coordinator_path_list(collisions(3,i)+1,2*collisions(1,i)) + abs(double(direction(2,1))-1)];
                end
                
                new_track = obj.coordinator_path_list(1:size(obj.coordinator_path_list,1),2*collisions(1,i)-1:2*collisions(1,i));
                free_space = size(new_track,1) - size(points,1) - (collisions(3,i)-1);
                new_track = [new_track(1:collisions(3,i)-2,:); points; new_track(collisions(3,i)+1:collisions(3,i)+free_space+1,:)];
           
                id_to_send = new_track(1,1);
                new_track(1,:) = [];
                for i=1:size(robots,2)
                    if(robots(i).id==id_to_send)
                        robots(i).path(1:size(new_track,1),:) = new_track;
                    end
                end
            
            end
             G = graph(collisions(1,:),collisions(2,:));
            plot(G);
        end
        end
        end
      
    end
end
