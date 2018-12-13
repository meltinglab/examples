%

%% Cleaning
clear;
clc;

%% Parameters
N = 1e5;
init = 3842354;
rng(init, 'twister')

%% Generation
x = zeros(1,3*N);
x(1) = init;
for ii = 2:length(x)
%     x(ii) = uint32(randi(2^32,1) - 1);
%     x(ii) = lcg_dut(x(ii-1));
    x(ii) = lcg_dut_call_mex(uint32(x(ii-1)));
%     x(ii) = lcg_param(x(ii-1), 65539, 0, 2^31);
end

%% Spatial test
y1 = reshape(x,3,N);
% Plot
figure
scatter3(y1(1,:), y1(2,:), y1(3,:), '.')
title('Spatial distribution')

%% Bit count distribution
bcnt = zeros(size(x)); % bit counts
for ii = 1:length(x)
    bcnt(ii) = sum(bitget(uint32(x(ii)),32:-1:1));
end
[cnts, ~] = histcounts(bcnt,0:33);
cnts = cnts/3/N;
% Plot
figure
bar(0:32, cnts)
title('One''s occurrence')

%% Bit change counting
bcng = zeros(size(x)); % bit counts
for ii = 2:length(x)
    bcng(ii) = sum(bitget(uint32(bitxor(x(ii), x(ii-1))),32:-1:1));
end
[cngs, ~] = histcounts(bcng,0:33);
cngs = cngs/3/N;
% Plot
figure
bar(0:32, cngs)
title('Bit changes occurrence')

%% "Eye" representation
figure
plot(cnts,cngs)
title('Counts vs. changes')

%% Cross check for uniform distribution
% cnts_chk = zeros(1,33);
% for ii = 1:2^24
%     jj = sum(bitget(uint32(ii),32:-1:1)) + 1;
%     cnts_chk(jj) = cnts_chk(jj) + 1;
% end
% % Plot
% figure
% bar(0:32, cnts_chk)

