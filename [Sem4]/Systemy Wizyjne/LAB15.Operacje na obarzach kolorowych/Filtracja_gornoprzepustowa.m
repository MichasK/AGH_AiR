close all;
clear all;
load MaskiPP.mat
lena = imread('Pliki/lenaRGB.bmp');

lenaR = double(lena(:,:,1));
lenaG = double(lena(:,:,2));
lenaB = double(lena(:,:,3));

lenaR = sqrt(conv2(lenaR,S1, 'same').^2 + conv2(lenaR,S2, 'same').^2);
lenaG = sqrt(conv2(lenaG,S1, 'same').^2 + conv2(lenaG,S2, 'same').^2);
lenaB = sqrt(conv2(lenaB,S1, 'same').^2 + conv2(lenaB,S2, 'same').^2);

figure('Name','Obraz Kolorowy');
imshow(lena)

figure('Name','Poszczegolne Skladowe')
subplot(1,3,1)
imshow(lenaR)
title('R')
subplot(1,3,2)
imshow(lenaG)
title('G')
subplot(1,3,3)
imshow(lenaB)
title('B')


obrazEQ = lena;
obrazEQ(:,:,1) = lenaR;
obrazEQ(:,:,2) = lenaG;
obrazEQ(:,:,3) = lenaB;

figure('name','Wynik')
imshow(obrazEQ)


lenaHSV = rgb2hsv(lena);

figure('Name','Obraz Kolorowy HSV');
imshow(lenaHSV)

lenaH = double(lena(:,:,1));
lenaS = double(lena(:,:,2));
lenaV = double(lena(:,:,3));

lenaH = sqrt(conv2(lenaH,S1, 'same').^2 + conv2(lenaH,S2, 'same').^2);
lenaS = sqrt(conv2(lenaS,S1, 'same').^2 + conv2(lenaS,S2, 'same').^2);
lenaV = sqrt(conv2(lenaV,S1, 'same').^2 + conv2(lenaV,S2, 'same').^2);

figure('Name','Poszczegolne Skladowe HSV')
subplot(1,3,1)
imshow(lenaR)
title('R')
subplot(1,3,2)
imshow(lenaG)
title('G')
subplot(1,3,3)
imshow(lenaB)
title('B')


subplot(1,3,1)
imshow(lenaH)
title('H')
subplot(1,3,2)
imshow(lenaS)
title('S')
subplot(1,3,3)
imshow(lenaV)
title('B')


obrazEQ = lena;
obrazEQ(:,:,1) = lenaH;
obrazEQ(:,:,2) = lenaS;
obrazEQ(:,:,3) = lenaV;
obrazEQ = double(obrazEQ);

lenaHSV = hsv2rgb(obrazEQ);
figure('name','Wynik HSV')
imshow(lenaHSV)

