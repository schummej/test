x = 0:30:330;%%%  a set of data points x(1:ndata), y(1:ndata) 
y = spike_count(cen_tow_inds);
ndata = 12;
sig = spike_count_STD(cen_tow_inds);
ia = [1 1 1 1];
ma = 1:4;


funcs(x,a,yfit,dyda,ma)

[covari,alpha,chisq,alamda,a] = mrqmin(x,y,sig,ndata,a,ia,ma,nca,funcs,alamda,model)

a = [0 0 0 0];
alambda = -1;