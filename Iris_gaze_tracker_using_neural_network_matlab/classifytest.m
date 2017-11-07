clc;
close all;
clear all;
% reading the alphabets
img='r.bmp';
runtest=classify(img);
% clc
disp('Digit recognise');
for i=1:26
    if runtest(i)==0
        fprintf('%s \n',char('a'-1+i));
    end
end
disp('classify completed');
