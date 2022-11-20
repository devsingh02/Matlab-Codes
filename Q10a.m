% Euler's

clc
clear all
f=@(t,y)-y+2*cos(t);
y(1)=1;
a=0;
b=1;
h=0.2;
t=a;
n=abs(b-a)/h;
for i=1:n
    t(i+1)=t(i)+h ;
    k1=h*f(t(i),y(i));
    k2=h*f(t(i)+h,y(i)+k1);
    y(i+1)=y(i)+(k1+k2)/2;
end
y
t