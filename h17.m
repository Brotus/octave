h=[];
int=[];
eoc=[];
t=[0 1/4 1/2 3/4 1];
w=[7/90 32/90 12/90 32/90 7/90];
for i=1:5
	h(i)=(1/2)^(i-1);
	int(i)=quadratur(@(x) exp(x),0,h(i),t,w);
	if i==1
		eoc(i)=0;
	else
		eoc(i)=log(int(i-1)/int(i))/log(h(i-1)/h(i));
	end
end
h
int
eoc