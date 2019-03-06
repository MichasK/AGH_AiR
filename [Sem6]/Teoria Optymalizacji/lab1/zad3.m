close all;
clear all;
x0 = 0;

%generacja wspolczynnikow wielomianu
w_coef = [1, -91.11, -899.989, 1100.009, -110.91, 1];
%wype³nienie rejestru pierwsiatków zerami
roots = zeros(1, 5);
%maksymalna ilosc iteracji
n = length(w_coef) - 1;
for k = 1:n 
    w_coef
    roots(k) = prosta1(x0, 0.01, w_coef)
    old_w_coef = w_coef;
    w_coef = ones(1, 6-k);
    for k = 2:(6-k)
        w_coef(k) = old_w_coef(k) + w_coef(k-1) * roots(k)
    end
end

roots
