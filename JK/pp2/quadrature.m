%Eingabe
%			f = zu integrierende funktion
%			a,b =  Integrationsgrenzen
%			ti = Stuetzstellen
%			wi = Integrationsgewichte
%Ausgabe
%			r = Integral von f auf [a,b]


function r = quadrature (f , a ,b , ti , wi)
	r = 0
	for i = 1:length(ti)
		r = r + wi(i)*f(a + ti(i)*(b-a));
	end
	r = r*(b-a);
end