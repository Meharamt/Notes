clc
clear
f = @(x) (x^2-17);
e=0.00001;
x0 =input("Enter Initial approximation");
x1 =input("Enter Second Approximation");
i=1;
N=input("Enter Maximum iterations");
while i<=N
    x2=x0-((x1-x0)/(f(x1)-f(x0)))*f(x0);
    if abs(x2-x1)<=e
        fprintf("Root = %f and Iteration = %d",x1,i);
        break;
    end
        i=i+1;
        x0=x1;
        x1=x2;
end