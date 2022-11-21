clc
clear ;
a = [4.63,-1.21,3.22; -3.07,5.48,2.11;1.26,3.11,4.57];
b = [2.22,-3.17,5.11];
n =length(b);
tol = 10^-5 ;
x = zeros(n,1) ;
x0 = zeros(n,1) ;
N = 1000;
for k = 1:N
    for i = 1:n
        x(i) = (b(i) - a(i,1:i-1)*x(1:i-1) - a(i,i+1:n)*x0(i+1:n))/a(i,i) ;
        if norm(x-x0)<tol
            break ;
        end
        x0 = x ;
    end
end
x