function found=check_connection(A,coupling,M,start,finish)
size_A=size(A);
size_A=size_A(1);
if start==finish
    found=1;
    return;
end
valid = coupling(start,:);
integrity=0;
for i=1:size_A;
    zero_vector(i)=0;
    if A(start,i)<M&&valid(i)==1
        valid(i)=1;
        integrity=1;
    else
        if valid(i)~=1
            valid(i)=0;
        end
    end
end
if integrity==0
    found=0;
    return;
end
valid(start)=1;
to_visit=zero_vector;
visited=zero_vector;
if valid(finish)==0
    found=0;
    return;
end
connection=zeros(size_A);
for i=1:length(valid)
    integrity=0;
    if valid(i)==1&&i~=size_A
        for j=1:size_A
            if A(i,j)<M
                connection(i,j)=1;
                integrity=1;
            end
        end
        if integrity==0
            found=0;
            return
        end
    end
end
current=finish;
while current~=start
    visited(current)=1;
    to_visit(current)=0;
    found_at_least_one=0;
    for i=1:size_A
        if connection(i,current)==1&&valid(i)==1&&visited(i)~=1
            to_visit(i)=1;
        end
    end
    for i=1:length(to_visit)
        if to_visit(i)==1;
            found_at_least_one=1;
            current=i;
            break;
        end
    end
    if(found_at_least_one==0)
        found=0;
        return
    end
end
found=1;
return;
%line