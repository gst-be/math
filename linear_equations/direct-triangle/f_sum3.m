function sum=f_sum3(l,y,i)
sum=0;
for k=1:i-1
    sum=sum+l(i,k)*y(k);
end