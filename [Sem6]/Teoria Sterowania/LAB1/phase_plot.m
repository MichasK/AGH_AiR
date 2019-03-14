close all;
clear all;
ArrowSize = 4;
A = [-2 0; 0 -2];
tspan = [-1 1];
[w J] = eig(A)
figure(1)
hold on
name = strcat('lambda (A)=[',num2str(J(1,1)),', ',num2str(J(2,2)),']');
tic
for i=-2:0.5:2
    for j=-2:2:2
    y0 = [i j];
    [t,y] = ode45(@(t,y) fun(t,y,A), tspan, y0);
    x_1 = y(:,1);
    x_2 = y(:,2);
    plot(x_1,x_2,'-b');
    plot(i,j,'*');
    grid on;
    end
end
plot([0,w(1,1)],[0,w(2,1)],'r-',[0,w(1,2)],[0,w(2,2)],'r-')
toc
title(name);
grid on;
xlabel('x1');ylabel('x2');
saveas(1,name,'png')
