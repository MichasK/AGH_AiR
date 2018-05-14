close all;
clear all;

% 20*log10(Uwyj/Uwe)
gain = xlsread('Dane/charakterystyka_amplitudowa_wzmacniacz_niodwrac.xls','D:D');
freq = xlsread('Dane/charakterystyka_amplitudowa_wzmacniacz_niodwrac.xls','E:E');

ltfreq =  xlsread('Dane/ltspice_nieodwracajacy_ready.xlsx','A:A');
ltgain = xlsread('Dane/ltspice_nieodwracajacy_ready.xlsx','B:B');
figure(1)

semilogx(freq,gain,'DisplayName','pomiar');
hold on;
semilogx(ltfreq,ltgain,'DisplayName','model');
grid on;
% 2.783*10^6 z 6dB spada na 3
semilogx([2.783*10^6 2.783*10^6], [10 -16],'DisplayName','f_{gr}=2,783*10^{6}  pomiar')
semilogx([2.089*10^6 2.089*10^6], [10 -16],'DisplayName','f_{gr}=2,089*10^{6}  model')

legend('Location','southwest')
legend show;
xlabel('f [Hz]')
ylabel('G [dB]')
ylim([-16 10])
saveas(1,'Plots/amplitudowa_wzmacniacz_nieodwracajacy.eps','epsc')
