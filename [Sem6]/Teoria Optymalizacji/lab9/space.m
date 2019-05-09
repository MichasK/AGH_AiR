function [Q1w, Q2w, Raw] = space(Q1,Q2,Ra)
Q1w = Q1(1);
Q2w = Q2(1);
Raw = Ra(1); 
for j = 1:1:length(Ra)
    de = 3; 
    for i = 1:1:length(Raw)
        if (((Q1(j) > Q1w(i)) && (Q2(j) == Q2w(i))) ||((Q1(j) == Q1w(i)) && (Q2(j) > Q2w(i))) ||((Q1(j) > Q1w(i)) && (Q2(j) > Q2w(i))) )
            de(i) = 1;
        elseif (((Q1(j) > Q1w(i)) && (Q2(j) < Q2w(i))) || ...
                ((Q1(j) < Q1w(i)) && (Q2(j) > Q2w(i)))...
                )
            de(i) = 2;
        else
            de(i) = 0;
        end
    end
    b = de(de==1);
    if (de == 0)
    elseif (b == 1)
        a = find(de==1);
        Q1w(a) = Q1(j);
        Q2w(a) = Q2(j);
        Raw(a) = Ra(j);
    elseif (de == 2)
        Q1w = [Q1w Q1(j)];
        Q2w = [Q2w Q2(j)];
        Raw = [Raw Ra(j)];
    end
end
end