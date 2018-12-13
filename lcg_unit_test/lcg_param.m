function y = lcg_param(x, a, b, m) %Declaration of the function, it takes four parameters
    y = mod(a*x + b, m);%Modulus after division between given numbers and seeds
end %end of function

