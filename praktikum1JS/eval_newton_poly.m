function r = eval_newton_poly (ci, xi, x)
% Eingabe:
%		ci = die Koeffizienten des Newton-Polynoms [c0,...,c_n]
%		xi = die Stützstellen [x0,...,x_{n-1}]
%		x  = die Stellen, an denen das Polynom ausgewertet wird (1xm)
% Rückgabe
%		r = Vektor der Funktionswerte des Newton-Polynoms an den x.
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
