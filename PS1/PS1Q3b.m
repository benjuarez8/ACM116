% Ben Juarez   ACM 116    PS1Q3b

line = zeros(1000,1);
X = zeros(1000,1);
sum = 0;
for i = 1:1000
    line(i) = 30;
    X(i) = binornd(100,0.3);
    sum = sum + X(i);
end
average = sum/1000
plot(X, 'blue', 'LineWidth', .5)
hold on 
plot(line, 'red', 'LineWidth', 5)
legend("E[X]", "Realizations of X");
ylabel("num heads");
xlabel("realizations");
%% 
%