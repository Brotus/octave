function r=diffquot(f,x,h)
% function r=diffquot(f,x,h)
%    Berechne Vorwärtsdifferenzenquotient
%    Eingabe: f ... function handle
%             x ... Auswertungspunkt
%             h ... Schrittweite
%    Ausgabe: r ... Differenzenquotient

r=(f(x+h)-f(x))/h;