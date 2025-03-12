function T = calculate_integrals(n_values, x_values)
    % Initialize arrays to store results
    results = zeros(length(n_values), length(x_values) + 1);

    % Calculate the integrals for given x values
    for i = 1:length(n_values)
        n = n_values(i);
        results(i, 1) = n;
        for j = 1:length(x_values)
            x = x_values(j);
            f = @(t) (t.^n) .* exp(-x*t);
            I_nx = integral(f, -1, 1);
            results(i, j + 1) = I_nx;
        end
    end

    % Create a table to organize the information
    T = array2table(results, 'VariableNames', [{'n'}, arrayfun(@(x) sprintf('I(x=%d)', x), x_values, 'UniformOutput', false)]);
end
