% Diese Funktion berechnet mittels summierter Quadratur numerisch das Integral von f ueber z.
% Eingabe:    f ist der function handle der Funktion, die integriert werden soll
%             z=[z0,...,zm] ist eine Zerlegung des Intervals in Teilintervalle
%             ti ist ein Vektor der Stuetzstellen fuer die Quadratur
%             wi ist ein Vektor der Integrationsgewichte fuer die Stuetzstellen
% Ausgabe:		r ist das Ergebnis der summierten Quadratur
function r = sum_quadrature (f,z,ti,wi)
  r = 0;
  for i = 1:(length(z)-1)
    r = r + quadrature(f,z(i),z(i+1),ti,wi);
  end
