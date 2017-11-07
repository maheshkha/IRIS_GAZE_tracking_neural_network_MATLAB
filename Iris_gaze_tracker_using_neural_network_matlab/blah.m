function [sig]=blah(img)
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
da=sum(d)/size(d,1);
for i=1:size(d,1)
e(i)=sqrt(((d(i,1)-da(1))^2)+(d(i,2)-da(2))^2);
end

e=e/max(e);
sig=hist(e,0:0.05:1);
sig=sig/sum(sig);

