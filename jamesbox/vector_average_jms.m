%%% function [OSI, PO] = vector_average_jms(R,theta)
%%% My original vector averaging function -- simpler than Valentin's
%%% Should work with any orientation resolution
%%% Should work for tuning curves, or for OI data
%%% -jms 15 July 02

function [OSI, PO] = vector_average_jms(R,theta)

theta = deg2rad(theta);
R = R(:);
theta = theta(:);
a = sum(R.*cos(2.*theta));
b = sum(R.*sin(2.*theta));
OSI = sqrt(a.^2+b.^2)./sum(R);

if(a>0 & b<0)
   PO = 180 + 0.5 .* rad2deg(atan(b./a));
elseif a>0
   PO =   0 + 0.5 .* rad2deg(atan(b./a));
elseif a<=0
   PO =  90 + 0.5 .* rad2deg(atan(b./a));
   
end


function y = rad2deg(x)
% Convert radians to degrees
y = x * (180/pi);