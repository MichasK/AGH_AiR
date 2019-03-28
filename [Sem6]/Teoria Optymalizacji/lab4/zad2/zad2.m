clc;clear ;close all; n=11; x0=[0.01*n;0.03*n]; par=3;
 
 
[x1 , x2] = meshgrid (-1:0.001:1 , -1:0.001:1); q=6*x1.^2 + 6*x2.*x1 + x2.^2 + 4.5*(exp(x1) - x1 - 1) + 1.5*(exp(x2) - x2 - 1); figure(1);hold on; contour (x1 , x2 , q, [0.1,0.2,0.5,2, 5 ] , 'ShowText', 'on');
 granad; plot ( ry (1, :), ry (2, :), 'r');