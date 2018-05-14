clear all;
close all;

Af = 1.63;% wspolczynnik przeplywu powietrza
g = 9.81;% grawitacja
Lrr = 0.282;% promieñ ko³a uwzglêdniaj¹ca ugiêcie[m]
Tpwr = 1450;%Moment silnika
Tbrk = 0;%
alpha = 1000;% k¹t nachylenia
r_g = 2.038;%gear ratio
ro = 1.2 ;%gestosc powietrza[kg/m^3]
c_ad = 0.418; %wspolczynnik oporu
tau_pwr = 0.2;%stala czasowa ukladu napedowego
tau_brk = 0.05;% -|| - hamulcowego
m_v = 800;%masa samochodu
r_fdr = 4.07;
J_wh = 0.75;%moment ko³a
J_eng = 0.5;%moment obrotowy silnika

v_zero = 0;%predkosc poczatkowa[m/sek]
