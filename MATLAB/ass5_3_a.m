clc;
clear;
a = [10 8 -3 1;2 10 1 -4;3 -4 10 1;2 2 -3 10];
B=[16;9;10;11];
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