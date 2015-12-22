m = zeros(5,1);
for n = 1:5
  ti = (0:n)/n;
  wi = compute_weights(ti);
  m(n) = determine_exactness_order(ti,wi);
endfor
m

% Die Exaktheitsgrade m(i) stimmen mit denen aus der Vorlesung ueberein.