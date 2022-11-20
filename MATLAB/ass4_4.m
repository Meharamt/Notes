clc;
pi=22/7; k=sqrt(2); l=sqrt(3); o=sqrt(5); e=2.718281828459045;
A=[pi k -1 1;e -1 1 2;1 1 -l 1;-1 -1 1 -o]
b=[0;1;2;3]
n=max(size(A));
m=eye(n);
for j=1:n-1
    if A(j,j)==0
        t=A(j,:)
        A(j,:)=A(i,:)
        A(i,:)=t;
    end
end
for j=1:n-1
    for i=j+1:n
        if(A(j,j)==0)
            fprintf('No unique solution exits');
            break;
        else
            m(i,j)=A(i,j)/A(j,j);
            A(i,:)=A(i,:)-m(i,j)*A(j,:);
            b(i,:)=b(i,:)-m(i,j)*b(j,:);
        end
    end 
end
U=A
L=m
x=zeros(n,1);
x(n,:)=b(n,:)/A(n,n);
for i=n-1:-1:1
    x(i,:)=(b(i,:)-A(i,i+1:n)*x(i+1:n,:))/A(i,i);
end
x