clc;
clear;
a = [4 1 -1 1;1 4 -1 -1;-1 -1 5 1;1 -1 1 3];
B=[-2;-1;0;1];
x=[0;0;0;0];
n=4;
tol=0.00001;
err=1; 
while (norm(err,inf)>=tol)
    xold=x;
    for i=1:n
        sum=0;
        for j=1:i-1
                sum=sum+ (a(i,j)*x(j));
        end
        for j=i+1:n
                sum=sum+ (a(i,j)*xold(j));
        end
        x(i)=(B(i)-sum)/a(i,i);
        err=x-xold;
    end
end
x