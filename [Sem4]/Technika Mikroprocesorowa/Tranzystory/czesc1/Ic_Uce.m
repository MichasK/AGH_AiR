close all;
clear all;

Ic3 = xlsread('Dane/IC_UCE_3V','E:E');
Ic6 = xlsread('Dane/IC_UCE_6V','E:E');
Ic9 = xlsread('Dane/IC_UCE_9V','E:E');

Uce3 = xlsread('Dane/IC_UCE_3V','D:D');
Uce6 = xlsread('Dane/IC_UCE_6V','D:D');
Uce9 = xlsread('Dane/IC_UCE_9V','D:D');


 Ic3_model = xlsread('Dane/IC_UCE_3V_model','B:B');
 Ic6_model = xlsread('Dane/IC_UCE_6V_model','B:B');
 Ic9_model = xlsread('Dane/IC_UCE_9V_model','B:B');

 Uce3_model = xlsread('Dane/IC_UCE_3V_model','C:C');
 Uce6_model = xlsread('Dane/IC_UCE_6V_model','C:C');
 Uce9_model = xlsread('Dane/IC_UCE_9V_model','C:C');

figure(1)
plot(Uce3,Ic3,'DisplayName','U_{1} = 3 [V]');
hold on;
plot(Uce6,Ic6,'DisplayName','U_{1} = 6 [V]');
plot(Uce9,Ic9,'DisplayName','U_{1} = 9 [V]');

plot(Uce3_model,Ic3_model,'DisplayName','model U_{1} = 3 [V]');
plot(Uce6_model,Ic6_model,'DisplayName','model U_{1} = 6 [V]');
plot(Uce9_model,Ic9_model,'DisplayName','model U_{1} = 9 [V]');

legend show;
grid on;
legend('Location','northeast')
xlabel('U_{ce} [V]')
ylabel('I_c [A]')
saveas(1,'Wykresy/Ic_Uce.eps','epsc')
