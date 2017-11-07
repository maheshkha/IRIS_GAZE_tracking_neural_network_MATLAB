clc
close all
clear all

x=imread('2.jpg');
imshow(x)

x1 = rgb2gray(x);
figure,imshow(x1)

% Noise addition
J = imnoise( x1,'salt & pepper',0.2);
figure;
imshow(J),title('salt pepper');

% median filtering calculations
L = medfilt2(J,[3 3]);
figure, imshow(L),title('remove 3 3 salt pepper');

figure,imhist(L)