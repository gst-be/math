function sum=f_sum(A,x,i,n)
sum=0;
for j=i+1:n
    sum=sum+A(i,j)*x(j);
end