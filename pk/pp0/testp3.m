% testp3.m
%    Bestimme Maschinengenauigkeit

for n=1:1000
  if 1+10^(-n)==1, %% hier soll wirklich auf bitweise gleich abgefragt werden!
     break; 
  end
end
fprintf('Maschinengenauigkeit: %d Stellen\n',n)
fprintf('Maschinen-epsilon = %g\n',eps)


