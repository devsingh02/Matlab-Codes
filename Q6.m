% Power Method

clc
clear all

A=[1,1,0,0;1,2,0,1;0,0,3,3;0,1,2,3];
x0=[1;1;0;1];

k0=1000;
tol=0.001;
j=1; N=3;

while j<=N
    y=A*x0;
    k=max(abs(y));
    x=(1/k)*y;
%     if (abs(k-k0)<tol)
%         break;
    fprintf('largest eigen value is %f',k)
    fprintf('corresponding eigen vector is')
    disp(x)
   
    x0=x
    k0=k;
    j=j+1;
end

% fprintf('largest eigen value is %f',k)
% fprintf('corresponding eigen vector is')
% disp(x)