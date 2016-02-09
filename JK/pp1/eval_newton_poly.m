% Eingabe:
%			ci = Newton-Koeffizienten 
%			xi = Stützstellen
%			x = auszuwertende Stellen
%
% Ausgabe:
%			r = Interpolationspolynom an der Stelle x
%
%

function r = eval_newton_poly (ci, xi, x)
for k = 1:length(x)
	r(k) = ci(1);
	for i=2:length(ci)
		y = ci(i);
		for j = 1:i-1
			y = y *(x(k) - xi(j));
		end
		r(k) = r(k) + y;
	end
end
end