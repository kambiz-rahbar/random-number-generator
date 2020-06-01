function [rand_set] = klm_rand(X, m, a, C, N)

n = length(X);

Y = zeros(N+n,1);
Y(1:n) = X;

for i = 1+n : N+n
    Y(i) = mod( round(a * Y(i-1) + C), m);
end

rand_set = Y(n+1 : N+n);
