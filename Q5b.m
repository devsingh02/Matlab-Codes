clc
clear ;

n = 4 ;
a = [10 8 -3 1 ; 2 10 1 -4 ; 3 -4 10 1 ; 2 2 -3 10];
b = [16 9 10 11];
w = input('Enter the relaxation factor w  ');
tol = 1e-5 ;
x = zeros(n,1) ;
x0 = zeros(n,1) ;
N = 1000 ;

for k = 1:N
    for i = 1:n
         x(i) =((b(i) - a(i,1:i-1)*x(1:i-1) - a(i,i+1:n)*x0(i+1:n))/a(i,i))*w+(1-w )*x0(i);
         if norm(x-x0)<tol
            
            break ;
        end
        
    
    x0 = x ;
    
    end
end
x