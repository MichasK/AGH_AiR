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