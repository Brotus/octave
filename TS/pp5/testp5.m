astar = 0.504752049128897;
F = @(a) [2*a + sqrt(a^2+0.04) - 1.55; 2*a + sqrt(a^2+0.16) - 1.65; 2*a + sqrt(a^2+0.36) - 1.8];
DF = @(a) [2 + a*(a^2+0.04)^(-1/2); 2 + a*(a^2+0.16)^(-1/2); 2 + a*(a^2+0.36)^(-1/2)];
x0 = 0;
tol = 10^-10; % Analog zu den anderen Tests

[a,ak] = gaussNewton(F,DF,x0,tol,30)

err=[];
for i=1:length(ak)
  err(i) = norm(astar - ak(i));
end
format short e
Table = [[1:length(ak)].', err.']
format short
% Konvergiert linear

f = @(x) (2*x+sqrt(x.^2+0.04) - 1.55).^2 + (2*x+sqrt(x.^2+0.16) - 1.65).^2 + (2*x+sqrt(x.^2+0.36) - 1.8).^2;
x = [0:0.01:1];
z = ak(1:6);

figure
plot(z,f(z),'or',x,f(x),'b')
legend('f(x_k)', 'f(x)', 'Location', 'northwest')