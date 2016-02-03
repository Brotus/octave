format short G
f = @(x) exp(x);
richtig = exp(1) - exp(0);
% w und t aus Aufgabe 1
wrec = [1];
trec = [0];
wtra = [0.5, 0.5];
ttra = [0, 1];
wsim = [1/6, 4/6, 1/6];
tsim = [0, 0.5, 1];
% verarbeitete Daten aus Aufgabe 2
z0 = [0,1];
z1 = [0,1/2,1];
z2 = [0,1/4,1/2,3/4,1];
z3 = zeros(1,2^3+1);
for i = 0:2^3
  z3(i+1) = i * 1/2^3;
end
z4 = zeros(1,2^4+1);
for i = 0:2^4
  z4(i+1) = i * 1/2^4;
end
z5 = zeros(1,2^5+1);
for i = 0:2^5
  z5(i+1) = i * 1/2^5;
end

% Aufgabe (a)
l = 0:5;
disp(['Aufgabe a  l', '     Rechteck', '     Trapez', '      Simpson'])
disp([l(1), sum_quadrature(f,z0,trec,wrec), sum_quadrature(f,z0,ttra,wtra), sum_quadrature(f,z0,tsim,wsim)])
disp([l(2), sum_quadrature(f,z1,trec,wrec), sum_quadrature(f,z1,ttra,wtra), sum_quadrature(f,z1,tsim,wsim)])
disp([l(3), sum_quadrature(f,z2,trec,wrec), sum_quadrature(f,z2,ttra,wtra), sum_quadrature(f,z2,tsim,wsim)])
disp([l(4), sum_quadrature(f,z3,trec,wrec), sum_quadrature(f,z3,ttra,wtra), sum_quadrature(f,z3,tsim,wsim)])
disp([l(5), sum_quadrature(f,z4,trec,wrec), sum_quadrature(f,z4,ttra,wtra), sum_quadrature(f,z4,tsim,wsim)])
disp([l(6), sum_quadrature(f,z5,trec,wrec), sum_quadrature(f,z5,ttra,wtra), sum_quadrature(f,z5,tsim,wsim)])
disp('  ')

% Aufgabe (b)
h = 2.^(-l);
disp('Aufgabe b')

frec = [abs(richtig - sum_quadrature(f,z0,trec,wrec)), abs(richtig - sum_quadrature(f,z1,trec,wrec)), abs(richtig - sum_quadrature(f,z2,trec,wrec)), abs(richtig - sum_quadrature(f,z3,trec,wrec)), abs(richtig - sum_quadrature(f,z4,trec,wrec)), abs(richtig - sum_quadrature(f,z5,trec,wrec))];
ftra = [abs(richtig - sum_quadrature(f,z0,ttra,wtra)), abs(richtig - sum_quadrature(f,z1,ttra,wtra)), abs(richtig - sum_quadrature(f,z2,ttra,wtra)), abs(richtig - sum_quadrature(f,z3,ttra,wtra)), abs(richtig - sum_quadrature(f,z4,ttra,wtra)), abs(richtig - sum_quadrature(f,z5,ttra,wtra))];
fsim = [abs(richtig - sum_quadrature(f,z0,tsim,wsim)), abs(richtig - sum_quadrature(f,z1,tsim,wsim)), abs(richtig - sum_quadrature(f,z2,tsim,wsim)), abs(richtig - sum_quadrature(f,z3,tsim,wsim)), abs(richtig - sum_quadrature(f,z4,tsim,wsim)), abs(richtig - sum_quadrature(f,z5,tsim,wsim))];
for i = 1:length(h)
  if i != 1
    eocrec(i) = log(frec(i-1)/frec(i)) / log(h(i-1)/h(i));
    eoctra(i) = log(ftra(i-1)/ftra(i)) / log(h(i-1)/h(i));
    eocsim(i) = log(fsim(i-1)/fsim(i)) / log(h(i-1)/h(i));
  else
    eocrec(i) = 0;
    eoctra(i) = 0;
    eocsim(i) = 0;
  end
end
disp('Linksseitige Rechteckregel')
Sol1 = [h; frec; eocrec];
Sol1
disp('  ')

disp('Trapezregel')
Sol2 = [h; ftra; eoctra];
Sol2
disp('  ')

disp('Simpsonregel')
Sol3 = [h; fsim; eocsim];
Sol3
disp('  ')

disp(['EOC von 0 bedeutet, dass er undefiniert ist. Die erste Zeile ist h, die Zweite der Fehler und die Dritte der EOC.'])

% Aufgabe (c)
semilogy(h,frec,'r', h,ftra,'b', h,fsim,'g')
xlabel('h')
ylabel('Fehler')
legend('Rechteckregel', 'Trapezregel', 'Simpsonregel', "Location", 'northwest')