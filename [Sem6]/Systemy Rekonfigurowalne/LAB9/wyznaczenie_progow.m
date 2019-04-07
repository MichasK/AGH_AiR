close all;
clear all;
path = 'reka_1_64x64.ppm';
img = imread(path);
img_ycrcb = rgb2ycbcr(img);