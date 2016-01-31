% testp4:
%    Teste Differenzenquotienten

% function handles
f = @(x) exp(x);
df = @(x) exp(x);

hh=[]; ee=[];
fprintf('h    \t err  \n')
for h=0.1.^[0:15]
  err=abs(df(1)-diffquot(f,1,h));
  fprintf('%g \t %g \n',h,err)

  % speichere alle fehler und schrittweiten
  hh=[hh,h]; ee=[ee,err];
end

loglog(hh,ee,'r*',hh,hh,'k--');legend('error','h')

% Kommentar zum Plot:
% Der Fehler besteht aus zwei Komponenten
%    |dh(f) - f'| <= h |f''| + 2 eps/h 
% Fuer großes h dominiert der Approximationsfehler,
% bei kleinem h wird der verstärkte Rechenfehler dominant.
% Das opimale h liegt ca bei  h ~ sqrt(eps) ~1e-8.
% Vergleiche hierzu die Resultate aus der Vorlesung!