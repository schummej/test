function out = scale(in,l,u);

MAX = max(in(:));
MIN = min(in(:));
% if(MIN<0)
%     disp('fuck, I forget how to deal with this')
%     return
% end

out = in;
out = out-MIN;
MAX = max(out(:));
out = out./MAX;


