function sciezka_koncowa=sciezki_kompletne2finalne(poprawne_sciezki,ostatni_wierzcholek)
iterator_po_poprawnych_sciezkach=1;
iterator_pomocniczy=0;



for i = 1:size(poprawne_sciezki,1)
    if (poprawne_sciezki(i,1)==1)
        iterator_pomocniczy=iterator_pomocniczy+1;
    end
end





sciezki_kompletne=poprawne_sciezki(1:iterator_pomocniczy,:);
while(iterator_po_poprawnych_sciezkach<=size(sciezki_kompletne,1))
    for j=iterator_pomocniczy+1:size(poprawne_sciezki,1)
        mk=0;
        while sciezki_kompletne(iterator_po_poprawnych_sciezkach,mk+1)~=0
            mk=mk+1;
        end
        if sciezki_kompletne(iterator_po_poprawnych_sciezkach,mk)==poprawne_sciezki(j,1)&&sciezki_kompletne(iterator_po_poprawnych_sciezkach,mk)~=0
            wektor_sciezek=[];
            k=1;
            while sciezki_kompletne(iterator_po_poprawnych_sciezkach,k)~=0
                wektor_sciezek(k)=sciezki_kompletne(iterator_po_poprawnych_sciezkach,k);
                k=k+1;
            end
            l=2;
            while l+k-2<size(poprawne_sciezki,2)+1
                wektor_sciezek(k+l-2)=poprawne_sciezki(j,l);
                l=l+1;
            end
            sciezki_kompletne=[sciezki_kompletne;wektor_sciezek];
        end
    end
    iterator_po_poprawnych_sciezkach=iterator_po_poprawnych_sciezkach+1;
end
sciezka_koncowa=[];
for w=0:size(sciezki_kompletne,1)-1
    i=size(sciezki_kompletne,1)-w;
    mk=0;
    while sciezki_kompletne(i,mk+1)~=0
        mk=mk+1;
    end
    if sciezki_kompletne(i,mk)~=ostatni_wierzcholek;
        return;
    else
        
        
        
        for j=1:size(sciezka_koncowa,1)
            if sciezki_kompletne(i)==sciezka_koncowa(j)
                break;
            end
        end
        sciezka_koncowa=[sciezka_koncowa;sciezki_kompletne(i,:)];
    end
end
end