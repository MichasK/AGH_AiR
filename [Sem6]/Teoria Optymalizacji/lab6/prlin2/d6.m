zadan='mini';
c=[-1 -1];
mm=3;
bb=1;
dd1=10;
dd2=20;
i=[1:mm]';
fi=(i-1)*pi/mm;
si=sin(fi);
co=cos(fi);
A=[si co;si co];
b=dd1*si+dd2*co;
b=[bb+b;-bb+b];
t=[-ones(mm,1);ones(mm,1)];
u=[inf;inf];

