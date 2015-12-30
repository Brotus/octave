function a = compute_newton_poly(xi,yi)
% Berechne ci und xi des Newtonpolynoms
% Eingabe: 	xi... Stützstellen
% 			    yi... Stützwerte
% Ausgabe: 	ci... Koeffizienten 
%			      xi... Stützstellen
ci=yi; 
% divdiff aus der Vorlesung
for i=1:length(xi)-1 
	for j=length(xi):-1:i+1 
		ci(j)=(ci(j)-ci(j-1))/(xi(j)-xi(j-i)); 
	end 
end
a = [ci,xi];
end