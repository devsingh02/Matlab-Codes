% Kutta

clc
clear all

f=@(x,y) -y+2*cos(x);
a=0; b=1; h=0.2; n=abs((b-a)/h);

x(1)=a;
y(1)=1;
for i=1:n   % [y1(1), y2, y3, y4,...yn+1] : index 1 -> x0, y0 which we already have
    k1 = h*f(x(i),y(i));
    k2 = h*f(x(i)+h/2,y(i)+k1/2);
    k3 = h*f(x(i)+h/2,y(i)+k2/2);
    k4 = h*f(x(i)+h,y(i)+k3);
    y(i+1) = y(i)+(k1+2*(k2+k3)+k4)/6;
    x(i+1) = x(i) + h;
    
end
for i=1:n+1
    fprintf('f(%f) = %f \n',x(i),y(i));
end

%{
Better to declare :
x=zeros(n+1);
y=zeros(n+1);
above
%}

