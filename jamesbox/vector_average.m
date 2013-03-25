%% function [po1,osi] = vector_average(x,theta)
function [po1,osi] = vector_average(x,theta)
global po1
%% Cleaned up version of valentin's original t_str.m 
%% -jms 02


%x = x + abs(min(x));
%theta = 0:22.5:157.5; %resolution 22.5 deg

%z = mean(cat(2,x(1:8),x(9:16)),2)';
z = x;
a = sum(z.*cos(2*theta*pi/180)) ;
b = sum(z.*sin(2*theta*pi/180)) ;
m = sum(z);
%figure
%plot(theta,z)

if(a>0), 
   po1=0.5*180.*atan(b/a)./pi;
else 
   po1=90+0.5*180.*atan(b/a)./pi;
end

if(a>0 & b<0),
   po1=180+0.5*180*atan(b/a)./pi;
end

osi=sqrt(a*a+b*b)/m;

%disp('Orientation width is: '); 
osi;

%disp('Peak orientation is: '); 
po1;

%disp('Peak firing rate is: '); 
%max(y)


