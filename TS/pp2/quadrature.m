function r=quadrature(f,a,b,ti,wi)
% Berechne das numerische Integral
% Eingabe: 	f.... Funktion
% 			    a,b.. Integrationsgrenzen
%           ti... Stützstellen
%           wi... Integrationsgewichte
% Ausgabe: 	r.... Wert des Integrals
h = b-a;
sum = 0;
for i=1:length(wi)
  sum = sum + wi(i)*f(a+ti(i)*h);
end
r=h*sum;
end