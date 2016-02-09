ti = [];
for n = 1:5
	ti=[0:1/n:1];
	wi = compute_weights (ti);
	ex = determine_exactness_order(ti, wi);
	disp(['Aktuelles n: ' num2str(n)])
	disp(['Exaktheitsgrad: ' num2str(ex)])
end


%Die Ergebnisse stimmen mit den Aussagen aus der Vorlesung überein. (ex = n, falls n ungerade, n+1 falls n gerade)