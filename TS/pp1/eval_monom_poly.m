function r = eval_monom_poly(ai,x)
% Wertet das Polynom p(x)=a0+a1x+...+anx^n aus
% Eingabe:	ai... Vektor der ai aus p(x)
%		       	x.... Vektor der auszuwertenden Stellen
% Ausgabe:	r.... Vektor der Ergebnisse
n = length(ai) - 1;
for j=1:length(x)
  r(j)=ai(n+1);
  for i=n:-1:1
    r(j)=ai(i)+x(j)*r(j);
  end
end
end