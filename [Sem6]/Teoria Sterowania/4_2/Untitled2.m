close all;
clear all;
syms x1 x2;
f=[x2-x1+x1^3;-x1]; 
v1=1/2*(x1^2+x2^2);
jac1(x1,x2)=jacobian(v1,[x1,x2]); 
dV1=jac1*f; pktRow=solve(f,[x1,x2]);