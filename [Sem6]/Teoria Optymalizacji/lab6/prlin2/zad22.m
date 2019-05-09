close all;
clear all;

A = [0.3 0.5 0.4; 0.1 0.08 0.12;0.06 0.04 0.05];
b = [1800;800;700];
NNN = 14;
c = [400-10*NNN 300+5*NNN 200-6*NNN];
c = -c;

l = [0;0;0];
u = [Inf; Inf; Inf];

zadan = ’maks’; plnad
xopt

x = linprog(c,A,b,[],[],l,u)
