close all;
clear all;

zn = 1;
maxit_eksp = 5; 
maxit = 100;

x0 = zeros(1, 4);
d = ones(4, 1);

[zw_ekspansja, qw_eks, wskaz, z_eks, q_eks] = ekspan(x0, d, zn, maxit_eksp);
x_ekspan = x0 + zw_ekspansja(2) * d;


[zw_zloty_podzial , qw_zlopod, z, q] = zlopod(x0, d, zw_ekspansja, qw_eks, maxit, z_eks, q_eks);
x_zlopod = x0 + zw_zloty_podzial(2) * d;

[zw_aproksymacja , qw_apropa, z, q] = apropa(x0, d, zw_ekspansja, qw_eks, maxit, z_eks, q_eks);
x_apropa = x0 + zw_aproksymacja(2) * d;

qw_eks(2)/qw_zlopod(2)
qw_eks(2)/qw_apropa(2)