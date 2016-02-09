% Eingabe:
%			xi = die Stützstellen
%			yi = Stützwerte
%Ausgabe:
%			ci = die zu berechnenden Koeffizienten
%			xi = die Stützstellen


function [ci, xi] = compute_newton_poly (xi, yi)

m=length(xi);
ci = yi;
for i=1:m-1
	for j=m:-1:i+1
		ci(j)=(ci(j)-ci(j-1))/(xi(j)-xi(j-i));
	end
end
