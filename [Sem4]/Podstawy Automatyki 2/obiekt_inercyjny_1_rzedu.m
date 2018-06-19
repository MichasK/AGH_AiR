close all;
clear all;
figure('name','Czasowe Obiekt inercyjny 1 rzedu [SKOKOWA]')
K=10;
T=5;
sys = tf([K],[T 1]);
step(sys)
hold on;
grid on;
K=15;
T=1;
sys = tf([K],[T 1]);
step(sys)

figure('name','Czasowe Obiekt inercyjny 1 rzedu [IMPULSOWA]')
K=10;
T=5;
sys = tf([K],[T 1]);
impulse(sys)
hold on;
grid on;
K=15;
T=1;
sys = tf([K],[T 1]);
impulse(sys)

figure('name','Obiekt inercyjny 1 rzedu [Nyquist]')
K=10;
T=5;
sys = tf([K],[T 1]);
nyquist(sys)
hold on;
grid on;
K=15;
T=1;
sys = tf([K],[T 1]);
nyquist(sys)


figure('name','Obiekt inercyjny 1 rzedu [Bode]')
K=10;
T=5;
sys = tf([K],[T 1]);
bode(sys)
hold on;
grid on;
K=15;
T=1;
sys = tf([K],[T 1]);
bode(sys)
