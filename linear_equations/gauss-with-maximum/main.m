clear;clc
A=input('(A,b)=');
n=size(A,1);

for i=1:n
    [p,]=find(A(:,i)==max(A(i:n,i)),1);
    A([i p],:)=A([p i],:);
    for j=i+1:n
        A(j,:)=-A(j,i)/A(i,i)*A(i,:)+A(j,:);
    end
    disp(['(A(' num2str(i) '),b)=']);
    disp(A);
end

x(n,1)=0;
x(n)=A(n,n+1)/A(n,n);
for i=size(A,1)-1:-1:1
    x(i)=((A(i,n+1))-f_sum(A,x,i,n))/A(i,i);
end

disp(x);
        