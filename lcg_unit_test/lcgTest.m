classdef lcgTest < matlab.unittest.TestCase
    methods (Test)% Declaration of class called Test
        function testSequenceGold(testCase)
            % Test parameters
            N = 100; %we initialized the test with 100 numbers expected in the variable N
            INIT = 3842354;%INIT is the first number that lcg_dut operate
            x = lcg_dut(INIT);%initialization of device under test
            y = lcg_dut_call(uint32(INIT)); % we call C file 
            for ii = 1:N %with a for loop we generate every number we need
                x = lcg_dut(x);%constantly we use lcg_dut and the new number generated
                y = lcg_dut_call(y);%constantly we call C file
                testCase.verifyEqual(y,x);%Verify the equality of numbers 
            end
        end
    end
    
end 