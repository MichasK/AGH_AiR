close all;
clear all;
figure('name','Czasowe Obiekt inercyjny II rzedu [SKOKOWA]')
K = 10;
T = 5;
Ti = 0.25;
sys = tf([K],[T*Ti Ti 0]);
step(sys,55)
hold on;
grid on;
K = 15;
T = 10;
Ti = 0.55;
sys = tf([K],[T*Ti Ti 0]);
step(sys,55);



figure('name','Czasowe Obiekt inercyjny II rzedu [IMPULSOWA]')
K = 10;
T = 5;
Ti = 0.25;
sys = tf([K],[T*Ti Ti 0]);
impulse(sys,55)
hold on;
grid on;
K = 15;
T = 10;
Ti = 0.55;
sys = tf([K],[T*Ti Ti 0]);
impulse(sys,55);



figure('name','Czasowe Obiekt inercyjny II rzedu [Nyquist]')
K = 10;
T = 5;
Ti = 0.25;
sys = tf([K],[T*Ti Ti 0]);
nyquist(sys);
hold on;
grid on;
K = 15;
T = 10;
Ti = 0.55;
sys = tf([K],[T*Ti Ti 0]);
nyquist(sys);


figure('name','Czasowe Obiekt inercyjny II rzedu [Nyquist]')
K = 10;
T = 5;
Ti = 0.25;
sys = tf([K],[T*Ti Ti 0]);
bode(sys);
hold on;
grid on;
K = 15;
T = 10;
Ti = 0.55;
sys = tf([K],[T*Ti Ti 0]);
bode(sys);