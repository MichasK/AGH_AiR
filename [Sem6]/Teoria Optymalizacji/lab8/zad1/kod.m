clear all; 
close all;
x0 = [0, 0] 
clear param param = [];
param(2) = 1e-5; 
param(4) = 100;
[X,F,H,ITER,K]=wkara('funkcja_zadanie_1 ','ograniczenie_zadanie_1 ','gradient_funkcji_zadanie_1 ','gradient_ograniczen_zadanie_1 ',x0,param)

