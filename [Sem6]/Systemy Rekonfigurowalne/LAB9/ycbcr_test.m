clear all;
close all;
path = 'reka_1_64x64.ppm';
%%%% ycbcr
img = imread(path);
y = 0.299*img(:,:,1)+0.587* img(:,:,2)+0.114*img(:,:,3)+16;
Cb = -0.168736*img(:,:,1)-0.331264* img(:,:,2)+0.5*img(:,:,3)+128;
Cr = 0.5*img(:,:,1)-0.418688* img(:,:,2)-0.081312*img(:,:,3)+128;

img_ycrcb= rgb2ycbcr(img);
img_ycrcb2= cat(3,y,Cb,Cr);
figure(1)
imshow(img_ycrcb)
figure(2)
imshow(img_ycrcb2)
