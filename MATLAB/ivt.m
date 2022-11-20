clc
clear all
n = input('Enter the number of iterations: ');
h = 1;
f=@(x) x.^2-2*x-6;
for i= -n:h:n+1
    if f(i)*f(i+h)<0
        a=i;
        b=i+h;
    end
end
fprintf("[%d,%d]\n",a,b);
