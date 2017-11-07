function [div]=kl(p,pp)

p=(p+0.00001);
pp=(pp+0.00001);
p=p/sum(p);
pp=pp/sum(pp);

prob=p.*(log(pp)-log(p));

for i=1:size(prob,2)
  if (isnan(prob(i)))
    prob(i)=0;
  end
end

div=sum(prob);
