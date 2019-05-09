close all;
clear all;
G = tf(-[-20 4],[6 5 1]);
[P,Q,w]=nyquist(G);


figure(1)
subplot(1,2,1)
plot(squeeze(P),squeeze(Q))
hold on;
grid on;
if abs(max(P)-min(P)) > abs(max(Q)-min(Q))
    x=(max(P)+min(P))/2
    y=0;
else
    x=(max(Q)+min(Q))/2
    y=0;
end
odl = (P(:)-x).^2+(Q(:)-0).^2;
r=sqrt(max(odl));
circle(x,y,r);

m1=1/(x+r);
m2=1/(x-r);

xx=-20:0.2:20;
y1= m1*xx;
y2=m2*xx;
subplot(1,2,2)
plot(xx,y1);
hold on;
plot(xx,y2);
grid on;