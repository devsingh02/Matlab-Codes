%Kutta

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
    k2=h*f(t(i)+(h/2),y(i)+(k1/2));
    k3=h*f(t(i)+(h/2),y(i)+(k2/2));
    k4=h*f(t(i)+h,y(i)+k3);
    k=(k1+2*(k2+k3)+k4)/6;
    y(i+1)=y(i)+k;
end
y
k