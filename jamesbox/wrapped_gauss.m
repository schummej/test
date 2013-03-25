function f = wrapped_gauss(pars)
oris = -90:90;

Dp = pars(1); Rp = pars(2); Rn = pars(3); Ro = pars(4); sigma = pars(5);

anglesp = 180/pi*angle(exp(i*(oris-Dp)    *pi/180));
anglesn = 180/pi*angle(exp(i*(oris-Dp+180)*pi/180));

f = Ro +...
  Rp*	exp( -anglesp.^2 ./ (2 * sigma^2)) + ...
  Rn*	exp( -anglesn.^2 ./ (2 * sigma^2));

