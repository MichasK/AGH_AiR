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

freq_pasmowyoprzep = xlsread('Dane/pasmowy.xls','A:A');
amplituda_pasmowyprzep = xlsread('Dane/pasmowy.xls','B:B');
amplituda_pasmowyprzep1 = xlsread('Dane/pasmowy.xls','C:C');
phase_pasmowyprzep = xlsread('Dane/charakterystyka_fazowa_pasmoprzep_II_rzedu(1).xls','H:H');
phase_freq = xlsread('Dane/charakterystyka_fazowa_pasmoprzep_II_rzedu(1).xls','G:G');

freq = xlsread('Dane/charakterystyka_amplitudowa_pasmoprzep_II_rzedu(1).xls','F:F');
GdB = xlsread('Dane/charakterystyka_amplitudowa_pasmoprzep_II_rzedu(1).xls','D:D');

figure(1)
semilogx(freq_dolnoprzep,amplituda_dolnoprzep,'DisplayName','filtr dolnoprzep.[model]')
hold on;
semilogx(freq_gornoprzep,amplituda_gornoprzep,'DisplayName','filtr górnooprzep.[model]')
semilogx(freq_pasmowyoprzep,amplituda_pasmowyprzep,'DisplayName','filtr pasmowoprzep.[model]')
plot(freq,GdB,'DisplayName','filtr pasmowoprzep.[pomiar]')
plot([17861 17861], [0 -20],'DisplayName','fc')
plot([40089 40089], [0 -20],'DisplayName','fgrg')
plot([7577 7577], [0 -20],'DisplayName','fgrd')

legend('Location','southeast')
legend show;
xlabel('czêstotliwoœæ [Hz]')
ylabel('G [dB]')
grid on;
saveas(1,'Plots/amplitudowa_bodego.eps','epsc')



% Fazowa
figure(2)
fcenter = 1/(2*pi*sqrt(C1*C2*R2*R1))
semilogx(phase_freq,phase_pasmowyprzep,'DisplayName','pomiar');
xlabel('czêstotliwoœæ [Hz]')
ylabel('przesuniêcie fazowe [stopnie k¹towe]')
hold on;
plot([17428 17428], [-80 80],'DisplayName','fcen = 17.428 [kHz]')
grid on;    
semilogx(freq_pasmowyoprzep,amplituda_pasmowyprzep1,'DisplayName','model');
legend('Location','southwest')
legend show;
grid on;
ylim([-80 80])
saveas(2,'Plots/fazowa_bodego.eps','epsc')
