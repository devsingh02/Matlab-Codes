% Newton Interpolation:

clc
clear all
x=[0,0.25,0.5,0.75];
f=[1,1.64872,2.71828,4.4816];
n=length(x);
DD=zeros(n);
DD(:,1)=f;
for j=2:n
    for i=j:n
        DD(i,j)=(DD(i,j-1)-DD(i-1,j-1))/(x(i)-x(i-j+1))
    end
end
p=0.43;
for k=1:n
    pro(k)=1;
    for j=1:k-1
        pro(k)=(p-x(j))*pro(k);
    end
end

       
 sum1=0;
 
    for k=1:n
        sum1=sum1+pro(k)*DD(k,k);
    end
    disp(sum1)