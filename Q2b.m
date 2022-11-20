% SECANT'S METHOD

clc
clear all
syms x;
f=@(x)x.^2-17;
x0=0;
x1=1;
tol=10^(-5);
i=1;
n=10;
while(i<=n)
    x2=x1-((x1-x0)/(f(x1)-f(x0))*f(x1));
    if abs((x2-x1)/x2)<tol
        fprintf('The root is %f',x2)
        break;
    else
        x0=x1;
        x1=x2;
    end
i=i+1;
end