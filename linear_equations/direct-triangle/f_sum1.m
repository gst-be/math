function sum=f_sum1(l,u,r,i)
sum=0;
for k=1:r-1
    sum=sum+l(r,k)*u(k,i);
end
