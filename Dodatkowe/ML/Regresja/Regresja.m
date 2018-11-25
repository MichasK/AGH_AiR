load accidents

x = hwydata(:,14);
y = hwydata(:,4);

model_slope = x\y;
y_slope = model_slope * x;

%=======
X = [ones(length(x),1) x];
b = X\y
y_slope_offset = X*b; 
%=======
lm = fitlm(x,y)
b_lm  = [lm.Coefficients{:,1}];
y_lm = X*b;
figure(1)
scatter(x,y)
hold on;
plot(x,y_slope,'DisplayName','Nachylenie');
plot(x,y_slope_offset,'DisplayName','Nachylenie + offset');
plot(x,y_lm,'DisplayName','Regresja Matlab');
xlabel('Liczba mieszkañców miasta')
ylabel('Liczba wypadków')
grid on;
legend show;
corrcoef(x,y);% wartosci bliskie 1 stwierdzenie istnienia liniowej zale¿nosci miedzy zmiennymi

figure(2)
plotResiduals(lm)