function  ColourOfNodes = colour(Graph)
%zwraca wektor z numerami "kolorow" dla kazdego z wierzcholkow
M=full(adjacency(Graph));
[rows,~]=size(M);
ColourOfNodes=zeros(1,rows);
for j = 1:rows
    avColours(j) = j;
end
for i=1:rows
    availableColours=avColours;
    neigh=neighbors(Graph,i);
    neighColours=ColourOfNodes(neigh);
    neighColours = nonzeros(neighColours');
    availableColours(neighColours)=[];
    ColourOfNodes(i)=availableColours(1);
end
end
% %graf testowy
% s=[1 1 2 2 2 3 4 4 5 ];
% t=[2 5 3 6 5 4 6 5 6 ];
% D=graph(s,t);