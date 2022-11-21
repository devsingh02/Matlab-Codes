 %Numerical quadrature

clc
clear all

%f=@(x)(cos(x))^2
%f=@(x)(1/(x*log(x)))
syms x;
f=@(x) exp(-x^2)*cos(x);
a=-1; b=1; n=6;

h = abs((b-a)/n); % Steps

sum = (f(a)+f(b))/2;
for i=1:n-1  % Add Y1 + Y2 +...+ Yn-1
    x = a + h*i;    %*****
    sum = sum + f(x);
end
sum = sum * h;
fprintf('The value of the integral is %f', sum)

%{
sum=0;
for i=1:n-1  % Add Y1 + Y2 +...+ Yn-1
    x = a + h*i;
    sum = sum + 2*f(x);
end
sum = sum + f(a)+f(b);
ans=sum*(h/2);
fprintf('The value of the integral is %f',ans)
%}
