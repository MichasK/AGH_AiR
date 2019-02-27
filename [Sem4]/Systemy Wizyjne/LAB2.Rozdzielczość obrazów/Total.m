close all;
clear all;


lena100 = imread('lena100.bmp');
figure(1)
imshow(lena100)
figure(2)
imshow(imresize(lena100,2,'nearest'))
figure(3)
imshow(imresize(lena100,2,'bilinear'))
figure(4)
imshow(imresize(lena100,2,'bicubic'))

pause;
close all;

chessboard = imread('szachownica.bmp');

chessboardNearest = imresize(chessboard,10,'nearest');
chessboardBilinear = imresize(chessboard,10,'bilinear');
chessboardBicubic = imresize(chessboard,10,'bicubic');

chessboardNearest = imresize(chessboardNearest,0.625,'nearest');
chessboardBilinear = imresize(chessboardBilinear,0.625,'bilinear');
chessboardBicubic = imresize(chessboardBicubic,0.625,'bicubic');

figure(1)
imshow(chessboard)
title('Basic')
figure(2)
imshow(chessboardNearest)
title('Nearest-neighbor interpolation')
figure(3)
imshow(chessboardBilinear)
title('Bilinear interpolation')
figure(4)
imshow(chessboardBicubic)
title('Bicubic interpolation')

pause;
close all;


close all;
clear all;

lena = imread('lena.bmp');

lena256 = imresize(lena,[256 256]);
lena64 = imresize(lena,[64 64]);
lena128 = imresize(lena,[128 128]);

figure(1)
imshow(lena64,'InitialMagnification',800)
title('64x64');
figure(2)
imshow(lena128,'InitialMagnification',400)
title('128x128')
figure(3)
imshow(lena256,'InitialMagnification',200)
title('256x256')
figure(4)
imshow(lena)
title('Basic');

close all;
clear all;

lena = imread('lena.bmp');

A = imrotate(lena,45);
imshow(A);
close all;

chessboard = imread('szachownica.bmp');

chessboard_rotated_nearest = imrotate(chessboard,-45),'nearest';
chessboard_rotated_bilinear = imrotate(chessboard,-45,'bilinear');
chessboard_rotated_bicubic = imrotate(chessboard,-45,'bicubic');

subplot(4,1,1)
imshow(chessboard);
title('Basic');
subplot(4,1,2)
imshow(chessboard_rotated_nearest);
title('chessboard rotated nearest');
subplot(4,1,3)
imshow(chessboard_rotated_bilinear);
title('chessboard rotated bilinear');
subplot(4,1,4)
imshow(chessboard_rotated_bicubic);
title('chessboard rotated bicubic');

%Bicubic
theta = -45;
scale = [0.5 0 0; 0 0.5 0; 0 0 1 ];
rotate = [cosd(theta) sind(theta) 0;-sind(theta) cosd(theta) 0; 0 0 1]*scale;
tform = affine2d(rotate);
B=imwarp(lena,tform);
figure(2)
imshow(B)
title('Rotated 1/2');
translatedLena = imtranslate(lena,[10 25]);
figure(3)
imshow(translatedLena);

close all;
clear all;


lena = imread('lena.bmp');
lena = imresize(lena, [128 128]);
lena0_31 = imadjust(lena,[],[0 0.08]);
lena0_15 = imadjust(lena,[],[0 0.17]);
lena0_7 = imadjust(lena,[],[0 0.36]);
lena0_3 = imadjust(lena,[],[0 0.85]);
lena0_1 = imadjust(lena,[],[0 0.225]);

subplot(3,3,1);
imshow(lena,[]);
title('Original');

subplot(3,3,2);
imshow(lena0_31,[]);
title('lena0_31');
 
subplot(3,3,3);
imshow(lena0_15,[]);
title('lena0_15');
 
subplot(3,3,4);
imshow(lena0_7,[]);
title('lena0_7');
 
subplot(3,3,5);
imshow(lena0_3,[]);
title('lena0_3');
 
subplot(3,3,6);
imshow(lena0_1,[]);
title('lena0_1');

 

