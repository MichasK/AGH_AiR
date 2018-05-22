close all;
clear all;

Id = xlsread('Dane/ID_UGS.xls', 'F2:F27');
Ugs = xlsread('Dane/ID_UGS.xls', 'E2:E27');

Id_model = xlsread('Dane/Draft22','C:C');
Ugs_model = xlsread('Dane/Draft22','B:B');

figure(1)
plot(-Ugs,Id,'DisplayName','I_d');
hold on;
plot(Ugs_model,Id_model,'DisplayName','I_{d} model');

plot([-2.95 -2.95],[0 0.00075],'DisplayName','U_{GS0} = -2,95 [V]')
plot([-0.25 0],[0.00875 0.00875],'DisplayName','I_{DSS} = 8,75*10^{-3} [A]')
legend show;
grid on;
showaxes('show');
legend('Location','best')
xlabel('U_{gs} [V]')
ylabel('I_dc [A]')
saveas(1,'Wykresy/Id_Ugs.eps','epsc')