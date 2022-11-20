clc;clear;
x=[2 3 4 5];
y=[27.8 62.1 110 161];
n=4;
plot(x,y,'*')
X=log(x);
Y=log(y);
M=[n sum(X); sum(x) sum(X.^2)];
N=[sum(Y); sum(X.*Y)];
A=X(1);
B=X(2);
a=exp(A);
b=exp(B);
hold on
f=a.*x.^b
plot(x,f)