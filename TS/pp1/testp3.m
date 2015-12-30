f = @(x) exp(x);
k = 0:10;
h = 2.^(-k);

for n = 1:5
i = 0:n;
interfehler = [];
disp(['Aktuelles n: ' num2str(n)])
	for a = 1:length(h)
		% st bezeichnet den Vektor der Stuetzstellen
		% sw bezeichnet den Vektor der Stützwerte
		st = [];
		sw = [];
		x = [0:h(a)/10:n*h(a)];
		for b = 1:length(i)
			st(b) = i(b)*h(a);
			sw(b) = f(st(b));
		end
		% interpoly gibt das Interpolationspolynom zu aktuellen st, sw aus
		interpoly = compute_newton_poly(st,sw);
		% interfehler berechnet den Interpolationsfehler zum aktuellen h
		interfehler(a) =  max(abs(f(x) - eval_newton_poly(interpoly(1,1:length(i)),interpoly(1,length(i)+1:2*length(i)),x)));
		% eoc berechnet den eoc
		if a != 1
			eoc = log(interfehler(a-1)/interfehler(a)) / log(h(a-1)/h(a));
		else
			eoc = '-';
		end
		disp(['h=' num2str(h(a), '%8.5f') ' (b) Fehler=' num2str(interfehler(a),'%8.5e') ' (c) eoc=' num2str(eoc, '%8.5f')])
		disp(['(a) Polynom: ' num2str(interpoly, '%8.5f')])
	end
	disp('	')
end