function [x,er]=QuasiNewton(f,l,x0,tol,nmax) %l é o valor perto de 0
erro=tol+1; %para entrar no ciclo
i=1;
while erro>tol && i<nmax %condições do ciclo
    x1=x0-l*f(x0)/(f(x0+l)-f(x0));
    x(i)=x1; %guardar no vetor x
    erro=abs(x1-x0); %recalcular o erro
    er(i)=erro; %guardar o erro
    x0=x1; %renomear
    i=i+1; 
end
end
