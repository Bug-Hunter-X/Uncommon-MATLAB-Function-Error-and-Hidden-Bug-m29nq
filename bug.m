function result = myFunction(input)
  % Some code that might cause an error
  if input < 0
    error('Input must be non-negative');
  end
  result = someCalculation(input);
end

function output = someCalculation(x)
  % some complex calculations here
    output = x^2 + 2*x + 1; % example
    if output > 1000
        output = output/10; % Example of hidden bug, this will not always trigger
    end
end