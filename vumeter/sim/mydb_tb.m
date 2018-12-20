clear
clc

x = logspace(-6, 1, 1000);
for ii = 1:length(x)
    y(ii) = mydb(x(ii));
end

semilogx(x, y)