clear all;
close all;

C1 = 10 * 10^-9; %[F]
R1 = 2 * 10^3; % [ohm]
R2 = 10 * 10^3; % [ohm]
C2 = 397 * 10^-12; %[F]

freq_dolnoprzep = xlsread('Dane/dolny.xls','A:A');
amplituda_dolnoprzep = xlsread('Dane/dolny.xls','B:B');

freq_gornoprzep = xlsread('Dane/gorny.xls','A:A');
amplituda_gornoprzep = xlsread('Dane/gorny.xls','B:B');



freq = xlsread('Dane/charakterystyka_amplitudowa_pasmoprzep_II_rzedu(1).xls','F:F');
GdB = xlsread('Dane/charakterystyka_amplitudowa_pasmoprzep_II_rzedu(1).xls','D:D');

freq1 = xlsread('Dane/charakterystyka_amplitudowa_aktywnego_pasmoprzep_II_rzedu.xls','E2:E20');
GdB1 = xlsread('Dane/charakterystyka_amplitudowa_aktywnego_pasmoprzep_II_rzedu.xls','D2:D20');

figure(1)
semilogx(freq_dolnoprzep,amplituda_dolnoprzep,'DisplayName','filtr dolnoprzep.[model]')
hold on;
semilogx(freq_gornoprzep,amplituda_gornoprzep,'DisplayName','filtr górnooprzep.[model]')
plot(freq,GdB,'DisplayName','filtr pasmowoprzep.[pomiar]')
plot(freq1,GdB1,'DisplayName','filtr pasmowoprzep aktywny.[pomiar]')

plot([17861 17861], [0 -20],'DisplayName','f_{c}=1,7861*10^4')
plot([40089 40089], [0 -20],'DisplayName','f_{grg}=4,0089*10^4')
plot([7577 7577], [0 -20],'DisplayName','f_{grd}=7,577*10^3')

legend('Location','best')
legend show;
xlabel('f [Hz]')
ylabel('G [dB]')
grid on;
saveas(1,'Plots/pasmowy_aktywny.eps','epsc')
