%%%%%wa¿na cecha filtracji medianowej - po³o¿enie krawêdzi zostaje zachowane.

close all;
clear all;

lena_szum = imread('archiwum_filtracja/lenaSzum.bmp');
lena = imread('archiwum_filtracja/lena.bmp');

low_passVSmedian(lena_szum,3,'lena_szum 3x3');
low_passVSmedian(lena,3,'lena 3x3');

clear all;
close all;

plansza = imread('archiwum_filtracja/plansza.tif');
plot_conv2(plansza,3,'3x3');
plot_conv2(plansza,5,'5x5');
plot_conv2(plansza,9,'9x9');
plot_conv2(plansza,15,'15x15');
plot_conv2(plansza,35,'35x35');
%Modu³ z ró¿nicy zawiera krawiêdzie, zmienia wartoœci bia³e -> czarne i
%odwrotnie, pomaga usun¹c zak³ócenia 

lena  = imread('archiwum_filtracja/lena.bmp');
plot_conv2(lena,3,'l3x3');
plot_conv2(lena,5,'l5x5');
plot_conv2(lena,9,'l9x9');
plot_conv2(lena,15,'l15x15');
plot_conv2(lena,35,'l35x35');


%%% Maska M
M = [1 2 1; 2 4 2; 1 2 1]; 
M = M/sum(sum(M));

filtred_lena_M = uint8(conv2(lena,M,'same'));
figure('name','M-Mask')
subplot(3,1,1);
imshow(lena)
title('Basic')
subplot(3,1,2)
imshow(filtred_lena_M)
title('Filtred')
subplot(3,1,3)
imshow(imabsdiff(lena,filtred_lena_M),[])
title('imabsdiff')


%%%% Maska Gaussa
figure('name','gauss mask')

gauss_mask = fspecial('gaussian',5);
mesh(gauss_mask);
filtred_lena_G = uint8(conv2(lena,gauss_mask,'same'));
figure('name','G-Mask')
subplot(3,1,1);
imshow(lena)
title('Basic')
subplot(3,1,2)
imshow(filtred_lena_G)
title('Filtred')
subplot(3,1,3)
imshow(imabsdiff(lena,filtred_lena_G),[])
title('imabsdiff')

close all; 
clear all;


kw = imread('archiwum_filtracja/kw.bmp');
load ('archiwum_filtracja/maskiPP.mat');

%Maska R1
kwR1 = conv2(kw,R1, 'same');
kwR1 = uint8(kwR1);

kwR1_128 = kwR1 + 128;
kwR1_abs = abs(kwR1);

figure('Name', 'R1')
subplot(1,3,1)
imshow(kw)
title('Basic')
subplot(1,3,2)
imshow(kwR1_128,[])
title('128')
subplot(1,3,3)
imshow(kwR1_abs,[])
title('abs')






%Maska R2
kwR2 = conv2(kw,R2, 'same');
kwR2 = uint8(kwR2);

kwR2_128 = kwR2 + 128;
kwR2_abs = abs(kwR2);

figure('Name', 'R2')
subplot(1,3,1)
imshow(kw)
title('Basic')
subplot(1,3,2)
imshow(kwR2_128,[])
title('128')
subplot(1,3,3)
imshow(kwR2_abs,[])
title('abs')


%Maska P1
kwP1 = conv2(kw,P1, 'same');
kwP1 = uint8(kwP1);

kwP1_128 = kwP1 + 128;
kwP1_abs = abs(kwP1);

figure('Name', 'P1')
subplot(1,3,1)
imshow(kw)
title('Basic')
subplot(1,3,2)
imshow(kwP1_128,[])
title('128')
subplot(1,3,3)
imshow(kwP1_abs,[])
title('abs')

%Maska P2
kwP2 = conv2(kw,P2, 'same');
kwP2 = uint8(kwP2);

kwP2_128 = kwP2 + 128;
kwP2_abs = abs(kwP2);

figure('Name', 'P2')
subplot(1,3,1)
imshow(kw)
title('Basic')
subplot(1,3,2)
imshow(kwP2_128,[])
title('128')
subplot(1,3,3)
imshow(kwP2_abs,[])
title('abs')


%Maska S1
kwS1 = conv2(kw,S1, 'same');
kwS1 = uint8(kwS1);

kwS1_128 = kwS1 + 128;
kwS1_abs = abs(kwS1);

figure('Name', 'S1')
subplot(1,3,1)
imshow(kw)
title('Basic')
subplot(1,3,2)
imshow(kwS1_128,[])
title('128')
subplot(1,3,3)
imshow(kwS1_abs,[])
title('abs')


