function sum=f_sum(A,x,i,n)
sum=0;
for j=1:n
    if j~=i
        sum=sum+A(i,j)*x(j);
    end
end
