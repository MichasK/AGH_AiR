close all;
clear all;

N=14;
E = N.^3;
R_i = 2*N;
q2_k = 0.5:0.01:1;
q1 = -E .^ 2 / R_i .* ( q2_k .^ 2 - q2_k );
plot(q2_k , q1, 'g');
hold on;
q2_k = 0:0.01:0.5;
q1 = -E .^ 2 / R_i .* ( q2_k .^ 2 - q2_k );
plot(q2_k , q1, 'b');
xlabel('Q2');
ylabel('Q1');
legend('zbior kompromisow ');