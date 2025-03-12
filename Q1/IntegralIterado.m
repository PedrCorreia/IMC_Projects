function y = IntegralIterado(n, x)
    % Check if x is zero and raise an error if true
    if x == 0
        error('x nao pode ser zero') % 'x cannot be zero'
    end 
    % Check if n is less than 1 and raise an error if true
    if n < 1
        error('n nao pode ser menor que 1') % 'n cannot be less than 1'
    end 
    % Initialize the output array y with zeros
    y = zeros(n, 1);
    % Calculate the first element of y
    y(1) = (1/x) * (exp(x) - exp(-x));
    % Iterate from 2 to n to calculate the remaining elements of y
    for i = 2:n
        y(i) = (1/x) * (i * y(i-1) + ((-1)^i) * (exp(x) - exp(-x)));
    end 
end
