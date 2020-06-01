clc
clear

kernel1 = 5194;
kernel2 = 6112;
N = 10;
X = [27];
p = 2;
w = 32;
C = 43;

a = 17;
%a = sqrt(m);

m = 100;
%m = p^w;

rand_set1 = k2_rand(kernel1, N);
rand_set2 = kp_rand(kernel1, kernel2, N);
rand_set3 = ksm_rand(X, m, N);
rand_set4 = klm_rand(X, m, a, C, N);


xcorr_rand_set1 = xcorr(rand_set1, rand_set1);
xcorr_rand_set1 = xcorr_rand_set1/xcorr_rand_set1(N);

xcorr_rand_set2 = xcorr(rand_set2, rand_set2);
xcorr_rand_set2 = xcorr_rand_set2/xcorr_rand_set2(N);

xcorr_rand_set3 = xcorr(rand_set3, rand_set3);
xcorr_rand_set3 = xcorr_rand_set3/xcorr_rand_set3(N);

xcorr_rand_set4 = xcorr(rand_set4, rand_set4);
xcorr_rand_set4 = xcorr_rand_set4/xcorr_rand_set4(N);

figure(1);
subplot(2,2,1); plot(-N+1:N-1, xcorr_rand_set1); title('k2');
subplot(2,2,2); plot(-N+1:N-1, xcorr_rand_set2); title('kp');
subplot(2,2,3); plot(-N+1:N-1, xcorr_rand_set3); title('ksm');
subplot(2,2,4); plot(-N+1:N-1, xcorr_rand_set3); title('klm');
