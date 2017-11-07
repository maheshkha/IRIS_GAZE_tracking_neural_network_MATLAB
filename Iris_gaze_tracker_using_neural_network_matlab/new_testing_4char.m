clc;
close all;
clear all;

% reading the alphabets
%feature extraction 
for i=1:1
  testdat(i,:)=blah_new([num2str(i) '.jpg']);
end

%feature vector create
for i=1:1
 if i==1
    P=testdat(i,:);
 else
    P=[P,testdat(i,:)];
 end
  if i==1
    [m,n]=size(testdat(i,:));
    for j=1:n
        T1(j)=1;
    end
  end
  if i==2
    [m,n]=size(testdat(i,:));
    for j=1:n
        T2(j)=2;
    end
  end
  if i==3
    [m,n]=size(testdat(i,:));
    for j=1:n
        T3(j)=3;
    end
  end
  if i==4
    [m,n]=size(testdat(i,:));
    for j=1:n
        T4(j)=4;
    end
  end
 end
T=[T1];%,T2];%,T3,T4

 load network_50epochs;

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
sum(error2);

speed=input('enter speed ');
for i=22:22:length(P)
if (P(i)>10 & speed > 40)
    disp('eye open');
else
    disp('eye close');
    disp('problem run alarm');

    [inspeech, Fs, bits] = wavread('s0.wav'); % read the wavefile
    wavplay(inspeech, Fs);

end

end