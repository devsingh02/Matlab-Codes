% EULER's

clc
clear all

f=@(x,y) -y+2*cos(x);
a=0; b=1; h=0.2; n=abs((b-a)/h);
%y=zeros(n+1); % Matrix not necessary
x(1)=a; % x0
y(1)=1; % y0 % 2nd degree

% Replace y* with k
for i=1:n  % [x0,...n-1 terms...,b]  : TOTAL = n+1
    x(i+1)=x(i)+h;
    k = y(i) + h*f(x(i),y(i));  %1st degree
    y(i+1) = y(i) + (h/2)*(f(x(i),y(i)) + f(x(i+1),k));
end
for i=1:n+1
    fprintf('f(%f) = %f \n',x(i),y(i));
end

