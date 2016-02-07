% Die xi und wi stimmen mit Tabelle 4.2 S. 55 im Skript ueberein.
for n = 0:3
  [ti,wi] = gauss_rule(n);
  disp(['n = ', num2str(n)]);
  disp('    ti        wi');
  disp([ti,wi]);
end