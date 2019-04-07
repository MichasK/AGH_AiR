close all;
clear all;
for iii=0:5
    

n = 14;

x0 = [3/100; 9/100]*n;
etap = [];
a = 1;
[x1, x2] = meshgrid(linspace(-5, 5), linspace(-5, 5));
q = @(x1, x2) 6*x1.^2 + 6*x1*x2 + x2.^2 + 4.5*(exp(x1) - x1 - 1) + 1.5*(exp(x2) - x2 - 1);
figure(1)
contour(x1, x2, q(x1,x2));
hold on
par = 0; % 
zmenad
plot(etap(1,:), etap(2,:), 'b');
plot(etap(1,:), etap(2,:), 'bo');
ylabel('x_2');
xlabel('x_1');
title('Q(x_1, x_2)');
s = strcat(num2str(iii),'plot','.emf');
saveas(1,s);
close all;
end