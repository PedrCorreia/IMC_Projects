function [x,er]=QuasiNewton(f,l,x0,tol,nmax) %l is the value near 0
tolr=tol+1; %so it enters the cycle
i=1;
while tolr>tol && i<nmax %conditions for while cycle
x1=x0-l*f(x0)/(f(x0+l)-f(x0));
x(i)=x1; %save in x array
tolr=abs(x1-x0); %recalculate tolerance
x0=x1; %rename
i=i+1;
end
i=i-1;
er=zeros(1,i); %save the estimation of absolute error
for j=1:i
er(j)=abs(x(j)-x(end));
end
end