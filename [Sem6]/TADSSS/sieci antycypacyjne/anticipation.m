function [paths,pathto]=anticipation(A,coupling,M,last)
current=1;
size_A=size(A);
size_A=size_A(1);
to_visit=[];
paths=zeros(1,size(A,1));
length_paths=length(paths);
pathto=[0,0];
next=[1];
valid_coupling=paths;
while(current~=last&&length(next)~=0)
    current=next(1);
    next(1)=[];
    to_visit=[];
    anticipate=0;
    for i=1:size_A
        if coupling(current,i)==1
            anticipate=1;
        end
    end
    if anticipate==1
        for i=current:size_A
            valid_coupling(i)=check_connection(A,coupling,M,current,i);
        end
    else
        valid_coupling(current)=1;
    end
    for i=1:size_A
        if valid_coupling(i)==1
            valid_A(i,:)=A(i,:);
        else
            valid_A(i,1:size_A)=M;
        end
    end
    s=[];
    t=[];
    G=[];
    for i=1:size_A
        for j=1:size_A
            if valid_A(i,j)<M
                s=[s,i];
                t=[t,j];
                G=[G,valid_A(i,j)];
                if valid_coupling(j)~=1
                    to_visit=[to_visit,j];
                end
            end
        end
    end
    tempgraph=digraph(s,t,G);
    for i=1:length(to_visit)
        add_flag=1;
        size_of_pathto=size(pathto);
        height_of_pathto=size_of_pathto(1);
        if height_of_pathto==0
        else
            for j=1:height_of_pathto
                if pathto(j,1)==current&&pathto(j,2)==to_visit(i)
                    add_flag=0;
                end
            end
        end
	if add_flag==1 && to_visit(i)>current
        shortest_path=shortestpath(tempgraph,current,to_visit(i));
        if length(shortest_path)~=0
            pathto=[pathto;current,to_visit(i)];
            shortest_path=[shortest_path,zeros(1,length_paths-length(shortest_path))];
            paths=[paths;shortest_path];
            if to_visit(i)
                next=[next,to_visit(i)];
            end
        end
	end
end
end
end