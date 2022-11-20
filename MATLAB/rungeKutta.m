clc
clear all
f=@(t,y) ((cos(y))^2);
a=0;
b=1;
h=0.2;
n=(b-a)/h;
y(1)=0;
t(1)=a;
for i=1:n
    k1=h*f(t(i),y(i));
    k2=h*f((t(i)+(h/2)),(y(i)+(k1/2)));
    k3=h*f((t(i)+(h/2)),(y(i)+(k2/2)));
    k4=h*f((t(i)+h),(y(i)+k3));
    y(i+1)=y(i)+((k1+2*k2+2*k3+k4)*(1/6));
    t(i+1)=t(i)+h;
end
t
y