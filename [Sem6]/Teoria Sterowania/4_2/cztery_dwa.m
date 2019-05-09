close all;
clear all;

syms x1 x2;
dXdt = @(t,x) [x(2)-x(1)+x(1).^3;-x(1)];

f=[x2-x1+x1^3;-x1];
v=1/2*(x1^2+x2^2);
jac1(x1,x2)=jacobian(v,[x1,x2]);
dV=jac1*f;

%param l
l = 0.5;

figure()
title('Portret fazowy')
hold on;
y_=[];
y_start=[]
tspan = 0:0.001:0.5;
for i=-1:0.2:1
    for j=-1:0.2:1
x0 = [i;j];
[t,y] = ode45(dXdt, tspan, x0);
y_= [y_;y];
y_start=[y_start;[y(1,1),y(1,2)]];
    end
end
plot (y_(:,1),y_(:,2),'b.','DisplayName','trajektoria systemu','LineWidth',0.2)

plot(y_start(:,1),y_start(:,2),'g*','DisplayName','Punkty startowe','LineWidth',1)
fcontour(dV,'r','LevelList',0,'LineWidth',1,'DisplayName','dV=0');
fcontour(v,'y','LevelList',0.5,'LineWidth',2,'DisplayName','v dla l=0.5'); 
legend show;
grid on;
xlim([-2.5 2.5])
ylim([-2.5 2.5])
title('System nieliniowy')
xlabel('x1')
ylabel('y2')
%%%% znalezienie zamknietej krzywej
tspan=0:0.01:7.0;
[tt, yy] = ode45(dXdt,tspan,[-0.925;-0.550287] );
plot (yy(:,1),yy(:,2),'m.','DisplayName','Trajektoria zamknieta','LineWidth',0.2)
