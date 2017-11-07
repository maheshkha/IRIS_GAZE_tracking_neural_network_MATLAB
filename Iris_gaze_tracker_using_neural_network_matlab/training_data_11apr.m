clc;
close all;
clear all;
warning off;

% reading the alphabets
% feature extraction 
load feature_extraction_11apr

%initialise NN
net = newff(minmax(P),[2 1],{'tansig' 'purelin'});

% net.trainParam.epochs = 500;
net.trainparam.show=1000;
net.trainparam.epochs=5000;
net.trainparam.goal=.001;
% net.trainparam.mingrad=1.0000e-018;
% net.trainparam.min_grad=1.0000e-018;

%training started
net = train(net,P,T);

save network_for_two_data net;

% testing code
Y = sim(net,P);


for i=1:1:size(Y),
if ((Y(i)>1.3) & (Y(i)<2.4))
% disp('class 2')
idx3(i)=2;
elseif (Y(i)<1.3) 
%     disp('class 1')
idx3(i)=1;
elseif ((Y(i)>2.4) & (Y(i)<3.4))
% disp('class 3')
idx3(i)=3;
elseif (Y(i)>3.4)
% disp('class 3')
idx3(i)=4;
end
end
error2=T - idx3;
sum(error2)
for i=3:3:length(P)
if (P(i)>8)
    disp('Matched');
else
    disp('Not Matched');
end

end