function undominated_solutions=pick_undominated(solutions,dimensions,graphs,couplings,M)
    all_solutions=[];
    temp_solutions=[];
    for dim=1:dimensions
        all_solutions=[all_solutions;solutions(:,:,dim)];
    end
        for i=1:size(all_solutions,1)
            delete_flag=0;
            if i+1<size(all_solutions,1)
            for j=i+1:size(all_solutions,1)
                if all_solutions(i,:)==all_solutions(j,:);
                    delete_flag=1;
                end
            end
            end
            if delete_flag~=1
                temp_solutions=[temp_solutions;all_solutions(i,:)];
            end
        end
    all_solutions=temp_solutions;
    solutions_costs=[];
    for i=1:size(all_solutions,1)
        sum=zeros(1,dimensions);
        for j=1:size(all_solutions,2)-1
            for dim=1:dimensions
                if all_solutions(i,j+1)~=0
                    if graphs(all_solutions(i,j),all_solutions(i,j+1))<M
                        sum(dim)=sum(dim)+graphs(all_solutions(i,j),all_solutions(i,j+1),dim);
                    end
                end
            end
        end
        
        solutions_costs=[solutions_costs;sum];
    end
    undominated=[];
    undominated_costs=[];
    for i=1:size(solutions_costs,1)
        dont_add=0;
        for ii=1:size(solutions_costs,1)
            dom_flag=0;
            for dim=1:dimensions
                if solutions_costs(i,dim)>=solutions_costs(ii,dim)&&i~=ii
                    dom_flag=dom_flag+1;
                end
            end
            if dom_flag==dimensions
                dont_add=1;
            end
        end
        if dont_add==0
            undominated=[undominated;all_solutions(i,:)];
            undominated_costs=[undominated_costs;solutions_costs(i,:)];
        end
    end
    undominated_solutions=undominated;
    for ii=1:size(undominated_solutions,1)
    for dim=1:dimensions
        figure()
        hold on
        s=[];
        t=[];
        G=[];
        for i=1:size(graphs,1)
            for j=1:size(graphs,2)
                if graphs(i,j,dim)<M
                    s=[s,i];
                    t=[t,j];
                    G=[G,graphs(i,j,dim)];
                end
            end
        end
        tempgraph=digraph(s,t,G);
        spath=[];
        tpath=[];
        for j=1:size(undominated_solutions,2)
        	if undominated_solutions(ii,j)~=0
            	spath=[spath,undominated_solutions(ii,j)];
            end
        end
        hold off
        p=plot(tempgraph,'EdgeLabel',tempgraph.Edges.Weight,'EdgeColor','b')
        highlight(p,[1,2,3,5,6,7],'EdgeColor','g','LineWidth',3)
        
       
    end
    end
end