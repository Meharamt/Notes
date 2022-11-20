clc;
clear;
f=@(x)(X^2-2)
a=1;b=2;
for i=1:3
    c=a - (a-b)/2;
    if f(b)*f(c)<0
        a=c;
    else
        b=c/2;
    end
end
disp(c)