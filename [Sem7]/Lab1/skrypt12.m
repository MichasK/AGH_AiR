%%
%Instrukcja I
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
%%
%INSTRUKCJA 2
close all;
clear all;
%%
daneP = importfile('daneP.csv', 4, 298);

figure(1)
 subplot(3,1,1)

 plot(daneP(:,1))
  title('R')
 subplot(3,1,2)
 
 plot(daneP(:,2))
 title('G')
 subplot(3,1,3)
 
 plot(daneP(:,3))
 title('B')
 
 %%
 sygnal_okres = daneP(17:253,2);
 figure(2)
szum = createfigure1(sygnal_okres);
Fs=60*15;
T = 1/Fs;
L = 253-16;
t = (0:L-1)*T; 

Y = fft(szum');
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
%%
figure(5)
f = Fs*(0:(L/2))/L;
plot(f,P1)
xlabel('Czestotliwosc sygnalu [Hz]')
ylabel('|Y(f)|')
text(find(P1==max(P1)),max(P1),sprintf('Fc=%f[Hz]',f(find(P1==max(P1)))))


%%
close all;
clear all;

R = randn(3,3);
A = uint32(100);
A_double = double(A)
B = double(A).*(R);

%%
%Liczba bitow dla double
whos A
%%
%Liczba bitow dla uint32
whos A_double

tab_a='æwiczenie 2';
tab_b='laboratorium 1';
%%
%Polaczone
tab = strvcat(tab_a,tab_b)
str1='Krasnoludy przesz³y przez rzekê w bród, nie zamoczywszy swych bród i do tego zmywszy ze swych nóg brud';
[startIndex] = regexp(str1,'b[^u,\s]+d')
%%
licz_1 = 123;
tekst = 'abcd';
liczb_2 = 0.1;
tab_los = randn(3,3)
%%
tab_kor = {licz_1 tekst;tab_los liczb_2};
tab_kor{2,1} = tab_kor{2,1}+100;
%%
tab_kor{2,1}
%%
f = @(x) x.^2-2*x+4
figure(1)
fplot(f,[-2 2])
xlabel('x')
ylabel('x^2-2*x+4')
%%
%wartosc calki
q = quad(f,-2,2)
Imie = {'Rafa³';'Monika';'Pawe³';'El¿bieta';'Mirek'}
Matematyka = randperm(50,5);
Fizyka = randperm(50,5);
Chemia = randperm(50,5);
przedmiot = {'Matematyka','Fizyka','Chemia'}
%%
T = table(Matematyka',Fizyka',Chemia','RowNames',Imie,'variableNames',przedmiot)
writetable(T,'out.csv');