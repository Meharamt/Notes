% Plot the function y = 3x^3-26x+10 and its first and second derivatives in
% -2<=x<=4
x = [-2:0.01:4];
y = 3*x.^3-26*x+10;
yd = 9*x.^2-26;
ydd = 18*x;
plot(x,y,'-b',x,yd,'--r',x,ydd,'-.k')
% hold on
% plot(x,yd,'--r')
% plot(x,ydd,'-.k')
% hold off

%fplot(@ (x) 3*x.^3-26*x+10, [-2,4])