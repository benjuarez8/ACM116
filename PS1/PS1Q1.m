% Ben Juarez   ACM 116    PS1

bday = ones(100, 1);
b = 1;
for n = 1:100
    b = b .* ((365-n+1)/365);
    bday(n) = 1 - b;
end

bday(55)
plot(1:1:100, bday)
xlabel("n");
ylabel("P(n)");
ylim([0 1.01]);
title("n random people vs chances of pair sharing bday");
snapnow