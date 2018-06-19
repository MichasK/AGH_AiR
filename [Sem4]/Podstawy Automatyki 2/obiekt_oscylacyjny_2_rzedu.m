close all;
clear all;

figure('name','Czasowe Obiekt inercyjny II rzedu [SKOKOWA]')
K = 10;
T0 = 5;
ksi = 0.045;
sys = tf([K],[T0*T0 2*ksi*T0 1]);
step(sys)
hold on;
grid on;
K = 15;
T0 = 10;
ksi = 0.1;
sys = tf([K],[T0*T0 2*ksi*T0 1]);step(sys)


figure('name','Czasowe Obiekt inercyjny II rzedu [IMPULSOWA]')
K = 10;
T0 = 5;
ksi = 0.7;
sys = tf([K],[T0*T0 2*ksi*T0 1]);impulse(sys)
hold on;
grid on;
K = 15;
T0 = 10;
ksi = 0.1;
sys = tf([K],[T0*ksi (T0+ksi) 1]);
impulse(sys)


figure('name','Obiekt inercyjny II rzedu [NYQUISTA]')
K = 10;
T0 = 5;
ksi = 0.7;
sys = tf([K],[T0*T0 2*ksi*T0 1]);nyquist(sys)
hold on;
grid on;
% K = 15;
% T0 = 10;
% ksi = 0.15;
% sys = tf([K],[T0*ksi (T0+ksi) 1]);
% nyquist(sys)



figure('name','Obiekt inercyjny II rzedu [BODE]')
K = 10;
T0 = 5;
ksi = 0.7;
sys = tf([K],[T0*T0 2*ksi*T0 1]);
bode(sys);
hold on;
grid on;
% K = 15;
% T0 = 10;
% ksi = 15;
% sys = tf([K],[T0*ksi (T0+ksi) 1]);
% bode(sys)