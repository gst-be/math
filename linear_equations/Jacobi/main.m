clear;clc

%% input
A=input('A=');
b=input('b=');
x=input('x0=');
k=input('k=');
n=size(A,1);

%% x(k+1)
for m=0:k
    for i=1:n
        x(i)=(b(i)-f_sum(A,x,i,n))./A(i,i);
    end
end

%% output
x
