% Simpsons

clc
clear all

f=@(x)(exp(-x^2))*cos(x);
%f=@(x)(1/(x*log(x)))
a=-1; b=1; n=6;

h = abs((b-a)/n);

sum=0;
for i=1:n-1 % add all evens and odds
    x = a + h*i;
    if rem(i,2)==0
        sum=sum+2*f(x);
    else
        sum=sum+4*f(x);
    end
end
sum = (h/3) * (f(a)+f(b) + sum)