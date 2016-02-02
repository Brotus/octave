for i = 0:3
  disp(['Aktuelles n: ' num2str(i)])
  [ti,wi] = gauss_rule(i)
end
% Vergleich: Die Werte stimmen mit der Tabelle auf Seite 55 des Skripts überein