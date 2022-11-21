% POWER

clc
clear all

A = [4,1,0; 1,20,1; 0,1,4]
Y0 = [1; 1; 1]

K0 = 1000;  % dummy value to run the iteration (while) atleast once.
%n = size(A,1) % 1=rows, 2=col, 3=z-axis
tol = 0.001;
i = 1; maxit = 100;

while i<=maxit
    Y = A*Y0;   % Matrix Multiplication
    K1 = max(abs(Y));   % |Max element in Y|
    Z = (1/K1)*Y;   % Basically took Max element common from Y
    
    if abs(K1 - K0) < tol  % consecutive Eigen-values/vectors should be =
        break;
    else
        Y0 = Z;
        K0 = K1;
        i = i+1;
    end
end
fprintf('Eigen value = %f \nEigen Vector :\n', K1)
disp(Z)
    