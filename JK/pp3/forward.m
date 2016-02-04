function y = forward (L,b)
% berechnet y zu Ly = b
% L		linke untere Dreiecksmatrix
% b		Lösung bzw rechte Seite der Gleichung
% Ausgabe: y, Lösung der Gleichung
y = zeros(size(b)(1),1);
for o = 1:size(b,2)
for i=1:size(b,1)
	for j=1:i-1
		b(i,o) = b(i,o) - L(i,j) * y(j,o);
	end
	y(i,o) = b(i,o) / L(i,i);
end
end
end