close all;
clear all;

figure(1)
[x1,x2] = meshgrid(-200:0.5:200,-200:0.5:200);
z=x1+2*x2+3*14;
surf(x1,x2,z)
xlabel('x_{1}')
ylabel('x_{2}')
zlabel('f')
