%%%%% Will scale any input matrix to values between 0 and 1.  Input may be either uint8 or double
%%%%% jms 26 Apr 01
function x = scale(y)

for i = 1:size(y,3)
    y(:,:,i) = double(y(:,:,i));
    minimum = min(min(y(:,:,i)));
    maximum = max(max(y(:,:,i)));
    if minimum > 0
       temp1 = y(:,:,i) - abs(minimum);
    else
       temp1 = y(:,:,i) - minimum;
    end
    temp2 = temp1./max(max(temp1));
    x(:,:,i) = temp2;
end
