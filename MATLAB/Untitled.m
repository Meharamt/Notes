f=@(x) x^2-17;
g=@(x) 2*x;
i=0;
x0=4;
x1=5;
N=input("Number of Times the iteration must be done :");
e=input("Accuracy :");
while(i<N)
    if(g(x0)==0)
    fprintf("Renter Value of x0")
    end
    if(g(x1)==0)
    fprintf("Renter Value of x1")
    end
    x2=x1-(f(x1)*(x1-x0))/(f(x1)-f(x0));
    if(abs(x2-x1)<e)
    disp(x2)
    disp(i+1)
    break;
    end
    i=i+1;
    x0=x1;
    x1=x2;
end
    if(i>=N)
    fprintf("Method fail for given iteration")
    end