clc
clear
f = @(x) (x^3+4*x^2-10);
g= @(x) (0.5*sqrt(10-x^3));
e=0.001;
x0 =input("Enter Initial Approximation");
i=1;
N=20;
while i<=N
    x1=g(x0);
    if abs(x1-x0)<=e
        fprintf("Root = %f and Iteration = %d",x1,i);
        break;
    end
        i=i+1;
        x0=x1;
    if i==N
        fprintf("No Fixed point can be found by this iteration function\n");
    end
end