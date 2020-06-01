function [rand_set] = k2_rand(kernel, N)
    rand_set = zeros(N, 1);
    for i = 1:N
        [rand_set(i), kernel] = gen_rand(kernel);
    end
end

function [rand_num, kernel] = gen_rand(kernel)
    kernel_length = length(num2str(kernel));

    k2 = kernel^2;
    k2_str = num2str(k2);

    idx1 = max(1, floor(kernel_length / 2));
    idx2 = idx1 + kernel_length-1;

    newkernel_str = k2_str(idx1:idx2);

    kernel = str2double( newkernel_str );

    rand_num = kernel / 10.^kernel_length;
end