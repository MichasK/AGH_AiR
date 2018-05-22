close all;
clear all;

% 20*log10(Uwyj/Uwe)
gain = xlsread('Dane/charakterystyka_amplitudowa_wzmacniacz_o_G_jednostkowym.xls','D:D');
freq = xlsread('Dane/charakterystyka_amplitudowa_wzmacniacz_o_G_jednostkowym.xls','E:E');

ltfreq =  xlsread('Dane/lispice_wtornik_ready.xlsx','A2:A102');
ltgain = xlsread('Dane/lispice_wtornik_ready.xlsx','B2:B102');

figure(1)

semilogx(freq,gain,'DisplayName','pomiar');
hold on;
grid on;
% 5.0572*10^6
semilogx([5.0572*10^6 5.0572*10^6], [10 -15],'DisplayName','f_{gr}=5,05*10^{6} pomiar')
semilogx([4.86*10^6 4.86*10^6], [10 -15],'DisplayName','f_{gr}=4,86*10^{6} model')
semilogx(ltfreq,ltgain,'DisplayName','model')


legend('Location','southwest')
legend show;
xlabel('f [Hz]')
ylabel('G [dB]')
saveas(1,'Plots/amplitudowa_wzmacniacz_jednostkowy.eps','epsc')
