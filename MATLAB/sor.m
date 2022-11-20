clc;
clear all;
A=[10,8, -3,1; 
   2,10,1,-4;
   3,-4, 10, 1;
   2,2,-3, 10];
[n,~]=size (A);
B=[16; 9; 10;11] ;
C = [A B]; 
x = zeros (n, 1);
w=1.2 ;
tol = 10^-3;
err = 1;
k=0;
while (norm (err, inf) >tol)
    xo = x; 
for i=1:n
    sum = 0;
    for j=1:n 
        if(i~=j)
            sum=sum + C(i, j)*x(j);
        end
    end
    x(i)= (1-w)*xo (i) +w*((C(i, n+1) - sum) /C (i, i)); 
    err = abs (x(i) - xo(i));
    xo (i) = x(i);
    k=k+1;
end
end
display (x);