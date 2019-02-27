close all;
clear all;

lena = imread('Pliki/lenaRGB.bmp');

lenaR = lena(:,:,1);
lenaG = lena(:,:,2);
lenaB = lena(:,:,3);

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

lenaRE = histeq(lenaR,256);
lenaGE = histeq(lenaG,256);
lenaBE = histeq(lenaB,256);


obrazEQ = lena;
obrazEQ(:,:,1) = lenaRE;
obrazEQ(:,:,2) = lenaGE;
obrazEQ(:,:,3) = lenaBE;

figure('name','Histogram wyrównany w kolorze')
imshow(obrazEQ)

%%%Zmiana kolorystyki obrazu, i jego zniekszta³cenie

lena2 = rgb2hsv(lena);

lena2R = lena2(:,:,1);
lena2G = lena2(:,:,2);
lena2B = lena2(:,:,3);

figure('Name','Obraz Kolorowy HSV');
imshow(lena2)


figure('Name','Poszczegolne Skladowe')
subplot(1,3,1)
imshow(lena2R)
title('H')
subplot(1,3,2)
imshow(lena2G)
title('S')
subplot(1,3,3)
imshow(lena2B)
title('V')

lena2RE = histeq(lena2R,256);
lena2GE = histeq(lena2G,256);
lena2BE = histeq(lena2B,256);


obraz2EQ = lena2;
obraz2EQ(:,:,1) = lena2RE;
obraz2EQ(:,:,2) = lena2GE;
obraz2EQ(:,:,3) = lena2BE;

obraz2EQ = hsv2rgb(obraz2EQ);

figure('name','Histogram wyrównany w kolorze HSV')
imshow(obraz2EQ)


close all;
clear all;

lena = imread('Pliki/lenaRGBSzumKolor.bmp');
lenaHSV = rgb2hsv(lena);

figure('name','Obraz RGB')
imshow(lena)

figure('name','Obraz HSV')
imshow(lenaHSV)

lenaR = lena(:,:,1);
lenaG = lena(:,:,2);
lenaB = lena(:,:,3);
lenaR = medfilt2(lenaR,[4 4]);
lenaG = medfilt2(lenaG,[4 4]);
lenaB = medfilt2(lenaB,[4 4]);



lenaH = lenaHSV(:,:,1);
lenaS = lenaHSV(:,:,2);
lenaV = lenaHSV(:,:,3);
lenaH = medfilt2(lenaH,[4 4]);
lenaS = medfilt2(lenaS,[4 4]);
lenaV = medfilt2(lenaV,[4 4]);


HSV = cat(3, lenaH, lenaS, lenaV);
RGB = cat(3, lenaR, lenaG, lenaB);
HSV = hsv2rgb(HSV);

figure('Name','Filtred HSV')
imshow(HSV)

figure('Name','Filtred RGB')
imshow(RGB)



close all;
clear all;
load MaskiPP.mat
lena = imread('Pliki/lenaRGB.bmp');

lenaR = (lena(:,:,1));
lenaG = (lena(:,:,2));
lenaB = (lena(:,:,3));

lenaR1 = conv2(lenaR,S1, 'same');
lenaR2 = conv2(lenaR,S2, 'same');
lenaR = abs(lenaR1) + abs(lenaR2);

lenaG1 = conv2(lenaG,S1, 'same');
lenaG2 = conv2(lenaG,S2, 'same');
lenaG = abs(lenaG1) + abs(lenaG2);

lenaB1 = conv2(lenaB,S1, 'same');
lenaB2 = conv2(lenaB,S2, 'same');
lenaB = abs(lenaB1) + abs(lenaB2);


figure('Name','Obraz Kolorowy');
imshow(lena)

figure('Name','Poszczegolne Skladowe')
subplot(1,3,1)
imshow(lenaR,[])
title('R')
subplot(1,3,2,[])
imshow(lenaG,[])
title('G')
subplot(1,3,3)
imshow(lenaB,[])
title('B')


obrazEQ = lena;
obrazEQ(:,:,1) = lenaR;
obrazEQ(:,:,2) = lenaG;
obrazEQ(:,:,3) = lenaB;

SUM_RGB = lenaR+lenaG+lenaB;

figure('name','Wynik RGB')
imshow(obrazEQ)
figure('name','Krawedzie w skali szarosci RGB')
imshow(SUM_RGB,[])

lenaHSV = rgb2hsv(lena);

figure('Name','Obraz Kolorowy HSV');
imshow(lenaHSV)

lenaH = double(lena(:,:,1));
lenaS = double(lena(:,:,2));
lenaV = double(lena(:,:,3));

lenaH1 = conv2(lenaH,S1, 'same');
lenaH2 = conv2(lenaH,S2, 'same');
lenaH = abs(lenaH1) + abs(lenaH2);

lenaS1 = conv2(lenaS,S1, 'same');
lenaS2 = conv2(lenaS,S2, 'same');
lenaS = abs(lenaS1) + abs(lenaS2);

lenaV1 = conv2(lenaV,S1, 'same');
lenaV2 = conv2(lenaV,S2, 'same');
lenaV = abs(lenaV1) + abs(lenaV2);

figure('Name','Poszczegolne Skladowe HSV')
subplot(1,3,1)
imshow(lenaH,[])
title('H')
subplot(1,3,2)
imshow(lenaS,[])
title('S')
subplot(1,3,3)
imshow(lenaV,[])
title('V')

SUM_HSV = lenaH + lenaS + lenaV;


obrazEQ = double(lena);
obrazEQ(:,:,1) = lenaH;
obrazEQ(:,:,2) = lenaS;
obrazEQ(:,:,3) = lenaV;



figure('name','Krawedzie w skali szarosci HSV')
imshow(SUM_HSV,[])
close all;
clear all;

lena = imread('Pliki/lenaRGBSzumKolor.bmp');
lenaHSV = rgb2hsv(lena);

h = fspecial('average',4);

figure('name','Obraz RGB')
imshow(lena)

figure('name','Obraz HSV')
imshow(lenaHSV)


%%%%%%%%%%%%%%%%%%%%%%%%%
lenaR = lena(:,:,1);
lenaG = lena(:,:,2);
lenaB = lena(:,:,3);

lenaH = lenaHSV(:,:,1);
lenaS = lenaHSV(:,:,2);
lenaV = lenaHSV(:,:,3);

lenaR = conv2(lenaR,h,'same');
lenaG = conv2(lenaG,h,'same');
lenaB = conv2(lenaB,h,'same');

lenaH = conv2(lenaH,h,'same');
lenaS = conv2(lenaS,h,'same');
lenaV = conv2(lenaV,h,'same');

obraz = lena;
obraz(:,:,1) = lenaR;
obraz(:,:,2) = lenaG;
obraz(:,:,3) = lenaB;

obraz2 = cat(3, lenaH, lenaS, lenaV);
obraz2 = hsv2rgb(obraz2);

figure('name','Filtracja RGB')
imshow(obraz)

figure('name','Filtracja HSV')
imshow(obraz2)




