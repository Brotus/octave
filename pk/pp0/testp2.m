% test2p.m
%    Teste Funktionalität von rdplus, tdmal, rddurch, rd_minus

fprintf('*** Teilaufgabe a ***\n')
for n=1:5
  for m=1:5
    a=0;
    for k=-n:0
      a=rdplus(a,10^k,m); 
    end
    fprintf('a(%d,%d)=%g\t',n,m,a); 
  end
  fprintf('\n')
end

fprintf('\n')

fprintf('*** Teilaufgabe b ***\n')
for h=0.1.^[1:5]
  for m=1:5
    b=rddurch(rdminus(rdplus(1,h,m),1,m),h,m);
    fprintf('b(%d,%d)=%g\t',n,m,b); 
  end
  fprintf('\n')
end

fprintf('\n')

fprintf('*** Teilaufgabe c ***\n')
for n=1:7
  for m=1:5
    c=1;
    for k=1:n
      c=rdmal(c,k,m); 
    end
    fprintf('c(%d,%d)=%g\t',n,m,c); 
  end
  fprintf('\n')
end
