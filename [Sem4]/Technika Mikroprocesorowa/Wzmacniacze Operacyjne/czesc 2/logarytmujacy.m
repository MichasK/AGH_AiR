close all;
clear all;

U_wej =  xlsread('Dane/charakterystyka_przejsciowa_ukadu_logarytmujacego.xls','A2:A17');
U_wyj = xlsread('Dane/charakterystyka_przejsciowa_ukadu_logarytmujacego.xls','B2:B17');

U_wej_sym = xlsread('Dane/log.xlsx','A2:A502');
U_wyj_wym = xlsread('Dane/log.xlsx','B2:B502');


figure(1)
plot(U_wej,U_wyj,'DisplayName','U_{wyj}')
hold on;
plot(U_wej_sym,U_wyj_wym,'DisplayName','U_{wyj}sym')
legend('Location','northeast')
legend show;
xlabel('U_{wej} [v]')
ylabel('U_{wyj} [v]')
legend show;
grid on;
xlim([0.004 0.5])
saveas(1,'Plots/logarytmujacy.eps','epsc')
