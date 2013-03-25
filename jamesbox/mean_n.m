function m = mean_n(x);
%% calculates the global mean of N_dimensional matrixes (up to N = 5)
%% -jms 20 june 03

n = ndims(x);

if n == 2
    m = mean(mean(x));
elseif n == 3
    m = mean(mean(mean(x)));
elseif n == 4 
    m = mean(mean(mean(mean(x))));
elseif n == 5
    m = mean(mean(mean(mean(mean(x)))));
end

    