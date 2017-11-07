function [runtest]=classify(img)
for i=1:5
  testdat(i,:)=blah([num2str(i) '.jpg']);
  testdat1(i,:)=blah1([num2str(i) '.jpg']);
end
imgdat=blah(img);
imgdat1=blah1(img);

for i=1:5
  runtest(i)=kl(testdat(i,:),imgdat)+ kl(testdat1(i,:),imgdat1);
  fprintf('%s = %1.4f\n',num2str(i), kl(testdat(i,:),imgdat)+ ...
                                    kl(testdat1(i,:),imgdat1));
end
    
