
    for i=1:size(A)
        for j=1:size(A)
            if poprawne_A(i,j)<inf
                t=[t,j];
                
                s=[s,i];
                
                G=[G,poprawne_A(i,j)];
                if poprawne_sprzezenia(j)~=1
                    do_odwiedzenia=[do_odwiedzenia,j];
                end
            end
        end
    end
    tmp_graf=digraph(s,t,G);
    for i=1:length(do_odwiedzenia)
        add_flag=1;
        size_of_pathto=size(pathto);
        height_of_pathto=size_of_pathto(1);
        if height_of_pathto==0
        else
            for j=1:height_of_pathto
                if pathto(j,1)==k&&pathto(j,2)==do_odwiedzenia(i)
                    add_flag=0;
                end
            end
        end
	if add_flag==1 && do_odwiedzenia(i)>k
        shortest_path=shortestpath(tmp_graf,k,do_odwiedzenia(i));
        if length(shortest_path)~=0
            pathto=[pathto;k,do_odwiedzenia(i)];
            shortest_path=[shortest_path,zeros(1,length_sciezki-length(shortest_path))];
            sciezki=[sciezki;shortest_path];
            if do_odwiedzenia(i)
                j=[j,do_odwiedzenia(i)];
            end
        end
	end