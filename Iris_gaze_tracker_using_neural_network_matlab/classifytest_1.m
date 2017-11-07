clc;
close all;
clear all;
% reading the alphabets
img='2.jpg';
runtest=classify(img);
% clc
disp('Eye status');
for i=1:5
    if runtest(i)==0
        fprintf('%s \n',num2str(i));
    end
end
disp('classify completed');
