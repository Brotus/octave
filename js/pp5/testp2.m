clc;
x0=2; f=@(x)cos(x); df=@(x) -sin(x); tol=1e-8; maxit=20;

[x1,xk1]=newton1d(f,df,x0,tol,maxit);
[x2,xk2]=secant(f,x0,tol,maxit);
disp(['newton1d solution = ', num2str(x1)]);
disp(['secant solution = ', num2str(x2)]);

x0=pi/2; % korrekte Loesung

disp('new k         err')
disp([(1:length(xk1))',abs(xk1'-x0)]);
disp('sec k         err')
disp([(1:length(xk2))',abs(xk2'-x0)]);

% Beide konvergieren schneller, als regulaFalsi. Das passt zu den theoretischen Aussagen,
% dass newton quadratisch konvergiert.