V = [5,17,-3,8,0,-7,12,15,20,-6,6,4,-7,16];
n=length(V);
for k=1:n
    if V(k)>0 & ((rem(V(k),3)==0) | (rem(V(k),5)==0))
        V(k)=2*V(k);
    elseif V(k)<0 & V(k) > -5
        V(k)=V(k)^3;
    end
end
V