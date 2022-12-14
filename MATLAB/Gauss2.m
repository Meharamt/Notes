clc
clear
A=[pi sqrt(2) -1 1 ; exp(1) -1 1 2 ; 1 1 -sqrt(3) 1; -1 -1 1 -sqrt(5)];
b=[0 ; 1 ; 2 ; 3];
n=max(size(A)) ;
m = eye(n);

for j=1:n-1
    for i=j+1:n
        m(i,j)=A(i,j)/A(j,j);   
        A(i,:)=A(i,:)-m(i,j)*A(j,:);
        b(i,:)= b(i,:) - m(i,j)*b(j,:);
    end
end
U = A
L = m
x=zeros(n,1);
x(n,:)=b(n,:)/A(n,n);
for i=n-1:-1:1
    x(i,:)=(b(i,:)-A(i,i+1:n)*x(i+1:n,:))/A(i,i);
end
for i=1:n
fprintf("x%d = %f\n",i,x(i,:));
end