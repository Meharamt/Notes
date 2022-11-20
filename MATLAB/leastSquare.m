x=[-2 -1 0 1 2];
y=[15 1 1 3 19];
plot(x,y,'*')
n=length(x);
a=[n sum(x) ; sum(x) sum(x.^2) ];
b=[sum(y);sum(x.*y)];
X=inv(a)*b;
f=X(1)+X(2)*x;
hold on
plot(x,f)
aa=[n sum(x) sum(x.^2) ; sum(x) sum(x.^2) sum(x.^3) ; sum(x.^2) sum(x.^3);
sum(x.^4)];
bb=[sum(y) ; sum(x.*y) ; sum((x.^2).*y)];
XX=inv(aa)*bb;
gg=XX(1)+XX(2)*x+XX(3).*(x.^2);
hold on
plot(x,gg)