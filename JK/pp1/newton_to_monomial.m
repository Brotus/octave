%Eingabe:
%			ci = newton koeffizienten
%			xi = Stützstellen
%Ausgabe:
%			a = Koeffizienten in Monomdarstellung

function a = newton_to_monomial(ci, xi)
	[L,U] = lu(fliplr(vander(xi)).');
a = (((L.')^(-1))*(ci.')).';
end