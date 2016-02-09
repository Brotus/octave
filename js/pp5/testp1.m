clc;
% Teilaufgabe a

a=1;b=2;f=@(x)cos(x);tol=1e-8;
[x1,xk1]=bisection(f,a,b,tol);
[x2,xk2]=regulaFalsi(f,a,b,tol,10);
disp(['bisection solution = ', num2str(x1)]);
disp(['regulaFalsi solution = ', num2str(x2)]);
% |x-x*|<c*tol kann erwartet werden, weil die Verfahren konvergieren.

% Teilaufgabe b

x0=pi/2; % die tatsaechliche Loesung
disp('bis k         err')
disp([(1:length(xk1))',abs(xk1'-x0)]);
disp('reg k         err')
disp([(1:length(xk2))',abs(xk2'-x0)]);

% Teilaufgabe c
% Konvergenz besser as r-linear (bisection) und schlechter als quadratisch (newton),
% also superlinear.