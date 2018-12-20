clear
clc

x = linspace(0, 1, 1000);
for ii = 1:length(x)
    y(ii) = mysqrt(x(ii));
end

plot(x, y)