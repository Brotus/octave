function r = eval_newton_poly (ci, xi, x)
	m = length(x)
	r = linspace(ci(1),ci(1),m)
	for i = 1:m
		for j = 2:length(xi)
			a = ci(j);
			for k = 1:(j-1)
				a = a * (x(i) - xi(k));
			end
			r(i)=r(i)+a;
		end
	end
endfunction
