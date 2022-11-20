clc
clear
f = @(x) (x^2-17);
df= @(x) (2*x);
e=0.00001;
x0 =input("Enter Initial Approximation");
while df(x0)==0
    x0 =input("Enter Initial Approximation Again");
end
i=1;
N=input("Enter Maximum Iterations");
while i<=N
    x1=x0-f(x0)/df(x0);
    if abs(x1-x0)<=e
        fprintf("Root = %f and Iteration = %d",x1,i);
        break;
    end
        i=i+1;
        x0=x1;
end