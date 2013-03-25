function m =  min_n(x);

n = ndims(x);

if n == 2
    m = min(min(x));
elseif n == 3
    m = min(min(min(x)));
elseif n ==4 
    m = min(min(min(min(x))));
elseif n ==5
    m = min(min(min(min(min(x)))));
end

    