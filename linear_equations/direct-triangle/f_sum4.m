function sum=f_sum4(u,x,i,n)
sum=0;
for k=i+1:n
    sum=sum+u(i,k)*x(k);
end