close all;
clear all;

ertka = imread('pliki/ertka.bmp');

SE_square = strel('square',3);

SE_diamond = strel('diamond',3);

SE_disk = strel('disk',4,6);

ertka_erozja_square = imerode(ertka,SE_square);
ertka_erozja_diamond = imerode(ertka,SE_diamond);
ertka_erozja_disk = imerode(ertka,SE_disk);

figure('name','ERTKA erozja kwadrat 3x3')
subplot(2,2,1)
imshow(ertka);
title('Input image')
subplot(2,2,2)
imshow(ertka_erozja_square);
title('Erozja 3x3 kwadrat')
subplot(2,2,3)
imshow(ertka_erozja_diamond);
title('Erozja diamond')
subplot(2,2,4)
imshow(ertka_erozja_disk);
title('Erozja disk')

figure('name','Erozja kwadrat 3 iteracje')
ertka_erozja_3_iteracje = imerode(imerode(imerode(ertka,SE_square),SE_square),SE_square);
imshow(ertka_erozja_3_iteracje);
