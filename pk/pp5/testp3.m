% init
% vlg. http://www.wolframalpha.com/input/?i=%7B6a;++8b%7D+%3D+%7Bcos(a)%2B2*b;a*b%5E2%2Bsin(a)%7D
lsg = [0.171333648176476;0.021321814151372];
F = @(x) [6*x(1) - cos(x(1)) - 2*x(2); 8*x(2) - x(1)*x(2)^2 - sin(x(1))];
DF = @(x) [6+sin(x(1)), -2; -x(2)^2-cos(x(1)), 8-2*x(1)*x(2)];
x0 = [0;0];
tol = 10^(-10);

[x,xk] = newton(F,DF,x0,tol,30);
display('[x1, x2], [x1k, x2k] ')
display(x);
xk = xk';
display(xk)
xk = xk';

err=zeros(length(xk),1);
for i=1:size(xk,2)
  err(i) = norm(lsg-xk(:,i));
end
Error = [[1:size(xk,2)]', err];
disp('k | Fehler')
disp(Error)

% Die quadratische Konvergenz ist erkennbar.

%figure
%semilogy(Error(:,2),'.-')