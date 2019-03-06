close all;
clear all;
%%%%plot surface
[x1,x2] = meshgrid(-200:0.5:200,-200:0.5:200);
z = x1.^2 + 0.5*x1.^2 + x1.*x2 + 375*x1+250*x1 + 39314.5;
figure(1)
surf(x1, x2, z,'DisplayName','Wykres funkcji','FaceColor','black ');
hold on;
x1 = [-200, 200; -200, 200];
x2 = 2 * x1;
z = [min(min(z)), min(min(z)); max(max(z)), max(max(z))];
surf(x1, x2, z, 'FaceColor','green ','DisplayName','Kierunek poszukiwania');
axis tight
legend show
title('Wizualizacja poszukiwanego minimum');
xlabel('x_{1}')
ylabel('x_{2}')
zlabel(f)