disp(['   h    ', 'FehlerR ', ' EOC R  ', 'FehlerT  ', ' EOC T  ', '   FehlerS    ', ' EOC S  '])
f = @(x) exp(x);
k = 0:5;
h = 2.^(-k);

% w und t zu Aufgabe (a)
wrec = [1];
trec = [0];
% w und t zu Aufgabe (b)
wtra = [0.5, 0.5];
ttra = [0, 1];
% w und t zu Aufgabe (c)
wsim = [1/6, 4/6, 1/6];
tsim = [0, 0.5, 1];
% leere Vektoren
richtig=[];
rechteck=[];  trapez=[];      simpson=[];
fehlerrec=[]; fehlertra=[];   fehlersim=[];
eocrec=[];    eoctra=[];      eocsim=[];
for i = 1:length(h)
  % a und b initialisieren
  a = 0;
  b = h(i);
  % Berechnungen
  richtig(i) = f(b) - f(a);
  % (a)
  rechteck(i) = quadrature(f,a,b,trec,wrec);
  fehlerrec(i) = abs(richtig(i) - rechteck(i));
  % (b)
  trapez(i) = quadrature(f,a,b,ttra,wtra);
  fehlertra(i) = abs(richtig(i) - trapez(i));
  % (c)
  simpson(i) = quadrature(f,a,b,tsim,wsim);
  fehlersim(i) = abs(richtig(i) - simpson(i));
  % eoc
  if i != 1
    eocrec(i) = log(fehlerrec(i-1)/fehlerrec(i)) / log(h(i-1)/h(i));
    eoctra(i) = log(fehlertra(i-1)/fehlertra(i)) / log(h(i-1)/h(i));
    eocsim(i) = log(fehlersim(i-1)/fehlersim(i)) / log(h(i-1)/h(i));
  else
    eocrec(i) = 0;
    eoctra(i) = 0;
    eocsim(i) = 0;
  end
  disp([num2str(h(i),'%8.5f'), ' ', num2str(fehlerrec(i),'%8.5f'), ' ', num2str(eocrec(i),'%8.5f'), ' ', num2str(fehlertra(i),'%8.6f'), ' ', num2str(eoctra(i),'%8.5f'), ' ', num2str(fehlersim(i),'%8.11f'), ' ', num2str(eocsim(i),'%8.5f')])
end
disp(['EOC von 0 bedeutet, dass er undefiniert ist.'])

% Die Konvergenzaussagen aus der Vorlesung, welche Exaktheitsgrad m+2 als Konvergenzordnung darstellen, bestätigen sich