clear;clc

%% input
A=input('A=');
b=input('b=');
n=size(A,1);

%%l
for i=1:n
    l(i,i)=1;
end

%% u1i lil
u(1,:)=A(1,:);
l(2:n,1)=A(2:n,1)./u(1,1);

%% uri lir
for r=2:n
    for i=r:n
        u(r,i)=A(r,i)-f_sum1(l,u,r,i);
        if i==r
            continue
        end
        l(i,r)=(A(i,r)-f_sum2(l,u,r,i))/u(r,r); 
    end
end

%% y
y(1)=b(1);
for i=2:n
    y(i)=b(i)-f_sum3(l,y,i);
end

%% x
x(n)=y(n)/u(n,n);
for i=n-1:-1:1
    x(i)=(y(i)-f_sum4(u,x,i,n))/u(i,i);
end

%% output
x