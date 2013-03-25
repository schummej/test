function peak_pt = peak_3D(x,dim);

%% this will find the index to the peak (largest) value in the input array, x
%% if there are multiple elements of x with the max value, it will return the first
%% -jms 19 june 03

[r,c] = find(x == max(x(:)));
r = min(r);
c = min(c);
peak_pt = [r,c];
%peak_pt = min(find(x == max(x)));


