%init
x0=2; f=@(x)cos(x); df=@(x) -sin(x); tol=1e-8; maxit=20;

[x1,xk1]=newton1d(f,df,x0,tol,maxit);
[x2,xk2]=secant(f,x0,tol,maxit);
disp(['newton1d solution = ', num2str(x1)])
disp(['secant solution = ', num2str(x2)])

x0=pi/2; % korrekte Loesung

disp('new k | err')
Tab1 = [(1:length(xk1))',abs(xk1'-x0)]
disp('sec k | err')
Tab2 = [(1:length(xk2))',abs(xk2'-x0)]

% Das Sekantenverfahren konvergiert superlinear, Newton konvergiert
% quadratisch, man sieht dass Newton schneller konvergiert.
%figure
%itrvl = [1:4];
%semilogy(Tab1(itrvl,1),Tab1(itrvl,2),'.-',Tab2(itrvl,1),Tab2(itrvl,2))