%Maska S2
kwS2 = conv2(kw,S2, 'same');
kwS2 = uint8(kwS2);

kwS2_128 = kwS2 + 128;
kwS2_abs = abs(kwS2);

figure('Name', 'S2')
subplot(1,3,1)
imshow(kw)
title('Basic')
subplot(1,3,2)
imshow(kwS2_128,[])
title('128')
subplot(1,3,3)
imshow(kwS2_abs,[])
title('abs')

%Kombinowany SQRT
kwSQRT = sqrt(conv2(kw,S1, 'same').^2 + conv2(kw,S2, 'same').^2);
kwSQRT = uint8(kwSQRT);

kwSQRT_128 = kwSQRT + 128;
kwSQRT_abs = abs(kwSQRT);

figure('Name', 'SQRT')
subplot(1,3,1)
imshow(kw)
title('Basic')
subplot(1,3,2)
imshow(kwSQRT_128,[])
title('128')
subplot(1,3,3)
imshow(kwSQRT_abs,[])
title('abs')


%Kombinowany abs
kwABS = abs(conv2(kw,S1, 'same'))+ abs(conv2(kw,S2, 'same'));
kwABS = uint8(kwABS);

kwABS_128 = kwABS + 128;
kwABS_abs = abs(kwABS);

figure('Name', 'ABS')
subplot(1,3,1)
imshow(kw)
title('Basic')
subplot(1,3,2)
imshow(kwABS_128,[])
title('128')
subplot(1,3,3)
imshow(kwABS_abs,[])
title('abs')

clear all;
close all;

moon = imread('archiwum_filtracja/moon.bmp');
dipxe = imread('archiwum_filtracja/dipxe.jpg');

M = [0 1 0; 1 -4 1; 0 1 0];
M = M./9;

moon_filtred = conv2(moon,M,'same');

moon_normalised128 = moon_filtred + 128;
moon_normalisedabs = abs(moon_filtred);

laplace = fspecial('laplacian')
moon_filtred_laplace = uint8(conv2(moon,laplace,'same'));
moon_filtred_laplace = moon_filtred_laplace+moon;

figure('name','Filtracja Laplasjanami z maska M')
subplot(1,4,1)
imshow(moon);
title('Input image')
subplot(1,4,2)
imshow(moon_normalised128,[])
title('+128')
subplot(1,4,3)
imshow(moon_normalisedabs,[])
title('abs')
subplot(1,4,4)
imshow(moon_filtred_laplace,[])
title('moon_filtred_laplace +')

unsharp_mask(dipxe,4.5);
unsharp_mask(dipxe,1);


function [] = low_passVSmedian( image, mask_size,figure_name )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
average_mask = fspecial('average',mask_size);
filtred_image_average = uint8(conv2(image,average_mask,'same'))

filtred_image_median = medfilt2(image,[mask_size mask_size]);

figure('name',figure_name)
subplot(2,3,1);
imshow(image);
title('Basic');
subplot(2,3,2);
imshow(filtred_image_average);
title('Filtred average')
subplot(2,3,3);
imshow(imabsdiff(image,filtred_image_average),[]);
title('imabsdiff');
subplot(2,3,4);
imshow(image);
title('Basic')
subplot(2,3,5)
imshow(filtred_image_median);
title('Filtred median');
subplot(2,3,6);
imshow(imabsdiff(image,filtred_image_median),[]);
title('imabsdiff')

end

function [] = plot_conv2( image,size_of_mask,figure_name )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
average = fspecial('average',size_of_mask);
filtred_image = conv2(image,average,'same');
filtred_image = uint8(filtred_image);
figure('name',figure_name)
subplot(3,1,1);
imshow(image)
title('Basic')
subplot(3,1,2)
imshow(filtred_image)
title('Filtred')
subplot(3,1,3)
imshow(imabsdiff(image,filtred_image),[])
title('imabsdiff')
end

function [ output_args ] = unsharp_mask( image,k )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
image_cpy = image;
image_blurred = imgaussfilt(image_cpy,5);
image_mask = image_cpy - image_blurred;

output_image = image_cpy + k*image_mask;
figure()
subplot(1,4,1)
imshow(image);
title('Input image')
subplot(1,4,2)
imshow(image_blurred,[])
title('rozmyty')
subplot(1,4,3)
imshow(image_mask,[])
title('maska')
subplot(1,4,4)
imshow(output_image,[])
title('rezultat')




end

