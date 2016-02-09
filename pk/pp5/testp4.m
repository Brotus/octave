%init
lsg = [0.171333648176476;0.021321814151372];
Phi = @(x) [1/6*(cos(x(1))+2*x(2)); 1/8*(x(1)*x(2)^2+sin(x(1)))];
x0 = [0; 0];
tol = 10^(-10);
maxit = 30;

[x,xk] = banach(Phi, x0,tol,maxit);
disp('[x1, x2]')
disp(x)
xk = xk';
disp('[xk1, xk2]')
disp(xk);
xk = xk';

err=[];
for i=1:size(xk,2)
  err(i) = norm(lsg-xk(:,i));
end
display('k | Fehler')
display([[1:size(xk,2)]; err]')

%figure
%semilogy(1:length(err), err, '.-')
% Die lineare Konvergenz ist erkennbar.