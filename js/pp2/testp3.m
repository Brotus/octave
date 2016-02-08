for n = 1:5
  ti = (0:n)/n;
  wi = compute_weights(ti);
  
  disp(['n = ', num2str(n)]);
  disp('    ti        wi');
  disp([ti',wi]);
end

% Die Integrationsgewichte stimmen mit denen aus dem Skript ueberein