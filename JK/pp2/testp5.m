for i = 0:3
  disp(['Aktuelles n: ' num2str(i)])
  [ti,wi] = gauss_rule(i)
end

%die Werte stimmen mit denen aus der Vorlesung überein.