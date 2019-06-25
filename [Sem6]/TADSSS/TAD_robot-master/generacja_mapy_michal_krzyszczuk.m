close all;
clear all;

img=zeros(100,100,1,'uint8');
img(5:10,1:95)=255;
img(90:95,5:95)=255;
img(50:55,5:95)=255;
img(80:85,5:95)=255;
img(5:95,90:95)=255;
img(5:95,5:10)=255;
img(5:95,50:55)=255;
img(5:50,75:80)=255;
img(55:80,60:65)=255;
imshow(img)
imwrite(img,'mapa_mk.png');