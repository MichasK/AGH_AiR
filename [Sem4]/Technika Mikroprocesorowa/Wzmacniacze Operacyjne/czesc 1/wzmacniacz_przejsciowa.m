close all;
clear all;

uwej = xlsread('Dane/charakterystyka_przejsciowa_wzmacniacz_odwrac.xls','A2:A26');
uwyj = xlsread('Dane/charakterystyka_przejsciowa_wzmacniacz_odwrac.xls','B2:B26');

figure(1)
plot(uwej,uwyj,'DisplayName','U_{wyj}')

grid on;
legend('Location','southwest')
legend show;
xlabel('U_{wej} [V]')
ylabel('U_{wyj} [V]')
saveas(1,'Plots/przejsciowa.eps','epsc')
