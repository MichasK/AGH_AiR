close all;
clear all;

A = [-2 2; 1 -3];
tspan = [-1 1];
figure(1)
hold on
tic
for i=-2:0.5:2
    for j=-2:2:2
    y0 = [i j];
    [t,y] = ode45(@(t,y) fun(t,y,A), tspan, y0);
    plot(y(:,1),y(:,2));
    end
end
toc