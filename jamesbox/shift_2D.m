function f = shift_2D(m,n,dim)
% SHIFT rotates a vector
%
%	shift(V,N)
%
%	Matteo 95. Added negative shifts Dec 95.
% - modified jms to work on a 2D matrix (the shifted dimension must be
% specified)
f = zeros(size(m));

%m = m(:);
l = size(m,dim);


if n<0, n=l+n; end
if n>= l, error('shifting by too much.'); end

if dim == 1
    f(:,:) = [ m(l-n+1:l,:); m(1:l-n,:) ];
elseif dim ==2
    f(:,:) = [ m(:,l-n+1:l,:), m(:,1:l-n) ];
else
    error('only works for 2D matrices');
end

