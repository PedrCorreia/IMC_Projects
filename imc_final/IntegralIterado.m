% Define the IntegralIterado function
function result = IntegralIterado(n, x)
% Validate inputs
if x == 0
error("x cannot be zero");
end
if ~isscalar(n) || n < 1 || floor(n) ~= n
error("n must be a positive integer");
end
% Initialize the output array y with zeros
y = zeros(n+1,1);
% Calculate the first element of y (I1(x))
y(1) = (1 / x) * (exp(x) - exp(-x));
% Iterate from 2 to n+1 to calculate the remaining elements of
% y (I2(x), ..., In(x))
for i = 2:n+1
y(i) = (1/x) * ((i-1) * y(i-1) + ((-1)^(i-1))*exp(x) - exp(-x));
end
% Return the value for the n-th iteration
result = y(n);
end