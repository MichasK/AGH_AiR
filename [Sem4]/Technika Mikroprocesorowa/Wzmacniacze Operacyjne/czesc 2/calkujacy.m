close all;
clear all;

pomiar = csvread('Dane/oscyloskop.csv')

figure(1)
plot(pomiar(:,1)+1.20800e-01,pomiar(:,2),'DisplayName','sygna³ wejœciowy')
hold on;
plot(pomiar(:,1)+1.20800e-01,pomiar(:,3),'DisplayName','sygna³ wyjœciowy')
grid on;
legend show;
legend('Location','best')
xlabel('t [sek]')
ylabel('U_{wyj} [v]')
figure(2)
freq =xlsread('Dane/calkujacy_amplitudowo_fazowa.xls','A:A');
mag =xlsread('Dane/calkujacy_amplitudowo_fazowa.xls','B:B');
phase = xlsread('Dane/calkujacy_amplitudowo_fazowa.xls','C:C');
subplot(2,1,1)
semilogx(freq,mag);
grid on;
xlabel('f [Hz]')
ylabel('G [dB]')
xlim([10^-6 10^9])
subplot(2,1,2)
semilogx(freq,phase);
grid on;
xlabel('f [Hz]')
ylabel('faza [stopnie k¹towe]')
xlim([10^-6 10^9])
saveas(2,'Plots/calkujacy_amp_faz.eps','epsc')
saveas(1,'Plots/cz2_calkujacy.eps','epsc')