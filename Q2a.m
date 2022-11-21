% NEWTON'S METHOD

clc
clear all
syms x;     %enables differentiatioon
f=@(x)x.^2-17;
x0=1;
tol=10^(-5);
i=1;
n=10;
df=inline(diff(f(x)));
while i<=n
    x1=x0-(f(x0)/df(x0));
    if abs(x0-x1)<tol
        fprintf('The root is %f',x1)
        break;
    else
        x0=x1;
    end
i=i+1;
end