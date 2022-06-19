% Ben Juarez    PS3Q2c
clear;
alpha = 2;
beta = 6;
gamma = 2;
n = 10^4;

x = betarnd(alpha, beta, 1, n);
infected = 0;
exp = 0;

for i = 1:n
    q = x(i)^gamma;
    if q > rand() % if disease is contracted
        exp = exp + x(i); % tracks exposure levels
        infected = infected + 1; % tracks number of infected
    end
end
avg_x = exp/infected % calculates sample average of exposure level of those infected
E = (alpha + gamma) / (alpha + gamma + beta) % calculates result from (b)
%
% Result confirmed!
%