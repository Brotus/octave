z=0:0.1:5.5;
xi=[0:5];

% Funktion um die yi zu bestimmen (Lagrange)
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
	newton(j+1,:) = compute_newton_poly(xi,y(j+1,:));
end

plot(z,eval_newton_poly(newton(1,1:6),newton(1,7:12),z),'r',
z,eval_newton_poly(newton(2,1:6),newton(2,7:12),z),'b',
z,eval_newton_poly(newton(3,1:6),newton(3,7:12),z),'g',
z,eval_newton_poly(newton(4,1:6),newton(4,7:12),z),'c',
z,eval_newton_poly(newton(5,1:6),newton(5,7:12),z),'m',
z,eval_newton_poly(newton(6,1:6),newton(6,7:12),z),'k')
legend('l_0(x)', 'l_1(x)', 'l_2(x)', 'l_3(x)', 'l_4(x)', 'l_5(x)', "Location", 'northwest')
