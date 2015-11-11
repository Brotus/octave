h=[];
int=[];
trueint=[];
eoc=[];
t=[0 1/4 1/2 3/4 1];
w=[7/90 32/90 12/90 32/90 7/90];
for i=1:5
	h(i)=(1/2)^(i-1);
	int(i)=quadratur(@(x) exp(x),0,h(i),t,w);
	trueint(i)=exp(h(i))-exp(0);
	if i==1
		eoc(i)=0;
	else
		eoc(i)=log(abs(int(i-1)-trueint(i-1))/abs(int(i)-trueint(i)))/log(h(i-1)/h(i));
	end
end
h
int
trueint
eoc