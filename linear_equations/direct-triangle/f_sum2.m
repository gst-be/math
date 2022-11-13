function sum=f_sum2(l,u,r,i)
sum=0;
for k=1:r-1
    sum=sum+l(i,k)*u(k,r);
end