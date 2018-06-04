close all;
clear all;

Ic1 = xlsread('npn_Ib_1.xls','I2:I2');
Uce1 = xlsread('npn_Ib_1.xls','H2:H2');

Uce6 = xlsread('IC_UCE_6V','D:D');
Ic6 = xlsread('IC_UCE_6V','E:E');


Ic2 = xlsread('npn_Ib_2.xls','I2:I2');
Uce2 = xlsread('npn_Ib_2.xls','H2:H2');

Ic3 = xlsread('npn_Ib_3.xls','I2:I2');
Uce3 = xlsread('npn_Ib_3.xls','H2:H2');

x = 0:0.05:5;

figure(1)
 plot(Uce1,Ic1,'*','DisplayName','Punkt pracy dla I_{B1}=I_{c}/B')
 coefficients = polyfit([Uce1 5], [ Ic1 0], 1);
 hold on;
 plot(x,coefficients (1)*x+coefficients (2));
plot(Uce2,Ic2,'*','DisplayName','Punkt pracy dla I_{B1}=2*I_{c}/B')
coefficients = polyfit([Uce2 5], [ Ic2 0], 1);
plot(x,coefficients (1)*x+coefficients (2));
plot(Uce3,Ic3,'*','DisplayName','Punkt pracy dla I_{B1}=4*I_{c}/B')
coefficients = polyfit([Uce3 5], [ Ic3 0], 1);
plot(x,coefficients (1)*x+coefficients (2));
plot(Uce6-0.02,Ic6)


grid on;
legend show;
legend('Location','best')
xlabel('U_{ce} [V]')
ylabel('I_c [A]')
xlim([0 5])
ylim([0 0.025])
saveas(1,'Obciazenie.eps','epsc')
