syms x;
x=input('x0=');
y=input('y(x0)=');
f(x,y)=input('dy/dx=');
h=input('h=');
t=input('x_final=')-x/h;
fp=@(x,y) y+h*f(x,y);
fc=@(x,y) y+h*f(x+h,fp(x,y));
for i=1:t
    y=1/2*(fp(x,y)+fc(x,y));
    x=x+h;
    disp(['x' num2str(i) '=' num2str(roundn(x,-4))]);
    disp(['y' num2str(i) '=' num2str(roundn(y,-4))]);
end
