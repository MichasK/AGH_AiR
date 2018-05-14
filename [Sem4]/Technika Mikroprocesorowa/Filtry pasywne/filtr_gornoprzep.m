clear all;
close all;

R = 10.01 * 10^3 ;%[ohm]
C = 360*10^-12 ;%[F]
Fgr = 1/(2*pi*R*C) %[Hz]

freq = xlsread('Dane/charakterystyka_amplitudowa_gornoprzep_I_rzedu.xls','E:E');
GdB = xlsread('Dane/charakterystyka_amplitudowa_gornoprzep_I_rzedu.xls','D:D');



G = tf([R*C 0], [R*C 1]);

[mag1,phase1,wout1] = bode(G,{1,10^6});
mag1 = squeeze(mag1);
figure(2)
semilogx(freq./(2*pi),GdB,'DisplayName','Empiryczna')
hold on;
plot(wout1./(2*pi),20*log10(mag1),'DisplayName','Teoretyczna')
plot([Fgr Fgr], [0 -35],'DisplayName','fgr')
plot([6850 6850], [0 -35],'DisplayName','fgr_{obliczone}')
xlim([10^3 10^5])
legend('Location','southeast')
legend show;
grid on
xlabel('czêstotliwoœæ [Hz]')
ylabel('G[dB]')
saveas(2,'Plots/gornoprzep.eps','epsc')
figure(3)
semilogx(wout1./(2*pi),squeeze(phase1),'DisplayName','Teoretyczny wykres fazowy Bodego')
hold on;
plot([Fgr Fgr], [90 20],'DisplayName','fgr')
plot([6850 6850], [90 20],'DisplayName','fgr_{obliczone}')
xlim([10^3 10^5])
legend show;
grid on;
xlabel('czêstotliwoœæ [Hz]')
ylabel('Faza [stopnie k¹towe]')
legend('Location','southwest')
saveas(3,'Plots/gornoprzep_fazowy.eps','epsc')