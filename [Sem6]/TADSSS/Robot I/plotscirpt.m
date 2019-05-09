close all;

figure(1)
plot(damage,'DisplayName', 'Zniszczenie')
hold on;
plot(energy_used,'DisplayName', 'Zuzyta energia')
xlabel('Czas [t_{symulacji}*10]')
grid on;
plot(distance,'DisplayName','Odleglosc od punktu poczatkowego')
legend show;

dd = transpose(d(1,:))
figure(2)
plot(d(:),'DisplayName', 'd')
xlabel('Czas [t_{symulacji}*10]')
ylabel('wartosc sygnalu c')

cc = c(150:200,:);
figure(3)
plot(cc(:,1),'DisplayName', 'c1')
hold on;
plot(cc(:,2),'DisplayName', 'c2')
plot(cc(:,3),'DisplayName', 'c3')
plot(cc(:,4),'DisplayName', 'c4')
plot(cc(:,5),'DisplayName', 'c5')
plot(cc(:,6),'DisplayName', 'c6')
plot(cc(:,7),'DisplayName', 'c7')
plot(cc(:,8),'DisplayName', 'c8')
xlabel('Czas [t_{symulacji}/20]')
legend show;
xlim([0 50])
ylabel('wartosc sygnalu c')


