close all;
clear all;

Ib = xlsread('Dane/IB_UBE.xls','E2:E22');
Ube = xlsread('Dane/IB_UBE.xls','F2:F22');

Ib_model = xlsread('Dane/Ib_Ube_model.xlsx','B2:B22');
Ube_model = xlsread('Dane/Ib_Ube_model.xlsx','C2:C22');

figure(1)
%plot(Ube,Ib,'DisplayName','Ib');
hold on;
plot(Ube_model,Ib_model,'DisplayName','Ib_model');
legend show;
grid on
legend('Location','best')
xlabel('U_{be} [V]')
ylabel('I_b [A]')
saveas(1,'Wykresy/Ib_Ube.eps','epsc')