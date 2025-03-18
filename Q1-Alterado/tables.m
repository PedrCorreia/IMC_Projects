% Define input values
n_values = 1:20; % Updated n_values to range from 1 to 20
x_values = [1, 5]; % Example x_values

% Initialize a cell array to represent the table
T = {'n', 'Method_A_x1', 'Method_B_x1', 'Method_A_x5', 'Method_B_x5', 'Error_x1', 'Error_x5'}; % Header row

% Iterate over n_values to calculate results for each n
for i = 1:length(n_values)
    n = n_values(i);

    % Calculate results using Method A (calculate_integrals)
    methodA_x1 = calculate_integrals(n, 1); % Call calculate_integrals for x = 1
    methodA_x5 = calculate_integrals(n, 5); % Call calculate_integrals for x = 5

    % Calculate results using Method B (IntegralIterado)
    methodB_x1 = IntegralIterado(n, 1); % Call IntegralIterado for x = 1
    methodB_x5 = IntegralIterado(n, 5); % Call IntegralIterado for x = 5

    % Calculate errors between Method A and Method B
    error_x1 = abs(methodA_x1 - methodB_x1);
    error_x5 = abs(methodA_x5 - methodB_x5);

    % Append the row to the table
    T = [T; {n, methodA_x1, methodB_x1, methodA_x5, methodB_x5, error_x1, error_x5}];
end

% Convert the cell array to a table for better formatting
T = cell2table(T(2:end, :), 'VariableNames', string(T(1, :)));

% Display the table
disp(T);