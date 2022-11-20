clc;
clear all;
f=@(x)(cos(x))^2;
a=-0.25;
b=0.25;
N=4;
sum=0;
h=(b-a)/N;
for i = 1:N-1
    x=a+(h*i);
    sum=sum+(2*f(x));
end
sum=sum+f(a)+f(b);
ans= sum * (h/2);
ans