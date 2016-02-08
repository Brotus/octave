f=@(x) exp(x);
sums = zeros(6,3);
err = sums;
eoc = -1*ones(6,3);
h=2.^(-[0:5]);
% Teilaufgabe a
for l=0:5
	hl=h(l+1);
	i=0:(2^l);
	z=i.*hl;
	tiRect=0;
	wiRect=1;
	tiTrap=[0,1];
	wiTrap=[1/2,1/2];
	tiSimp=[0,1/2,1];
	wiSimp=[1/6,4/6,1/6];
	sums(l+1,1)=sum_quadrature(f,z,tiRect,wiRect);
	sums(l+1,2)=sum_quadrature(f,z,tiTrap,wiTrap);
	sums(l+1,3)=sum_quadrature(f,z,tiSimp,wiSimp);
end

% Teilaufgabe b
z=(exp(1)-1)*ones(6,3);
err=abs(sums-z);


for i = 2:6
	for j = 1:3
		eoc(i,j)=log(err(i-1,j)/err(i,j))/log(2);
	end
end

% Ausgabe a & b

% 1. Spalte, (l+1)-te Zeile: l-te summierte Quadratur, linksseitige Rechtecksregel
% 2. ...																							 Trapezregel
% 3. ...																							 Simpson-Regel
disp(['rec','       ','tra','       ','sim']);
disp('sums:');
disp(num2str(sums,'%10f'));
disp('errors:');
disp(num2str(err,'%10f'));
disp('eoc');
disp(num2str(eoc,'%10f'));

% Teilaufgabe c
loglog(h,err(:,1),'r', h,err(:,2),'b', h,err(:,3),'g')
xlabel('h')
ylabel('Fehler')
legend('Rechteckregel', 'Trapezregel', 'Simpsonregel', 'Location', 'northoutside')


% Die Steigung der Gerade ist die Konvergenzrate.