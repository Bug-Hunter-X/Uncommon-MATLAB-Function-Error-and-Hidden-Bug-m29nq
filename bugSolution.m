function result = myFunction(input)
  % Improved error handling and input validation
  if ~isnumeric(input) || input < 0
    error('Input must be a non-negative number');
  end
  result = someCalculation(input);
end

function output = someCalculation(x)
  % Improved calculation logic
  output = x^2 + 2*x + 1;
  % Add safeguards against unexpected behavior and more robust output handling
  if output > 1000
      warning('Output exceeded threshold, consider revisiting the function'); % warn instead of automatically change it
  end
end