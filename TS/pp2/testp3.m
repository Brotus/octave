ti=[];
for n = 1:5
  for i = 0:n
    ti(i+1) = i/n;
  end
  wi = compute_weights(ti);
  disp(['Aktuelles n: ' num2str(n)])
  disp(['ti: ', num2str(ti, '%7.3f')])
  disp(['wi: ', num2str(wi, '%7.3f')])
end

% Vergleich: Sieht gut aus.