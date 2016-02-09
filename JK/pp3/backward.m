function x = backward (R, y)
% berechnent Loesung x zu Rx=y
% Eingabe: R...regulare rechte obere nxn Dreiecksmatrix
% y...rechte Seite, nx1 Vektor
% Ausgabe x...Loesung, nx1 Vektor
m = size(y,2);
n=size(R,1);
x=0*y;

for o = 1:m
	for i=n:-1:1
		for j=i+1:n
			y(i,o)=y(i,o)-R(i,j)*x(j,o);
		end
		x(i,o)=y(i,o)/R(i,i);
	end
end	