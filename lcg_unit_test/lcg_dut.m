function y = lcg_dut(x) %function of device under test
%LGC_DUT Preferred linear congruential generator
    x = double(x);
    A = 1664525; % first seed of function
    B = 1013904223; % second seed of function
    M = 2^32; 
    y = uint32(lcg_param(x, A, B, M)); %as output y we call the result of function lcg_param
end % end of function

