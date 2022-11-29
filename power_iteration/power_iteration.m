%% Power iteration
clear;clc

%% input
A=input('A=');
x(:,1)=input('x0=');
kmax=input('k=');

%%
for k=1:kmax
    y(:,k)=A*x(:,k);
    m(:,k)=max(y(:,k));
    x(:,k+1)=y(:,k)./m(:,k);
end

%% output
disp(['lambda1=' num2str(m(:,kmax))]);
disp(['v1T=' num2str(x(:,kmax+1)')]);