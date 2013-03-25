function res = mygauss(paras, x)

a=paras(1);%% offset/baseline/DC
b=paras(2);%% amplitude/gain
c=paras(3);%% HW/sigma
d=paras(4);%% peak/phase/preferred ori

res = a + b*exp(-c*(x-d).^2);
%disp(['Width at half height is ' num2str(sqrt(log(2)*2)*c,3) ' deg']);
