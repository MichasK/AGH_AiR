close all;
clear all;

N=14;
x0 = [0;0];

wyniki = zeros(20,2);
xx=-100:0.5:100;
y=f(xx);

% for i=1:20 
%     P = @(x) f(x,i);
%     wyniki(i,:) = fminsearch(P,x0);
% end 
figure(1)
[x1,x2] = meshgrid(-200:0.5:200,-200:0.5:200);
z =1/3*(x1+1+14).^3+x2+14;
surf(x1,x2,z)
xlabel('x_{1}')
ylabel('x_{2}')
zlabel(f)