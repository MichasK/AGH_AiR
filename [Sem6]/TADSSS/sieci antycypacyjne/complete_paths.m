function final_paths=complete_paths(valid_paths,last)
iter=1;
ii=0;
for i = 1:size(valid_paths,1)
    if (valid_paths(i,1)==1)
        ii=ii+1;
    end
end
complete_paths=valid_paths(1:ii,:);
while(iter<=size(complete_paths,1))
    for j=ii+1:size(valid_paths,1)
        jj=0;
        while complete_paths(iter,jj+1)~=0
            jj=jj+1;
        end
        if complete_paths(iter,jj)==valid_paths(j,1)&&complete_paths(iter,jj)~=0
            pathtoadd=[];
            k=1;
            while complete_paths(iter,k)~=0
                pathtoadd(k)=complete_paths(iter,k);
                k=k+1;
            end
            l=2;
            while l+k-2<size(valid_paths,2)+1
                pathtoadd(k+l-2)=valid_paths(j,l);
                l=l+1;
            end
            complete_paths=[complete_paths;pathtoadd];
        end
    end
    iter=iter+1;
end
final_paths=[];
for w=0:size(complete_paths,1)-1
    i=size(complete_paths,1)-w;
    jj=0;
    while complete_paths(i,jj+1)~=0
        jj=jj+1;
    end
    if complete_paths(i,jj)~=last;
        break;
    else
        for j=1:size(final_paths,1)
            if complete_paths(i)==final_paths(j)
                break;
            end
        end
        final_paths=[final_paths;complete_paths(i,:)];
    end
end
end