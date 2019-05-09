close all;
clear all;

t1 =[1,2,2,3,3,4,4,5,6];
s1 =[2,3,4,5,6,5,6,7,7];
w1 =[1,2,1,1,2,5,4,2,1];
w2 =[1,3,1,1,1,2,3,2,1];

S = zeros(7);
S(3,2)=1;S(2,3)=1;S(5,2)=1;S(2,5)=1;
S(4,2)=1;S(2,4)=1;S(6,2)=1;S(2,6)=1;
G1= digraph(t1,s1,w1);
G2= digraph(t1,s1,w2);

figure(1)
plot(G1,'EdgeLabel',G1.Edges.Weight)
figure(2)
plot(G2,'EdgeLabel',G2.Edges.Weight)

%%% dodanie wiadomoœci wynikaj¹cych z sprzezen antycypacyjnych
for i=1:size(S)
    for j=1:size(S)
        if S(i,j)==1
            t1 = [t1,i];
            s1 = [t1,j];
            w1 =[w1 shortestpath(G1,i,j)]
            w2 =[w2 shortestpath(G2,i,j)]
        end
    end
end
[P1,d1] = shortestpath(G1,1,7)
[P2,d2] = shortestpath(G2,1,7)

figure(1)
GP1=plot(G1,'EdgeLabel',G1.Edges.Weight)
highlight(GP1,P1,'EdgeColor','r','LineWidth',4)
title(strcat('Najkrotsza sciezka dla funkcji kosztu 1 K=',num2str(d1)))
figure(2)
GP1=plot(G1,'EdgeLabel',G1.Edges.Weight)
highlight(GP1,[1,2,4,6,7],'EdgeColor','g','LineWidth',4)
title(strcat('Najkrotsza sciezka dla funkcji kosztu 1, bez sprzê¿eñ K=',num2str(7)))
figure(3)
GP2=plot(G2,'EdgeLabel',G2.Edges.Weight)
highlight(GP2,[1,2,4,5,7],'EdgeColor','g','LineWidth',4)
title(strcat('Najkrotsza sciezka dla funkcji kosztu 2, bez sprzê¿eñ K=',num2str(6)))
figure(4)
GP2=plot(G2,'EdgeLabel',G2.Edges.Weight)
highlight(GP2,P2,'EdgeColor','r','LineWidth',4)
title(strcat('Najkrotsza sciezka dla funkcji kosztu 2 K=',num2str(d2)))


%%%%%%%%%
figure(5);
pth = pathof(G1,1,7);
for ii = 1:length(pth)
    subplot(3,2,ii);
    h(ii) = plot(G1, 'edgecolor', 'k', 'nodecolor', 'k');
    highlight(h(ii), pth{ii}, 'edgecolor', 'b', 'nodecolor', 'b'); 
    highlight(h(ii), 1, 'nodecolor', 'g');
    highlight(h(ii), 7, 'nodecolor', 'r');
end

figure(6);
pth = path_to_end_node(G2,1,7);
for ii = 1:length(pth)
    
    subplot(3,2,ii);
    h(ii) = plot(G2, 'edgecolor', 'k', 'nodecolor', 'k');
    highlight(h(ii), pth{ii}, 'edgecolor', 'b', 'nodecolor', 'b'); 
    highlight(h(ii), 1, 'nodecolor', 'g');
    highlight(h(ii), 7, 'nodecolor', 'r');
end

