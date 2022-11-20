clc;
clear all;
f=@(x)(cos(x))^2;
a=-0.25;
b=0.25;
N=4;
sum=0;
h=(b-a)/N;
for i = 1:N-1
    r=rem(i,2);
    x=a+(h*i);
    if r==0
        sum=sum+(2*f(x));
    else
        sum=sum+(4*f(x));
    end
end
sum=sum+f(a)+f(b);
ans= sum * (h/3);
ans