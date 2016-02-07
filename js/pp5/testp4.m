tol=1e-10;
x0=[0;0];
phi=@(x) [(cos(x(1))+2*x(2))/6;(x(1)*x(2)^2+sin(x(1)))/8];
maxit=8;
[x,xk]=banach(phi,x0,tol,maxit);

disp('solution');
disp(x);
disp('steps');
disp(xk');


xsol=[0.171333648176476,0.021321814151372]; % laut WolframAlpha
xsol2=[0.1739;0.0217]; % laut des Skriptes

n=size(xk,2);
ek=zeros(n,2);
for i=1:n
  ek(i,2)=norm(xsol2-xk(:,i));
end
ek(:,1)=1:n;

disp('    k         xk');
disp(ek);