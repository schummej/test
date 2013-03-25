function peak_pt = peak(x);

%% this will find the index to the peak (largest) value in the input array, x
%% if there are multiple elements of x with the max value, it will return the first
%% -jms 19 june 03


peak_pt = min(find(x == max(x)));


