f=@(x)exp(x); a=0; n=5;
h = 2.^-(0:n);
r = zeros(3,n);

for i = 1:(n+1)
  b = h(i);
  
  % linksseitige Rechteckregel
  r(1,i) = quadrature(f,a,b,0,1);
  % Trapez-Regel
  r(2,i) = quadrature(f,a,b,[0,1],[1/2,1/2]);
  % Simpson-Regel
  r(3,i) = quadrature(f,a,b,[0,1/2,1],[1/6,4/6,1/6]);
end

disp(['rec','       ','tra','       ','sim']);
disp(num2str(r','%10f'));

tab = zeros(n+1,7);
tab(:,1)=h';

for i = 1:3
  for j = 1:(n+1)
		tab(j,2*i)=abs(r(i,j)-f(h(j))+f(a));
    if (j > 1)
			tab(j,2*i+1)=log(tab(j-1,2*i)/tab(j,2*i))/log(h(j-1)/h(j));
    else
      tab(j,2*i+1)=-1;
    end
  end
end
disp('');
disp('fehler & eoc');
disp('eoc == -1 means undefined')
disp(['h','         ','rec','       ','rec eoc','   ','tra','       ','tra eoc','   ','sim','       ','sim eoc']);
disp(num2str(tab,'%10f'));

% Die eocs von 2,3,5 stimmen mit denen aus der Vorlesung ueberein.