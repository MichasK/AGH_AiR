%%
a = 23
b = 5

c = round(a/b)
d= rem(a,b)
v = [0;5;0;4;0]
R2 = 500.*randn(5,3)+5
R2_2 =[R2 v]
x = 0:pi/10:2*pi
y = sin(x)

figure(1)
plot(x,y)
xlabel('x')
ylabel('sin(x)')
%%
y_mean = mean(y)
%1x1
%%
%A
A = [1 2 3;-1 1 4;-1 -2 -3]
b = [5;1;-5]

A_rank=rank(A)
Ab_rank=rank([A b])
%rzad macierzy A==rzad macierzy dolaczonej
X = linsolve(A,b)
%%

clear all;

load('exampledata.mat')

R = RGB(:,:,1);
G = RGB(:,:,2);
B = RGB(:,:,3);

mn = 650*600;

R_v = reshape(R,1,mn);
G_v = reshape(G,1,mn);
B_v = reshape(B,1,mn);
A = [R_v;G_v;B_v];
B = [0;128;128]+[0.299 0.587 0.114; -0.169 -0.331 0.5; 0.5 -0.419 -0.081]*A;


Y = B(1,:);
Cb = B(2,:);
Cr = B(3,:);

Y = reshape(Y,650,600);
Cb = reshape(Cb,650,600);
Cr = reshape(Cr,650,600);


YCbCr = cat(3,Y,Cb,Cr);

a= pi;
b=ones(1,1,'uint8');
a+double(b)
char(randi([97 103],1,10))
