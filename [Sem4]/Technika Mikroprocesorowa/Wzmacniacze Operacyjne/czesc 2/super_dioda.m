close all;
clear all;

figure(1)
U_wej=xlsread('Dane/charakterystyka_przejsciowa_super_diody.xls','A:A');
U_wyj=xlsread('Dane/charakterystyka_przejsciowa_super_diody.xls','B:B');

plot(U_wej,U_wyj,'DisplayName','U_{wyj}')
legend('Location','northeast')
legend show;
xlabel('U_{wej} [v]')
ylabel('U_{wyj} [v]')
xlim([-6.4 5.92])
ylim([-1 6.5])
grid on;
saveas(1,'Plots/super_dioda.eps','epsc')
