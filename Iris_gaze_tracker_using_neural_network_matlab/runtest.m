clc;
close all;
clear all;
% reading the database
for i=1:5
  testdat(i,:)=blah([num2str(i) '.jpg']);
  testdat1(i,:)=blah1([num2str(i) '.jpg']);
end

for i=1:5
  for j=1:5
    if (j<=i)
  	  fprintf ('%1.2f ',kl(testdat(i,:),testdat(j,:))+ ...
	                      kl(testdat1(i,:),testdat1(j,:)));
    end
    ims(i,j)=kl(testdat(i,:),testdat(j,:)) + ...
    	     kl(testdat1(i,:),testdat1(j,:));
 end
 fprintf('\n');
end
colormap('gray');
imagesc(max(-1,ims));
    
