clc
close all
clear all

%image read
I = (imread('1.jpg'));%double rgb2gray
figure;imshow(I);title('Original Image');
rgb_I = I;
%rgb2 gray conversion
% rgb_I=rgb2gray(I);%image toolbox dependent
% figure;imshow(rgb_I);title('RGB Image');
%normalisation parameters
rminiris = 60;
rmaxiris = 120;

[ci,cp,o]=thresh(I,rminiris,rmaxiris);
figure,imshow(o);