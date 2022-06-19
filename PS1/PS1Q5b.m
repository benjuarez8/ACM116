% Ben Juarez   ACM 116    PS1Q5b
clear;
N = 10^4;
X = zeros(N, 1);
for i = 1:N
    X(i) = expinv(rand, 5);
end
histogram(X, "Normalization", "pdf")
hold on
x = 0:0.1:75;
plot(x, exppdf(x, 5), 'red')
xlabel("x");
ylabel("probability");
title("Exponential Distribution");