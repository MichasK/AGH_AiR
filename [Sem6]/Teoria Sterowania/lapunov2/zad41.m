close all;
clear all;

dXdt = @(t,x) [-x(1)+2*x(1).^2*x(2);-x(2)];

V1 =  @(x) 0.5*x(1).^2+x(2).^2;
V2 = @(x) x(1).^2/(1-x(1)*x(2))+x(2)^2;
figure()
title('Portret fazowy + obszar ujemnosci pochodnej')
hold on;

tspan = [0 200];
for i=-2:0.2:2
    for j=-2:0.2:2
x0 = [i;j];
[t,y] = ode45(dXdt, tspan, x0);

plot (y(:,1),y(:,2),'LineWidth',1,'color',[0,0,0])
    end
end
%%%%%
%x1
%2*x2  *  
dV = @(x) x(1)*(-x(1)+2*x(1).^2*x(2))-2*x(2).^2;

%figure(2)
%title('Obszar ujemnosci pochodnej')
hold on;
for i=-5:0.05:5
    for j=-5:0.05:5
        p = [i;j];
        if dV(p)<0 && V1(p)<0.8
            plot(i,j,'b*')
        end
    end
end
xlim([-2 2])
ylim([-2 2])