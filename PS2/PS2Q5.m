% PS2Q5a
b = 1;
a = 0;
N = 100;
sum = 0;
for i = 1:N
    sum = sum + rand()^3;
end
I_a = (b - a) ./ N .* sum

% PS2Q5b
alpha = 4;
beta = 1;
x = betarnd(alpha, beta);
% We know g(x) = x^3.
% For f(x | alpha, beta), we have the following:
%   (alpha + beta - 1)! / [(alpha - 1)!  (beta - 1)!] = 4! / 3! = 4
%   x^(alpha - 1) = x^3
% So, we have that f(x) must be 4x^3.  
% Clearly, for one sample, we have g(x)/f(x) = 1/4 = 0.25.
I_b = x^3 / betapdf(x, 4, 1)