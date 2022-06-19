% Ben Juarez   ACM 116    PS1Q4
clear;
A = [2,4,6];
B = [1,2,3,4];
a = zeros(10^4,1);
b = zeros(10^4,1);
ab = zeros(10^4,1);
N = 10^4;
for i = 1:N
    roll_dice = unidrnd(6);
    if ismember(roll_dice, A) == 1 && ismember(roll_dice, B) == 1
        ab(i) = 1;
    end
    if ismember(roll_dice, A) == 1
        a(i) = 1;
    end
    if ismember(roll_dice, B) == 1
        b(i) = 1;
    end
end
P_A = sum(a)/10^4
P_B = sum(b)/10^4
P_AB = sum(ab)/10^4
P_A_P_B = P_A * P_B % since P(A)P(B) is approx. P(AB), we arrive at desired verification.