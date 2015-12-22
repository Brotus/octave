% Diese Funktion berechnet den Exaktheitsgrad einer linearen Quadraturformel.
% Eingabe:    ti ist ein Vektor der Stuetzstellen
%             wi ist ein Vektor der Integrationsgewichte
% Ausgabe:    m ist der Exaktheitsgrad der Quadraturformel
function m = determine_exactness_order (ti,wi)
  eps = 1e-14;
  a = 0; b = 1;
  
  m = 0;
  while 1
    f = @(x) x^m;
    err = abs(quadrature(f,0,1,ti,wi)-quad(f,0,1));
    if (err >= eps)
      break;
    else
      m = m + 1;
    endif
  endwhile
  m = m - 1;
endfunction
