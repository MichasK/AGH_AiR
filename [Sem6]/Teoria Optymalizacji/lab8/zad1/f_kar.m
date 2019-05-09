function [outputArg1] = f_kar(x,k)
N=14;
outputArg1 = 1/3*(x(1)+1+N).^3+x(2)+14 + 1/k( 1/(x(1)+N-1)+1/(x(2)+N));
end