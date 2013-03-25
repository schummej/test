function res = mygamma(paras,x)

a = paras(1);
%b = paras(2);
%c = paras(3);
%res = b*x.^a+x.^c;
%res = b * x.^a + c;
%res = b * (x+c).^a ;
res = (x-x(1)).^a;