% testp1.m
%    teste rd() Funktion

fprintf('*** teste rd() Funktion ***\n')

help rd

fprintf('*** rd(pi) ***\n')
for m=1:5
  fprintf('rd(pi,%d)=%g\n',m,rd(pi,m))
end

fprintf('\n')

fprintf('*** rd(-sqrt(2) ***\n')
for m=1:5
  fprintf('rd(-sqrt(2),%d)=%g\n',m,rd(-sqrt(2),m))
end

fprintf('\n')

fprintf('*** rd(100.1) ***\n')
for m=1:5
  fprintf('rd(100.1,%d)=%g\n',m,rd(100.1,m))
end

fprintf('\n')

fprintf('*** rd(1e-12) ***\n')
for m=1:5
  fprintf('rd(1e-12,%d)=%g\n',m,rd(1e-12,m))
end

fprintf('\n')

fprintf('*** rd(0.123456789) ***\n')
for m=1:5
  fprintf('rd(0.123456789,%d)=%g\n',m,rd(0.123456789,m))
end
