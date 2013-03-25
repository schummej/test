function s = sum_n(x);

n = ndims(x);

if n == 2
    s = sum(sum(x));
elseif n == 3
    s = sum(sum(sum(x)));
elseif n ==4 
    s = sum(sum(sum(sum(x))));
elseif n ==5
    s = sum(sum(sum(sum(sum(x)))));
end

    