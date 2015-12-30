function r = eval_monom_poly(ai,x)
% Wertet das Polynom p(x)=a0+a1x+...+anx^n aus
% Eingabe:	ai ... Vektor der ai aus p(x)
%		       	x  ... Vektor der auszuwertenden Stellen
% Ausgabe:	r  ... Vektor der Ergebnisse
for i=1:length(x)
	r(i) = ai(1);
	for j=2:length(ai)
		r(i) = r(i) + ai(j)*x(i)^(j-1);
	end
end