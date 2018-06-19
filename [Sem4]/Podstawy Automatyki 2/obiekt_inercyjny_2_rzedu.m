close all;
clear all;

figure('name','Czasowe Obiekt inercyjny II rzedu [SKOKOWA]')
K = 10;
T1 = 5;
T2 = 7;
sys = tf([K],[T1*T2 (T1+T2) 1]);
step(sys)
hold on;
grid on;
K = 15;
T1 = 10;
T2 = 15;
sys = tf([K],[T1*T2 (T1+T2) 1]);
step(sys)


figure('name','Czasowe Obiekt inercyjny II rzedu [IMPULSOWA]')
K = 10;
T1 = 5;
T2 = 7;
sys = tf([K],[T1*T2 (T1+T2) 1]);
impulse(sys)
hold on;
grid on;
K = 15;
T1 = 10;
T2 = 15;
sys = tf([K],[T1*T2 (T1+T2) 1]);
impulse(sys)


figure('name','Obiekt inercyjny II rzedu [NYQUISTA]')
K = 10;
T1 = 5;
T2 = 7;
sys = tf([K],[T1*T2 (T1+T2) 1]);
nyquist(sys)
hold on;
grid on;
K = 15;
T1 = 10;
T2 = 15;
sys = tf([K],[T1*T2 (T1+T2) 1]);
nyquist(sys)



figure('name','Obiekt inercyjny II rzedu [BODE]')
K = 10;
T1 = 5;
T2 = 7;
sys = tf([K],[T1*T2 (T1+T2) 1]);
bode(sys)
hold on;
grid on;
% K = 15;
% T1 = 10;
% T2 = 15;
% sys = tf([K],[T1*T2 (T1+T2) 1]);
% bode(sys)