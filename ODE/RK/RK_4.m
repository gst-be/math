syms x;
x=input('x0=');
y=input('y(x0)=');
f(x)=input('dy/dx=');
h=input('h=');
t=input('x_final=')-x/h;
K1=@(x,y) f(x,y);
K2=@(x,y) f(x+h/2,y+h/2*K1(x,y));
K3=@(x,y) f(x+h/2,y+h/2*K2(x,y));
K4=@(x,y) f(x+h,y+h*K3(x,y));
for i=1:t
    y=y+h/6*(K1(x,y)+2*K2(x,y)+2*K3(x,y)+K4(x,y));
    x=x+h;
    disp(['x' num2str(i) '=' num2str(roundn(x,-4))]);
    disp(['y*' num2str(i) '=' num2str(roundn(y,-4))]);
    ya=1/3*exp(-50*x)+x^2;
    disp(['y' num2str(i) '=' num2str(roundn(ya,-4))]);
    disp(['delta=' num2str(abs(ya-y))]);
end