close all; clear all;

image2 = imread('figura.tif');

figure(3)
subplot(1,2,1)
imshow(image2)
subplot(1,2,2)
plot(imhist(image2))

figure(4)
subplot(1,3,1)
imshow(im2bw(image2,100/255))
title('TH = 100')
subplot(1,3,2)
imshow(im2bw(image2,90/255))
title('TH = 90')
subplot(1,3,3)
imshow(im2bw(image2,110/255))
title('TH = 1100')

%=====================================

close all; clear all;

image3 = imread('figura2.tif');

figure(5)
subplot(1,2,1)
imshow(image3)
subplot(1,2,2)
plot(imhist(image3))

figure(6)
subplot(1,3,1)
imshow(im2bw(image3,130/255))
title('TH = 130')
subplot(1,3,2)
imshow(im2bw(image3,120/255))
title('TH = 120')
subplot(1,3,3)
imshow(im2bw(image3,125/255))
title('TH = 125')

% ==================================

close all; clear all;

image4 = imread('figura3.tif');

figure(7)
subplot(1,2,1)
imshow(image4)
subplot(1,2,2)
plot(imhist(image4))

figure(8)
subplot(1,3,1)
imshow(im2bw(image4,2/255))
title('TH = 2')
subplot(1,3,2)
imshow(im2bw(image4,180/255))
title('TH = 180')
subplot(1,3,3)
imshow(im2bw(image4,200/255))
title('TH = 200')

%Nie da siê okreœlic

% ===============================

close all; clear all;

image5 = imread('figura4.tif');

figure(9)
subplot(1,2,1)
imshow(image5)
subplot(1,2,2)
plot(imhist(image5))

figure(10)
subplot(1,3,1)
imshow(im2bw(image5,60/255))
title('TH = 60')
subplot(1,3,2)
imshow(im2bw(image5,32/255))
title('TH = 32')


% Coœ mo¿na próbowaæ ale lepiej siê nie da

% ==================================

close all; clear all;


image = imread('coins.png');

figure(1)
subplot(2,3,1)
imshow(image)
title('Basic')
subplot(2,3,2)
imhist(image)
title('Hist')
subplot(2,3,3)
imshow(im2bw(image,90/255))
title('Manual')
subplot(2,3,4)
tr = graythresh(image);
imshow(im2bw(image,graythresh(image)))
title(strcat('Otsu TH=',num2str(tr)))
subplot(2,3,5)
tr = clusterKittler(image)/255
imshow(im2bw(image,clusterKittler(image)/255))
title(strcat('clusterKittler TH=',num2str(tr)))
subplot(2,3,6)
tr = entropyYen(image)/255
imshow(im2bw(image,entropyYen(image)/255))
title(strcat('entropyYen TH=',num2str(tr)))

%Manual najlepszy

% ===========================

close all; clear all;


image = imread('tekst.bmp');
figure(1)
subplot(2,3,1)
imshow(image)
title('Basic')
subplot(2,3,2)
imhist(image)
title('Hist')
subplot(2,3,3)
imshow(im2bw(image,90/255))
title('Manual')
subplot(2,3,4)
tr = graythresh(image);
imshow(im2bw(image,graythresh(image)))
title(strcat('Otsu TH=',num2str(tr)))
subplot(2,3,5)
tr = clusterKittler(image)/255
imshow(im2bw(image,clusterKittler(image)/255))
title(strcat('clusterKittler TH=',num2str(tr)))
subplot(2,3,6)
tr = entropyYen(image)/255
imshow(im2bw(image,entropyYen(image)/255))
title(strcat('entropyYen TH=',num2str(tr)))

%Manual najlepszy

% ===================================
clear all;
close all;



image = imread('tekstReczny.tif');
[sizeX sizeY] = size(image);
image_bin=image;
n=20;
a=0.5;
m=1;
FIFO = 0;
for i=1:sizeX
    for j=1:sizeY
        
        if size(FIFO)==n
            FIFO(1:end-1) = FIFO(2:end);
            FIFO(end) = image(i,j);
        else
            if( size(FIFO)<n)
            FIFO = [FIFO image(i,j)];
            end
        end         
        m = sum(FIFO)/n;
        T = a*m;
        if(image(i,j)<T)
            image_bin(i,j)=0;
        else
            image_bin(i,j)=255;
        end
        
    end
end

%%%%%%%%%%%%%%%%%%%%%
image_bin_manual = im2bw(image,152/255);
%%%%%%%%%%%%%%%%%%%%%
lvl = graythresh(image);
image_bin_otsu = im2bw(image,lvl);



figure('name','srednia ruchoma');
imshow(image_bin,[])
figure('name','srednia manualna');
imshow(image_bin_manual,[])
figure('name','srednia otsu');
imshow(image_bin_otsu,[])

close all; clear all;


image = imread('rice.png');
bin_img = image;

[ X Y ] = size(image);

for i = 1:X
    for j = 1:Y
        img_mean = meanLT(i,j,8,image,X,Y);
         if bin_img(i,j)>img_mean
            bin_img(i,j) = 255;
         else
             bin_img(i,j) = 0;
         end
    end
end

figure(1)
subplot(1,2,1)
imshow(image)
subplot(1,2,2)
imshow(bin_img)

[ X Y ] = size(image);

for i = 1:X
    for j = 1:Y
        m=meanLT(i,j,8,image,X,Y);
        T = m*(1+0.15*((stddevLT(i,j,8,image,m,X,Y)/128) - 1));
         if bin_img(i,j)>img_mean
            bin_img(i,j) = 255;
         else
             bin_img(i,j) = 0;
         end
    end
end

figure(2)
subplot(1,2,1)
imshow(image)
subplot(1,2,2)
imshow(bin_img)

close all; clear all;

image = imread('bart.bmp');
obrazBW = image;

figure(1)
subplot(2,1,1)
imshow(image)
subplot(2,1,2)
imhist(image)

obrazBW = image > 188 & image < 203;
obrazBW = uint8(obrazBW);

figure(2)
subplot(2,1,1)
imshow(image)
subplot(2,1,2)
imshow(obrazBW,[])
