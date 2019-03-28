close all;
clear all;
A = [0 1; -2 -0.5];%zadana macierz
tspan = 0:0.001:20;
[w J] = eig(A);%wektory w?asne oraz warto?ci w?asne
y_history = [];
x1_x2_ = [];
x1_x2__ = [];
figure(1)
hold on;
b=0.5;c=2;d=3;

name = strcat('lambda (A)=[',num2str(J(1,1)),', ',num2str(J(2,2)),']');


    y0 = [1 1];
    y_history = [y_history;y0];
    [t, y2] = ode45(@(t,y) dyty(t,y,b,c,d), tspan, y0);
    [t,y] = ode45(@(t,y) fun(t,y,A), tspan, y0);
    x1_x2_ = [x1_x2_;y];
    x1_x2__ = [x1_x2__; x1_x2_(end,:)];
    grid on;
    
plot(y_history(:,1),y_history(:,2),'r*','DisplayName','Punkt pocz?tkowy');
plot(x1_x2_(:,1),x1_x2_(:,2),'.','DisplayName','Trajektorie liniowy');
plot(y2(:,1),y2(:,2),'.','DisplayName','Trajektorie nieliniowy');
plot(x1_x2__(:,1),x1_x2__(:,2),'y*','DisplayName','Punkt ko?cowy');
plot([0,w(1,1)],[0,w(2,1)],'g-','DisplayName','w1','LineWidth',2)
plot([0,w(1,2)],[0,w(2,2)],'g-','DisplayName','w2','LineWidth',2)
title(name);
grid on;
legend show;
set(legend, 'Location', 'Best')
xlabel('x1');ylabel('x2');
saveas(1,name,'emf')