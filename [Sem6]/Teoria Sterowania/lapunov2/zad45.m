close all;
clear all;

x = [0;0];

%%%%ss
dxdt = [x(2)-sin(x(1));-x(1).^3];


%%%% lapunov

V1 =  @(x) 0.25*(x(1).^2 + x(2).^2);
dV1 = @(x) x(1)*x(2)-x(1)*sin(x(1))-x(1).^3*x(2);



V2 = @(x) 0.25*x(1).^4 + 0.5*x(2).^2;
dV2 = @(x) -x(1).^3*sin(x1);
