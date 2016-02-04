function m = determine_exactness_order(ti,wi)
% Berechne den Exaktheitsgrad
% Eingabe: 	ti... Stützstellen
% 			    wi... Integrationsgewichte
% Ausgabe: 	m.... Exaktheitsgrad
m = -1;
j = 0;
while abs(quadrature(@(x) x^j,0,1,ti,wi) - 1/(j+1)) < 1e-5
  m = m + 1;
  j = j + 1;
end
end