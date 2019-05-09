function path=path_to_end_node(graph,startn,endn)
stop_loop=0;
n=0;
while stop_loop~=1
    n=n+1;
    tmp=shortestpath(graph,startn,endn);
    ID=findedge(graph,tmp(1:end-1),tmp(2:end));
    if n~=1
        if length(tmp)==length(path{n-1,1})
            if tmp==path{n-1,1}
                stop_loop=1;
            else
                path{n,1}=tmp;
                graph.Edges.Weight(ID)=100;
            end
        else
            path{n,1}=tmp;
            graph.Edges.Weight(ID)=100;
        end
    else
        path{n,1}=tmp;
        graph.Edges.Weight(ID)=100;
    end
    clear tmp ID;
end