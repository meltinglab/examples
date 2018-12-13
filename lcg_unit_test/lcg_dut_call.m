function y = lcg_dut_call(x) % Declaration of function that call the file written in C
    x = uint32(x);
    y = uint32(0);
    y = coder.ceval('lcg_dut_hand', x);% Call C function called lcg_dut_hand from generated code
end %end of function
