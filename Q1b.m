 % FIXED POINT ITERATION

clc
clear all

i=0;
N=10;
x0=1;
tol=0.001;

x=1:0.1:2;
g=@(x) tan(x)/4;

while i<=N
    x1=g(x0);
    if abs(x1-x0)<=tol
        fprintf('Solution of the given eqn. is %f',x1)
        break
    end
    x0=x1;
    i=i+1;
end

if i==N
    fprintf('Solution not found')
end
        