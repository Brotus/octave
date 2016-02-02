function r = sum_quadrature(f,z,ti,wi)
% Berechne das numerische summierte Integral
% Eingabe: 	f... Funktion
% 			    z... Zerlegung des Intervalls a,b (vgl. quadrature.m)
%           ti.. Stützstellen
%           wi.. Integrationsgewichte
% Ausgabe: 	r... Wert des Integrals
r = 0;
for i = 1:length(z)-1
  r = r + quadrature(f,z(i),z(i+1),ti,wi);
end
end