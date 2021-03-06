lsg = 0.504752049128897;
F = @(a) [2*a + sqrt(a^2+0.04) - 1.55; 2*a + sqrt(a^2+0.16) - 1.65; 2*a + sqrt(a^2+0.36) - 1.8];
DF = @(a) [2 + a*(a^2+0.04)^(-1/2); 2 + a*(a^2+0.16)^(-1/2); 2 + a*(a^2+0.36)^(-1/2)];
x0 = 0;
tol = 10^-10; % Analog zu den anderen Tests

[a,ak] = gaussNewton(F,DF,x0,tol,30);
disp('a')
disp(a)
disp('ak')
ak = ak';
disp(ak)
ak=ak';

err=ak;
for i=1:length(ak)
  err(i) = norm(lsg - ak(i));
end
disp('k | Fehler')
Table = [[1:length(ak)].', err.'];
disp(Table)
% Konvergiert linear
%figure
%semilogy(1:length(err), err, '.-')

f = @(x) (2*x+sqrt(x.^2+0.04) - 1.55).^2 + (2*x+sqrt(x.^2+0.16) - 1.65).^2 + (2*x+sqrt(x.^2+0.36) - 1.8).^2;
x = [0:0.01:1];
z = ak;

[z; f(z)]'
figure
plot1 = subplot (3,1,1);
plot(plot1, z,f(z),'or',x,f(x),'b')
legend('f(x_k)', 'f(x)', 'Location', 'northwest')
plot2 = subplot (3,1,2);
x=0.5:0.001:0.51;
z=z(2:5);
plot(plot2, z,f(z),'or',x,f(x),'b')
legend('f(x_k)', 'f(x)', 'Location', 'northwest')
plot3 = subplot(3,1,3);
x=0.504752:0.0000001:0.504753;
z=z(2:4);
plot(plot3, z,f(z),'or',x,f(x),'b')
legend('f(x_k)', 'f(x)', 'Location', 'east')