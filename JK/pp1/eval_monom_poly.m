% Eingabe
%			ai  = Koeffizienten
%			x = suazuwertende Stelle
%Ausgabe
%			r = Polynom an der Stelle x


function r = eval_monom_poly(ai,x)
	n = length(ai)-1;
	for j = 1:length(x)
		r(j) = ai(n+1);
		for i = n:-1:1
			r(j) = ai(i) + x(j) *r(j) ;
		end
	end
	
	
	