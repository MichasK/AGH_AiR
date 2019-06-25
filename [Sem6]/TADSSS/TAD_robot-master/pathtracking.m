

function path=pathtracking(mapread,start_point,end_point)

    
    for i=1:size(mapread,1)
        for j=1:size(mapread,2)
            if(mapread(i,j) < 1)
                mapread(i,j)= 0;
            end
        end
    end
    map = zeros(size(mapread,1),size(mapread,2),3);

    map(:,:,1) = mapread;
    map(:,:,2) = mapread;
    map(:,:,3) = mapread;

  
    starting_point = [start_point(1),start_point(2),0];
    ending_point = [end_point(1),end_point(2),inf];
    cells_array = starting_point;
    second_array = [];
    finished = 0;
    turn_counter=0;
    while(~finished)
          turn_counter = turn_counter+1;
        for j=1:size(cells_array,1)
                if(cells_array(j,3) == turn_counter-1)
                if(cells_array(j,1)-1>0 && map(cells_array(j,1)-1,cells_array(j,2)) ~= 1)
                    second_array = [second_array; cells_array(j,1)-1, cells_array(j,2), turn_counter];

                end
                if(cells_array(j,2)-1>0 && map(cells_array(j,1),cells_array(j,2)-1) ~= 1)
                    second_array = [second_array; cells_array(j,1), cells_array(j,2)-1, turn_counter];

                end
                if(cells_array(j,1)+1<size(map,1)+1 && map(cells_array(j,1)+1,cells_array(j,2)) ~= 1)
                    second_array = [second_array; cells_array(j,1)+1, cells_array(j,2), turn_counter];

                end
                if(cells_array(j,2)+1<size(map,2)+1 && map(cells_array(j,1),cells_array(j,2)+1) ~= 1)
                    second_array = [second_array; cells_array(j,1), cells_array(j,2)+1, turn_counter];

                end
                indexes_to_remove = [];
                for f=1:size(second_array,1)
                    if any(cells_array(:,1) == second_array(f,1) & cells_array(:,2) == second_array(f,2))
                        indexes_to_remove = [indexes_to_remove, f]; 
                    end
                end
                second_array(indexes_to_remove,:) = [];

                cells_array = [cells_array; second_array];
                second_array = [];

                if any(cells_array(:,1) == ending_point(1) & cells_array(:,2) == ending_point(2))
                    finished =1;
                end
                end
        end

    end

    ending_point(3) = turn_counter;
    current_point = ending_point;
    points = [ending_point];
    turn_counter_size = turn_counter;
    for i=1:turn_counter_size
            cos = cells_array(:,1) == current_point(1)-1 & cells_array(:,2) == current_point(2);
            if(any(cos))
                index = find(cos==1);
                if(cells_array(index,3)<turn_counter)
                  points = [points; cells_array(index,:,:)];
                  turn_counter = cells_array(index,3);
                  current_point = cells_array(index,:,:);
                end
            end
            cos = cells_array(:,1) == current_point(1)+1 & cells_array(:,2) == current_point(2);
            if(any(cos))
                index = find(cos==1);
                if(cells_array(index,3)<turn_counter)
                  points = [points; cells_array(index,:,:)];
                  turn_counter = cells_array(index,3);
                  current_point = cells_array(index,:,:);
                end
            end
            cos = cells_array(:,1) == current_point(1) & cells_array(:,2) == current_point(2)-1;
            if(any(cos))
                index = find(cos==1);
                if(cells_array(index,3)<turn_counter)
                  points = [points; cells_array(index,:,:)];
                  turn_counter = cells_array(index,3);
                  current_point = cells_array(index,:,:);
                end
            end
            cos = cells_array(:,1) == current_point(1) & cells_array(:,2) == current_point(2)+1;
            if(any(cos))
                index = find(cos==1);
                if(cells_array(index,3)<turn_counter)
                  points = [points; cells_array(index,:,:)];
                  turn_counter = cells_array(index,3);
                  current_point = cells_array(index,:,:);
                end
            end

    end

    for i=1:size(points,1)
        map(points(i,1),points(i,2),2) = 1;
    end
    path = points;
%     figure
%     imshow(imcomplement(imresize(map,[size(mapread,1)*5,size(mapread,2)*5])));
end