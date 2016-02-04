function m = determine_exactness_order(ti,wi)
% Berechne den Exaktheitsgrad
% Eingabe: 	ti... Stützstellen
% 			    wi... Integrationsgewichte
% Ausgabe: 	m.... Exaktheitsgrad
j = 0;
while abs(quadrature(@(x) x^j,0,1,ti,wi) - 1/(j+1)) < 1e-12
  j = j + 1;
end
m = j-1;
end