clc
clear
f = @(x) (2*sin(pi*x)+x);
g= @(x) (x-((2*sin(pi*x)+x)/(2*pi*cos(pi*x)+1)));
e=0.01;
x0=1;
while x0<=2
i=1;
N=15;
while i<=N
    x1=g(x0);
    if abs(x1-x0)<=e
        fprintf("Root = %f and Iteration = %d\n",x1,i);
        break;
    end
        i=i+1;
        x0=x1;
end
x0=x0+0.5;
end