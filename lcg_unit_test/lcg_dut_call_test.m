% Test parameters
N = 100;
INIT = 3842354;

% preconditions
uninit = lcg_dut_call_mex(uint32(0));
assert(uninit == 1013904223,'Starting value (zero seed) uncorrect.')

%% Test 1: sequence with gold model
x = lcg_dut(INIT);
y = lcg_dut_call_mex(uint32(INIT));
for ii = 1:N
    x = lcg_dut(x);
    y = lcg_dut_call_mex(y);
    assert(x == y, 'Sequence different from gold model at run #%d', ii)
end


