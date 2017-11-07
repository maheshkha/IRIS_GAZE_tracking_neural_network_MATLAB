clc;
close all;
clear all;

% reading the image
Z=imread('1.jpg');
imshow(Z)
%image read
I = imread('c.bmp');
figure;imshow(I);title('Original Image');

%rgb2 gray conversion
rgb_I=rgb2gray(I);%image toolbox dependent
figure;imshow(rgb_I);title('RGB Image');

% Noise addition
J = imnoise(rgb_I,'salt & pepper',0.2);
figure;subplot(221),imshow(J),title('salt pepper');

% median filtering calculations
L = medfilt2(J,[5 5]);
subplot(222),imshow(L),title('remove 5 5 salt pepper');

% median filtering calculations
L1 = medfilt2(J,[3 3]);
%subplot(222),imshow(L);

% error 5x5 calculations
err = L - rgb_I;
subplot(223),imshow(err),title('5 5 eroor salt pepper');

% error 3x3 calculations
err1 = L1 - rgb_I;
subplot(224),imshow(err1),title('3 3 error salt pepper')

% SE = strel('square',3);
% A= imread('c4.bmp');
% % BW1 = edge(uint8(A),'sobel')
% % figure,imshow(BW1),title('Edge');
% % %unknown image for matching 
% % bw1=(A);
% % bw2 = bwmorph(bw1,'skel',Inf);
% % d1= bwdist(bw2,'euclidean');
% % % figure, imshow(d1), title('1.skel +')
% 
% K=imdilate(A,SE);A2=K-A;
% % figure,imshow(K),title('dilate'); 
% % figure,imshow(A),title('original'); 
% % figure,imshow(A2),title('edge dilate'); 
% % U=bwhitmiss(Z,A,A2);
% % figure
% % imshow(U)
% if ~isempty(nonzeros(bwhitmiss(Z,A,A2)))
%     disp('c');
% end
% 
% A= imread('r1.bmp');
% K=imdilate(A,SE);A2=K-A;
% if ~isempty(nonzeros(bwhitmiss(Z,A,A2)))
%     disp('r');
% end
% 
% A= imread('a1.bmp');
% K=imdilate(A,SE);A2=K-A;
% if ~isempty(nonzeros(bwhitmiss(Z,A,A2)))
%     disp('a');
% end
% A= imread('z1.bmp');
% K=imdilate(A,SE);A2=K-A;
% if ~isempty(nonzeros(bwhitmiss(Z,A,A2)))
%     disp('z');
% end
% A= imread('y1.bmp');
% K=imdilate(A,SE);A2=K-A;
% if ~isempty(nonzeros(bwhitmiss(Z,A,A2)))
%     disp('y');
% end
% A= imread('i1.bmp');
% K=imdilate(A,SE);A2=K-A;
% if ~isempty(nonzeros(bwhitmiss(Z,A,A2)))
%     disp('i');
% end
% A= imread('m1.bmp');
% K=imdilate(A,SE);A2=K-A;
% if ~isempty(nonzeros(bwhitmiss(Z,A,A2)))
%     disp('m');
% end