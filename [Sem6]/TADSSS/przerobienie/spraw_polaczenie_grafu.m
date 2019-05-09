function znaleziono_koncowy=spraw_polaczenie_grafu(A,sprzezenia,ostatni)
size_A=size(A);
if start==koniec
    znaleziono_koncowy=1;
    return;
end
poprawny = sprzezenia(start,:);
przeszukano_caly=0;
for i=1:size_A;
    zero_vector(i)=0;
    if A(start,i)<inf&&poprawny(i)==1
        poprawny(i)=1;
        przeszukano_caly=1;
    else
        if poprawny(i)~=1
            poprawny(i)=0;
        end
    end
end
if przeszukano_caly==0
    znaleziono_koncowy=0;
    return;
end
poprawny(start)=1;
to_visit=zero_vector;
visited=zero_vector;
if poprawny(koniec)==0
    znaleziono_koncowy=0;
    return;
end
aktualne_polaczenie=zeros(size_A);
for i=1:length(poprawny)
    przeszukano_caly=0;
    if poprawny(i)==1&&i~=size_A
        for j=1:size_A
            if A(i,j)<inf
                aktualne_polaczenie(i,j)=1;
                przeszukano_caly=1;
            end
        end
        if przeszukano_caly==0
            znaleziono_koncowy=0;
            return
        end
    end
end
current=koniec;
end