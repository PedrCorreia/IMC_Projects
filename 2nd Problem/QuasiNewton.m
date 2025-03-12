function [x,er]=QuasiNewton(f,l,x0,tol,nmax) %l é o valor perto de 0
tolr=tol+1; %para entrar no ciclo
i=1;
while tolr>tol && i<nmax %condições do ciclo
    x1=x0-l*f(x0)/(f(x0+l)-f(x0));
    x(i)=x1; %guardar no vetor x
    tolr=abs(x1-x0); %recalcular a tolerância
    x0=x1; %renomear
    i=i+1; 
end
i=i-1;
er=zeros(1,i); %guardar a estimativa do erro absoluto
for j=1:i
    er(j)=abs(x(j)-x(end));
end
end
