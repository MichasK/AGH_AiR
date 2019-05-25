close all;
clear all;
x0 = [14;14];

wyniki = zeros(20,2);

for i=1:20
    P = @(x) f(x,i);
    wyniki(i,:) = fminsearch(P,x0);
end
figure()
plot(wyniki(1,1),wyniki(1,2),'o', 'DisplayName','Punkt pocz�tkowy')
hold on;

plot(wyniki(:,1),wyniki(:,2),'-*','DisplayName','Iteracje')
plot(wyniki(20,1),wyniki(20,2),'x','DisplayName','Punkt ko�cowy')
xlabel('x1')
ylabel('x2')
grid on;
legend show;
