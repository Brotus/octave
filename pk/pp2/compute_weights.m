function wi = compute_weights(ti)
% Eingabe: ti...Die Integrationstellen
% Ausgabe: wi...Die Integrationsgewichte 

% summe wi = 1
% summe wi*ti^k = 1/k+1 für alle 0 <= k <=m 
% Der Exaktheitsgrad hängt von der Anzahl Integrationstellen ab
m = length(ti);
M=ones(m); b=ones(m,1);
  for k = 1:m-1
    for j = 1:m
      M(k+1,j) = ti(j)^(k);
    end
    b(k+1)=1/(k+1);
  end
wi=M\b;