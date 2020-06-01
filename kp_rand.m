function [rand_set] = kp_rand(kernel1, kernel2, N)
    rand_set = zeros(N, 1);
    for i = 1:N
        [rand_set(i), kernel1, kernel2] = gen_rand(kernel1, kernel2);
    end
end

function [rand_num, kernel1, kernel2] = gen_rand(kernel1, kernel2)
    kernel_length1 = length(num2str(kernel1));
    kernel_length2 = length(num2str(kernel2));
    kernel_length = max(kernel_length1, kernel_length2);

    k = kernel1 * kernel2;
    k_str = num2str(k);

    idx1 = max(1, floor(kernel_length / 2));
    idx2 = idx1 + kernel_length-1;

    newkernel_str = k_str(idx1:idx2);

    kernel1 = kernel2;
    kernel2 = str2double( newkernel_str );

    rand_num = kernel2 / 10.^kernel_length;
end