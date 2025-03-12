function resultsTable = computeIntegrals(n_values, x_values)
    % Initialize arrays to store results
    results_Q1a = zeros(length(n_values), length(x_values));
    results_Q1b = zeros(length(n_values), length(x_values));

    % Loop through n_values and x_values to compute results for both functions
    for i = 1:length(n_values)
        n = n_values(i);
        for j = 1:length(x_values)
            x = x_values(j);
            results_Q1a_table = calculate_integrals(n, x);
            results_Q1a(i, j) = table2array(results_Q1a_table(:, 2:end)); % Convert table to array
            results_Q1b(i, j) = IntegralIterado(n, x); % Ensure IntegralIterado returns a scalar
        end
    end

    % Initialize cell array to store table data
    tableData = cell(length(n_values), 2 * length(x_values) + 1);

    % Fill the table with results and comparison
    for i = 1:length(n_values)
        for j = 1:length(x_values)
            tableData{i, 2 * j - 1} = results_Q1a(i, j);
            tableData{i, 2 * j} = results_Q1b(i, j);
        end
        % Calculate the percentage overlap
        overlap = 100 * (1 - abs(results_Q1a(i, :) - results_Q1b(i, :)) ./ max(abs(results_Q1a(i, :)), abs(results_Q1b(i, :))));
        tableData{i, end} = mean(overlap);
    end

    % Create table with appropriate column names
    colNames = cell(1, 2 * length(x_values) + 1);
    for j = 1:length(x_values)
        colNames{2 * j - 1} = sprintf('Iaxi_%d', j);
        colNames{2 * j} = sprintf('Ibxi_%d', j);
    end
    colNames{end} = 'OverlapPercentage';

    resultsTable = cell2table(tableData, 'VariableNames', colNames);
end