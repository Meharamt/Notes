clc
clear all
a = input('Enter Initial value of a: ');
b = input("Enter Initial value of b: ");
f=@(x) x.^2-29;
if f(a)*f(b)>0
    disp("Wrong choice of initial condition")
else 
    p = (a+b)/2;
    e = abs(f(p));
    while e > 10^(-4)
        if f(a)*f(p)<0
            b = p;
        else 
            a = p;
        end
        p = (a+b)/2;
        e = abs(f(p));
    end
    
fprintf("Root of the given equation is %f\n",p)
end