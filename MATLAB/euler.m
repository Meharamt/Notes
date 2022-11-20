clc
clear all
f=@(t,y) ((cos(y))^2);
a=0;
b=1;
h=0.2;
n=(b-a)/h;
y(1)=0;
t(1)=0;
for i=1:n
    y(i+1)=y(i)+(h*f(t(i),y(i)));
    t(i+1)=t(i)+h;
end
t
y
