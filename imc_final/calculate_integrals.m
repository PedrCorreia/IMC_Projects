function result = calculate_integrals(n, x)
% Validate inputs
if ~isscalar(n) || n < 0 || floor(n) ~= n
error("n must be a non-negative integer");
end
if ~isscalar(x)
error("x must be a scalar");
end
% Define the function to integrate
f = @(t) (t.^n) .* exp(-x * t);
% Compute the integral
result = integral(f, -1, 1);
end