% Diese Funktion wertet ein Polynom in Monom-Darstellung an einem Vektor aus.
% Eingabe:    ai=[a_0,...,a_n] sind die Koeffizienten, sodass das Polynom die Form a0+a_1*t+...+a_nt^n hat.
%              x=[x_0,...,x_m] sind die Stellen, an denen das Polynom ausgewertet werden soll.
function r = eval_monom_poly(ai,x)
  n = length(ai)-1;
  r = x;
  for j = 1:length(x)
    r(j) = ai(n+1);
    for i = n:-1:1
      r(j)=ai(i)+x(j)*r(j);
    endfor
  endfor
endfunction
