z=0:0.1:5;
xi=[0:5];
% y der Lagrange-Polynome
y=eye(6);

ci=zeros(6);
% Newtonkoeffizienten auswerten
for j=0:5
	[lci,lxi] = compute_newton_poly(xi,y(j+1,:));
    ci(j+1,:) =lci;
end

% plot
figure
hold on;
for i=1:6
plot(z,eval_newton_poly(ci(i,:),xi,z))
end
hold off;
legend('l_0(x)', 'l_1(x)', 'l_2(x)', 'l_3(x)', 'l_4(x)', 'l_5(x)', 'Location', 'northwest')