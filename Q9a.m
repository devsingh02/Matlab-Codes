%Numerical quadrature

clc
clear all
%f=@(x)(cos(x))^2
%f=@(x)(1/(x*log(x)))
f=@(x)(exp(-(x.^2)))*cos(x)
%a=input('enter a')
%b=input('enter b')
a=-1;
b=1;
n=6;
h=abs((b-a))/n;
sum=0;
for i=1:n-1
    x=a+h*i;
    sum=sum+2*f(x);
end
sum=sum+f(a)+f(b);
ans=sum*(h/2);
fprintf('The value of the integral is %f',ans)