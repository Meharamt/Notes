clear;
clc;
C=[10 8 -3 1; 2 10 1 -4; 3 -4 10 1; 2 2 -3 10]
B=[16; 9; 10; 11]

A=[C B];
n=size(A,1);                                               
x=zeros(n,1);                                             
for i=1:n-1
    for j=i+1:n
        m = A(j,i)/A(i,i);
        A(j,:) = A(j,:) - m*A(i,:);
    end
end

x(n) = A(n,n+1)/A(n,n);

for i=n-1:-1:1
    sum = 0;
    for j=i+1:n
        sum = sum + A(i,j)*x(j,:);
        x(i,:) = (A(i,n+1) - sum)/A(i,i);
    end
end
x