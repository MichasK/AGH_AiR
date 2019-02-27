close all;
clear all;

image = imread('Pliki/kwadraty.tif');
load maskiPP.mat;

figure(1)
subplot(1,2,1)

imshow(image)

k1 = conv2(image,R1,'same');
k1 = abs(k1);
subplot(1,2,2);
imshow(k1)

[H theta rho] = hough(k1);

figure(2)
imshow(H,[])


peaks = houghpeaks(H,8);

lines = houghlines(k1,theta,rho,peaks);


figure, imshow(k1), hold on
max_len = 0;
for k = 1:length(lines)
   xy = [lines(k).point1; lines(k).point2];
   plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');

   % Plot beginnings and ends of lines
   plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow');
   plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red');

   % Determine the endpoints of the longest line segment
   len = norm(lines(k).point1 - lines(k).point2);
   if ( len > max_len)
      max_len = len;
      xy_long = xy;
   end
end

close all;
clear all;

image = zeros(11,11);
image(3,4) = 1;
image(1,4) = 1;
H = houghAB(image);

figure(1)
imshow(H,[]);
%proste przecinaj¹ siê w nieskonczonosci ta przestrzen siê nie nadaje bo
%nie nadaje siê do pokazania nieskonczonosci. Dla duzych tangensów ta
%przestrzen sie nie nadaje