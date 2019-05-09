function [outputArg1] = f(x)
 outputArg1 = 1/3*(x(1)+1+14).^3+x(2)+14;
end

function [g] = gradient_funkcji(x) 
n = 4; g = [(x(1) + n + 1) .^ 2; 1];
end

function [g] = ograniczenie_1(x) 
g = [- x(1) - 13; - x(2) - 14]; 
end

function [g] = gradient_ograniczen_1(x) 
g = [-1, 0; 0, -1];
end