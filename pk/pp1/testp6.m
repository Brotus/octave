z=0:0.1:5;
xi=[0:5];
% y der Lagrange-Polynome
y=eye(6);

% Newtonkoeffizienten auswerten
for j=0:5
	[ci(j+1,:), xi(j+1,:)] = compute_newton_poly(xi,y(j+1,:));
end

% plot
figure
plot(z,eval_newton_poly(ci(1,:),xi(1,:),z),'r',
z,eval_newton_poly(ci(2,:),xi(2,:),z),'b',
z,eval_newton_poly(ci(3,:),xi(3,:),z),'g',
z,eval_newton_poly(ci(4,:),xi(4,:),z),'c',
z,eval_newton_poly(ci(5,:),xi(5,:),z),'m',
z,eval_newton_poly(ci(6,:),xi(6,:),z),'k')
legend('l_0(x)', 'l_1(x)', 'l_2(x)', 'l_3(x)', 'l_4(x)', 'l_5(x)', 'Location', 'northwest')