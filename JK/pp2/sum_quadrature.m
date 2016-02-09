%Eingabe
%			f = zu integrierende funktion
%			z = zerlegtes Intervall
%			ti = Stuetzstellen
%			wi = Integrationsgewichte
%Ausgabe
%			r = Integral von f auf [a,b]



function r = sum_quadrature (f, z, ti, wi)
	r = 0
	for i = 1:length(z)-1
		r = r + quadrature(f, z(i), z(i+1) , ti, wi);
	end