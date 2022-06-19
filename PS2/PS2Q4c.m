% PS2Q4c
clear;
lambda = 1;
n = 100;
m = 120;
N = 10^4;
est = 0;

for i = 1:N
    s = sum(poissrnd(lambda, [1 n]));
    if (s >= m)
        est = est + 1;
    end
end

clt = 1 - normcdf(((m./n)-(lambda)) ./ (sqrt(lambda./n)) )
markov = (lambda .* n) / m
prob_estimate = est ./ N
% Clearly, it looks like Markov bound more loose while the CLT estimate is quite
% accurate.