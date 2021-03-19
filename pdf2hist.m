function h = pdf2hist(d,f)
% This function calculates the values of the h vector (percentange of appearance)
% and has length "n", given a d vector that defines the spaces has length "n+1"

%I nitialize the h vector with length "n"
h = ones(1, (length(d)-1));

% Given a function pointer f,this loop uses the numerical integration
% function "integral", to calculate the percentange of appearance of h(i) in
% the space (d(i),d(i+1))
for i = 1:(length(d)-1)
    h(i) = integral(f,d(i),d(i+1));
end

% Linear Normalization 
h=h./sum(h);

end

