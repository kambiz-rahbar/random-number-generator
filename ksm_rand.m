function [rand_set] = ksm_rand(X, m, N)

n = length(X);

Y = zeros(N+n,1);
Y(1:n) = X;

for i = 1+n : N+n
    Y(i) = mod( (Y(i-1)+Y(i-n)), m);
end

rand_set = Y(n+1 : N+n);
