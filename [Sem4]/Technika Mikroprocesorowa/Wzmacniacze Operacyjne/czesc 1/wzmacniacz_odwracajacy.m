close all;
clear all;

% 20*log10(Uwyj/Uwe)
gain = xlsread('Dane/charakterystyka_amplitudowa_wzmacniacz_odwrac.xls','D:D');
freq = xlsread('Dane/charakterystyka_amplitudowa_wzmacniacz_odwrac.xls','E:E');

ltfreq =  xlsread('Dane/ltspice_odwracajacy_ready.xlsx','A2:A102');
ltgain = xlsread('Dane/ltspice_odwracajacy_ready.xlsx','B2:B102');

figure(1)

semilogx(freq,gain,'DisplayName','pomiar');
hold on;
grid on;
% 2.783*10^6 z 6dB spada na 3
 semilogx([10^6 10^6], [15 -30],'DisplayName','f_{gr}=10^{6}  pomiar')
 semilogx([6.6*10^5 6.6*10^5], [15 -30],'DisplayName','f_{gr}=6,6*10^{5}  model')
 semilogx(ltfreq,ltgain,'DisplayName','model')



legend('Location','southwest')
legend show;
xlabel('f [Hz]')
ylabel('G [dB]')
%ylim([-16 10])
saveas(1,'Plots/amplitudowa_wzmacniacz_odwracajacy.eps','epsc')
