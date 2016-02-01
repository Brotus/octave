F=@(a) [2*a+sqrt(a.^2+0.04)-1.55;2*a+sqrt(a.^2+0.16)-1.65;2*a+sqrt(a.^2+0.36)-1.80];
DF=@(a) [2+a/sqrt(a^2+0.04);2+a/sqrt(a^2+0.16);2+a/sqrt(a^2+0.36)];
tol = 1e-10; maxit = 10; x0 = 0;
xsol=0.504752049128897;

[x,xk]=gaussNewton(F,DF,x0,tol,maxit);

n=size(xk,2);
ek=zeros(n,2);
for i=1:n
  ek(i,2)=norm(xsol-xk(:,i));
end
ek(:,1)=1:n;

fxk=xk;
for i = 1:n
  fxk(i)=f(xk(i));
end
f=@(x) (2*x+sqrt(x.^2+0.04)-1.55)^2+(2*x+sqrt(x.^2+0.16)-1.65)^2+(2*x+sqrt(x.^2+0.36)-1.80)^2;
[X,Y]=fplot(f,[0,1]);
%plot(xk,fxk)
xk'
fxk'