ti = [];
for n = 1:5
	ti=[0:1/n:1];
	wi = compute_weights (ti);
	disp(['Aktuelles n: ' num2str(n)])
	disp(['ti: ', num2str(ti)])
	disp(['wi: ', num2str(wi)])
end

% die Ergebnisse stimmen mit denen aus der Vorlesung überein.