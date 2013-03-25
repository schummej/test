function linear_correlation_significance(r,n)
t = r*sqrt(n-2)/sqrt(1-r^2)
p = 1-tcdf(t,n-1)