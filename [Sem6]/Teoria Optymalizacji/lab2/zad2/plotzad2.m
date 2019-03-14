clear all;
close all;
[x1, x2] = meshgrid(-5:0.01:5, -2:0.01:10);
q=100*(x2-x1.^2).^2+(1-x1.^2).^2;


figure(1)
plot3(x1,x2,q)
grid on;

xlabel('x1')
ylabel('x2')
zlabel('Q(x1,x2)')