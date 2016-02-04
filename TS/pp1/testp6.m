z=0:0.1:5;
xi=[0:5];
% y der Lagrange-Polynome
y=eye(6);

for j=0:5
	% Speicher die Werte zum Ploten
	[newtonci(j+1,:), newtonxi(j+1,:)] = compute_newton_poly(xi,y(j+1,:));
end

figure
plot(z,eval_newton_poly(newtonci(1,:),newtonxi(1,:),z),'r',
z,eval_newton_poly(newtonci(2,:),newtonxi(2,:),z),'b',
z,eval_newton_poly(newtonci(3,:),newtonxi(3,:),z),'g',
z,eval_newton_poly(newtonci(4,:),newtonxi(4,:),z),'c',
z,eval_newton_poly(newtonci(5,:),newtonxi(5,:),z),'m',
z,eval_newton_poly(newtonci(6,:),newtonxi(6,:),z),'k')
legend('l_0(x)', 'l_1(x)', 'l_2(x)', 'l_3(x)', 'l_4(x)', 'l_5(x)', 'Location', 'northwest')
