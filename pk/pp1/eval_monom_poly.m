function r = eval_monom_poly (ai, x)
% Wertet das Polynom p(x)=a0+a1x+...+anx^n aus.
% Eingabe:	ai... Koeffizienten von p(x) [a0,...,an]
%		       	x.... Auszuwertende Stellen  [x0,...,xm]
% Ausgabe:	r.... Vektor der Ergebnisse  [r0,...,rm]
n = length(ai);
r = zeros(length(x));
for i = 1:length(x);
  r(i) = ai(n);
  for j = (n-1):-1:1;
    r(i) = ai(j)+x(i)*r(i);
  end
end  