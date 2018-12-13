function y = lcg_dut_int(x) %Declaration of function that initialize as uint32 the argument
    x = fi(uint32(x)); %signed fixed-point of parameter x with no value 
    A = fi(uint32(1664525)); %in A we insert the first seed 1664525
    B = fi(uint32(1013904223));%in B we insert the second seed 1013904223
    y = fi(uint32(A*x + B));% y is the output of our function it implements this expression A*x + B
end %end of function