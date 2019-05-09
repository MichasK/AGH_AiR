function [sciezki,pathto]=znajdz_sprzezenia(A,sprzezenia,ostatni)
%indeks startowy
k=1;
do_odwiedzenia=[];
sciezki=zeros(1,size(A,1));
%przygotowanie macierzy sciezek
dlugosc_sciezki=length(sciezki);
pathto=[0,0];
j=[1];
poprawne_sprzezenia=sciezki;
while(k~=ostatni&&length(j)~=0)
    k=j(1);
    j(1)=[];
    do_odwiedzenia=[];
    antycypacje=0;
    for i=1:size(A)(1)
        if sprzezenia(k,i)==1
            antycypacje=1;
        end
    end
    
    
    
    
    if antycypacje==1
        for i=k:size(A)
            poprawne_sprzezenia(i)=sprawdzpolaczenie(A,sprzezenia,inf,k,i);
        end
    else
        poprawne_sprzezenia(k)=1;
    end
    
    
    
    for i=1:size(A)
        if poprawne_sprzezenia(i)==1
            poprawne_A(i,:)=A(i,:);
        else
            poprawne_A(i,1:size(A)(1))=inf;%je¿eli nie ma sprzezenia dajmy nieskonczonosc
        end
    end
    s=[];
    t=[];
    G=[];
    
    utworz_graf;%odwolanie do kolejnego skryptu
end
end
end