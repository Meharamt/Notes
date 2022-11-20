clear all
a=input('Enter the initial value a=')
b=input('Enter the initial value b=')
tol=input('Enter the tolerence= ')
f=@(x) x.^3+4.*x^2-10;  %we use '.' coz x is a vector
if f(a)*f(b) > 0
    disp('wrong choice of the initial condition')
else 
    p=(a+b)/2;
    e=abs(f(p))
    while e > tol
            if f(a)*f(p)<0
                b=p;
            else
                a=p;
            end
            p=(a+b)/2;
            e=abs(f(p));
    end
end
disp(p)