z=0:0.1:5.5;
xi=[0:5];

% Hilfsfunktion um die yi zu bestimmen (Lagrange)
function l=lagrange(x,xi,j)
l=1;
for i=1:length(xi)
	if i == j+1
		l = l;
	else
		l = l*(x-xi(i))/(xi(j+1)-xi(i));
	end
end
end

for j=0:5
	for i=0:5
		% Berechne das j-te Polynom an allen i
		y(j+1,i+1) = lagrange(i,xi,j);
	end
	% Speicher die Werte zum Ploten
	[newtonci(j+1,:), newtonxi(j+1,:)] = compute_newton_poly(xi,y(j+1,:));
end

plot(z,eval_newton_poly(newtonci(1,:),newtonxi(1,:),z),'r',
z,eval_newton_poly(newtonci(2,:),newtonxi(2,:),z),'b',
z,eval_newton_poly(newtonci(3,:),newtonxi(3,:),z),'g',
z,eval_newton_poly(newtonci(4,:),newtonxi(4,:),z),'c',
z,eval_newton_poly(newtonci(5,:),newtonxi(5,:),z),'m',
z,eval_newton_poly(newtonci(6,:),newtonxi(6,:),z),'k')
legend('l_0(x)', 'l_1(x)', 'l_2(x)', 'l_3(x)', 'l_4(x)', 'l_5(x)', "Location", 'northwest')
