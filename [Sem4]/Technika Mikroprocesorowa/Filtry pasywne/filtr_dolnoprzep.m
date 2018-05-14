clear all;
close all;

R = 1980;%[ohm]
C = 2.99*10^-9;%[F]

freq = xlsread('Dane/charakterystyka_amplitudowa_dolnop_I_rzedu.xls','E:E');
GdB = xlsread('Dane/charakterystyka_amplitudowa_dolnop_I_rzedu.xls','D:D');
freq=freq./(2*pi)

Fgr = 1/(2*pi*R*C) %[Hz]
D = tf([1],[R*C 1]);
[mag,phase,wout] = bode(D);
mag = squeeze(mag);
figure(1)
semilogx(freq,GdB,'DisplayName','Empiryczna')
hold on;
plot(wout./(2*pi),20*log10(mag),'DisplayName','Teoretyczna')
plot([Fgr Fgr], [0 -12],'DisplayName','Czêstotliwoœæ graniczna')
grid on;
xlim([10^3 10^5])
legend show;
xlabel('czêstotliwoœæ [Hz]')
ylabel('G [dB]')
legend('Location','southwest')
dim = [.2 .5 .3 .3];
str = 'pasmo przepustowe';
annotation('textbox',dim,'String',str,'FitBoxToText','on');
dim = [.69 .75 .07 .10];
str = 'pasmo zaporowe';
annotation('textbox',dim,'String',str,'FitBoxToText','on');
saveas(1,'Plots/dolnoprzep.eps','epsc')

figure(2)
semilogx(wout./(2*pi),squeeze(phase),'DisplayName','Teoretyczny wykres fazowy Bodego')
hold on;
plot([Fgr Fgr], [0 -80],'DisplayName','Czêstotliwoœæ graniczna')
xlim([10^3 10^5])
legend show;
grid on;
xlabel('czêstotliwoœæ [Hz]')
ylabel('Faza [stopnie k¹towe]')
legend('Location','southwest')
dim = [.2 .4 .3 .3];
str = 'pasmo przepustowe';
annotation('textbox',dim,'String',str,'FitBoxToText','on');
dim = [.69 .8 .10 .10];
str = 'pasmo zaporowe';
annotation('textbox',dim,'String',str,'FitBoxToText','on');
saveas(2,'Plots/dolnoprzep_fazowa.eps','epsc')


