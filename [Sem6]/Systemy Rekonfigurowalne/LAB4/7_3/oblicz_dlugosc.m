close all;
clear all;

zero = fi(0,1,13,4);
MaX_A = fi(255.9375,1,13,4);
acc = fi(0,1,21,4);
for i=1:256
    acc = accumpos(acc,MaX_A);
end
leb = bin(acc)