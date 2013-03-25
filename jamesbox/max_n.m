function m = max_n(x);

n = ndims(x);

if n == 2
    m = max(max(x));
elseif n == 3
    m = max(max(max(x)));
elseif n ==4 
    m = max(max(max(max(x))));
elseif n ==5
    m = max(max(max(max(max(x)))));
end

    