function x_intersect = intersect(BETA,BETA2)
%[BETA] = nlinfit(x,y1,'myline',[1 1]);
%res = myline(BETA,[0:.01:10]);
%[BETA2] = nlinfit(x,y2,'myline',[1 1]);
%res2 = myline(BETA2,[0:.01:10]);

b1 = BETA(2);
m1 = BETA(1);
b2 = BETA2(2);
m2 = BETA2(1);

%figure
%hold on
%plot(x,y1,'-o')
%plot(x,y2,'-ro')
%plot(0:.01:10,res)
%plot(0:.01:10,res2,'r')

x_intersect = (b2-b1)/(m1-m2);