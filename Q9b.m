% Simpsons

clc;
clear all;
f=@(x)(exp(-x^2))*cos(x);
%f=@(x)(1/(x*log(x)))
a=-1;
b=1;
N=6;
h=abs((b-a))/N;
sum=0;

for(i=1:N-1)
    x=a+(i*h);
    if rem(i,2)==0
        sum=sum+2*f(x);
    else
        sum=sum+4*f(x);
    end
end
I=h/3*(f(a)+sum+f(b))