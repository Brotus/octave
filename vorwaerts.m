function y=vorwaerts(L,b)
% berechnet y zu Ly = b
% L		linke untere Dreiecksmatrix
% b		Lösung bzw rechte Seite der Gleichung
% Ausgabe: y, Lösung der Gleichung
y = zeros(size(b)(1),1);
for i=1:size(b)(1)
	for j=1:i-1
		b(i) = b(i) - L(i,j) * y(j);
	end
	y(i) = b(i) / L(i,i);
end
end