function LUT(obraz,przekodowanie)
subplot(3,1,1);
plot(przekodowanie)
title('Przekodowanie')
subplot(3,1,2)
imshow(obraz)
title('Input Image')
subplot(3,1,3)
imshow(intlut(obraz,przekodowanie))
title('LUT img')
end

clear all;
close all;
kolo = imread('Podstawowe operacje/kolo.bmp');
kwadrat = imread('Podstawowe operacje/kwadrat.bmp');
kolo = boolean(kolo);
kwadrat = boolean(kwadrat);
figure(1)
imshow(kwadrat);
figure(3)
imshow(kolo);
figure(2)
imshow(kolo);
subplot(4,1,1)
imshow(kolo & kwadrat);
subplot(4,1,2)
imshow(kolo | kwadrat);
subplot(4,1,3)
imshow(xor(kolo,kwadrat));
subplot(4,1,4)
imshow(~kolo);

close all;
clear all;

lena = imread('Podstawowe operacje/lena.bmp');
jet = imread('Podstawowe operacje/jet.bmp');

%%%%dodawanie

lena_add_jet = imadd(lena,jet);
lena_add_jest_uint16 = imadd(lena,jet,'uint16');
figure('name','lena+yet');
subplot(2,1,1)
imshow(lena_add_jet);
title('uint8')
subplot(2,1,2)
imshow(lena_add_jest_uint16,[])
title('uint16')


%%%% kombinacja liniowa

lena_jet = imlincomb(0.1,lena,0.34,jet);
figure('name','imlincomb lena+yet');
imshow(lena_jet);


%%%%% odejmowanie

lena_sub_jet = imsubtract(lena,jet);
lena16 = int16(lena);
jet16 = int16(jet);
lena_sub_jet16 = imsubtract(lena16,jet16);
figure('name','Substract image');
subplot(2,1,1)
imshow(lena_sub_jet);
title('uint8')
subplot(2,1,2)
imshow(lena_sub_jet16,[])
title('uint16')
%Zamiana z uint8 na int16 powoduje �e mo�liwa jest reprezentacja ujemnych
%warto�ci dodawania. W defaltowym przypadku gdy odejmiemy 30 - 50 to pixel
%bd mia� warto�� 0, po zmianie na int16 -20.

lena_sub_jet_abs = imabsdiff(lena,jet);


%%%%Mno�enie

lena_x_jet = immultiply(lena,jet);
figure('name','immultiply images');
imshow(lena_x_jet);
%Mno��c warto�ci ka�dego pixela obrazu pierwszego razy warto�c
%odpowiadaj�cego pixela drugiego obrazu wychodzi si� poza zakrez
%reprezentacji 0-255 ( wszystkie pixele sa bia�e)
%Sens mno�eniea jest w�wczas gdy na obraz nak�adamy jak�� mask�
%kt�r� mo�emy wyci�� cz�� obrazu kt�ra jest niepotzrebna.

kolo = imread('Podstawowe operacje/kolo.bmp');
kolo = boolean(kolo);

figure('name','immultiply images')
lena_kolo = immultiply(lena,kolo);
imshow(lena_kolo)
figure('name','negatyw')
lena_leg = imcomplement(lena);
imshow(lena_leg);

close all;
clear all;


load 'Podstawowe operacje/funkcjeLUT.mat';

figure('Name','kwadratowa')
plot(kwadratowa);
figure(1);
plot(kwadratowa);
lena = imread('Podstawowe operacje/lena.bmp');
figure(2);
LUT(lena,kwadratowa)
figure(3)
LUT(lena,wykladnicza)
figure(4)
LUT(lena,pierwiastkowa)
figure(5)
LUT(lena,pila)
figure(6)
LUT(lena,odwrotna)
figure(7)
LUT(lena,log)
figure(8)
LUT(lena,odwlog)