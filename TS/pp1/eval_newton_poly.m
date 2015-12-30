function r = eval_newton_poly(ci,xi,x)
% Berechne Newton-Polynom an den Stellen x
% Eingabe: 	ci ... Vektor der ci
% 			xi ... Vektor der xi
%			x  ... Vektor der auszuertenden Stellen
% Ausgabe: 	r  ... Vektor der Ergebnisse des Polynoms p(x)
for k=1:length(x)
	r(k) = ci(1);
	for i=2:length(ci)
		mul = ci(i);
		for j=1:i-1;
			mul = mul*(x(k)-xi(j));
		end
		r(k) = r(k) + mul;
	end
end
end