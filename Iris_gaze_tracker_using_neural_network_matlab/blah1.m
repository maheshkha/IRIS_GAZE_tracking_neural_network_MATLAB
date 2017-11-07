function [sig]=blah1(img)
a=imread(img);

c=1;
for i=1:100
  for j=1:100
    if (~a(i,j))
      d(c,1)=i;
      d(c,2)=j;
      c=c+1;
    end
  end
end

xsig=hist(d(:,1),5);
ysig=hist(d(:,2),5);
sig=[xsig ysig];
sig=sig/sum(sig);

