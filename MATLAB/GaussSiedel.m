clc;
clear all;
A = [10, 8, -3,1; 2,10,1,-4; 3,-4, 10, 1; 2,2,-3, 10];
[n,~] = size (A);
B = [16; 9; 10; 11];
X = zeros (n, 1);
tol = 10^-3;
err = 1; 
while (norm (err, inf) >tol) 
    X0 = X; 
for i=1:n
    sum = 0;
    for j=1:n 
        if(i~=j)
            sum = sum + A(i, j)*X(j);
        end
    end
    X (i) = (B(i)-sum)/A (i, i); 
    err = abs (X (i) - X0 (i)); 
    XO (i) = X (i);
end
end
disp(X)