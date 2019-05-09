close all;
clear all;


A = [1 0 -1 -1 0;0 1 1 0 -1; 1 1 0 -1 -1];
b = [0;0;0];
c = [6; 10; 4; 7; 3];
NN = 14;
di = 1+1/(3*NN);
l = transpose([4 2 2 2 4])-di;
u = transpose([4 2 2 2 4])+di;
t=[0;0;0]

zadan = 'mini';
plnad 
xopt
Ropt = c ./ xopt'*1000 
qopt = c * xopt / 1000
