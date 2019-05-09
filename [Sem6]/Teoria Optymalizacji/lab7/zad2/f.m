function [outputArg1] = f(x,j)
outputArg1 = x(1).^2 + x(2).^2 + 2*exp(j)*(x(2)-14).^2;

end

