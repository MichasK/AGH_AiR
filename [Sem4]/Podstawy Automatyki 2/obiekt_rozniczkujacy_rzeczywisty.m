close all;
clear all;
figure('name','Czasowe Obiekt inercyjny II rzedu [SKOKOWA]')
Td = 10;
T = 5;
sys = tf([Td 0],[T 1]);
step(sys,55)
hold on;
grid on;
Td = 15;
T = 10;
sys = tf([Td 0],[T 1]);
step(sys,55);


figure('name','Czasowe Obiekt inercyjny II rzedu [IMPULSE]')
Td = 10;
T = 5;
sys = tf([Td 0],[T 1]);
impulse(sys,55)
hold on;
grid on;
Td = 15;
T = 10;
sys = tf([Td 0],[T 1]);
impulse(sys,55);




figure('name','Czasowe Obiekt inercyjny II rzedu [NYQUIST]')
Td = 5;
T = 2;
sys = tf([Td 0],[T 1]);
nyquist(sys)
hold on;
grid on;


figure('name','Czasowe Obiekt inercyjny II rzedu [Bode]')
Td = 100;
T = 10;
sys = tf([Td 0],[T 1])
bode(sys)
hold on;
grid on;

Td = 70;
T = 70;
sys = tf([Td 0],[T 1])
bode(sys)
hold on;
grid on;
