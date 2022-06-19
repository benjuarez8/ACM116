% PS2Q6a
clear;
n = 10;
N = 10^3;
y = zeros(N, 1);
for i = 1:N
    y(i) = sqrt(n) .* mean(datasample([-1 1], n));
end

% PS2Q6b
figure
hold on
ecdf(y)
low = min(y);
high = max(y);
fplot(@(x) normcdf(x), [low high])
title("empirical CDF vs standard normal CDF for n = 10")
hold off

% PS2Q6c

% n = 100
n = 100;
for i = 1:N
    y(i) = sqrt(n) .* mean(datasample([-1 1], n));
end
figure
hold on
ecdf(y)
low = min(y);
high = max(y);
fplot(@(x) normcdf(x), [low high])
title("empirical CDF vs standard normal CDF for n = 100")
hold off

% n = 1000
n = 1000;
for i = 1:N
    y(i) = sqrt(n) .* mean(datasample([-1 1], n));
end
figure
hold on
ecdf(y)
low = min(y);
high = max(y);
fplot(@(x) normcdf(x), [low high])
title("empirical CDF vs standard normal CDF for n = 1000")
hold off

% n = 10000
n = 10000;
for i = 1:N
    y(i) = sqrt(n) .* mean(datasample([-1 1], n));
end
figure
hold on
ecdf(y)
low = min(y);
high = max(y);
fplot(@(x) normcdf(x), [low high])
title("empirical CDF vs standard normal CDF for n = 10000")
hold off