for n = 1:5
  n
  ti = (0:n)/n;
  wi = compute_weights(ti);
  [ti',wi]
endfor

% Die Integrationsgewichte stimmen mit denen aus dem Skript überein