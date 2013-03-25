function res = mylines(paras)

m1=paras(1);
b1=paras(2);
m2=paras(3);
b2=paras(4);

res = abs((m1*x + b1)-(m2*x + b2));