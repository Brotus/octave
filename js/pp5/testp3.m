tol=1e-10;
F=@(x) [6*x(1)-cos(x(1))-2*x(2);8*x(2)-x(1)*x(2)^2-sin(x(1))];
DF=@(x) [6+sin(x(1)),-2;-x(2)^2-cos(x(1)),8-2*x(1)*x(2)];
x0=[0;0];
maxit=20;

[x,xk]=newton(F,DF,x0,tol,maxit);
xsol=[0.171333648176476;0.021321814151372];
disp('solution');
disp(x);
disp('steps');
disp(xk');

n=size(xk,2);
ek=zeros(n,2);
for i=1:n
  ek(i,2)=norm(xsol-xk(:,i));
end
ek(:,1)=1:n;
disp('    k         err');
disp(ek);

% konvergenzverhalten

ekquot = ek;
for i = 1:(size(ekquot,1)-1)
    ekquot(i,2)=ekquot(i+1,2)/ekquot(i,2);
end
disp(ekquot)
% mindestens superlineare konvergenz

for i = 1:(size(ekquot,1)-1)
    ekquot(i,2)=ekquot(i+1,2)/ekquot(i,2)^2;
end
disp(ekquot)
% sieht quadratisch aus