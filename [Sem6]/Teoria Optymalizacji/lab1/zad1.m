close all;
clear all;
x0 = [0;0];
d = [1;2];


%%%%%%ekspansja

[zw,qw,wskaz,z,q]= ekspan(x0,d,1,100);
fprintf(1,'ekspansja\n');
z=zw(2)
x=x0+d*z


%%%%%z�oty podzia�
[zp_zw,zp_qw,zp_z,zp_q] = zlopod(x0, d, zw, qw, 100, z, q); %zloty podzia�
fprintf(1,'z�oty podzia�\n');
z=zp_zw(2)
x=x0+d*z

fprintf(1,'aproksymacja paraboliczna\n');
%%%%% metoda aproksymacji parabolicznej
[zw_apropa , qw, z, q] = apropa(x0, d, zw, qw, 100, z,q);
z=zp_zw(2)
x=x0+d*z