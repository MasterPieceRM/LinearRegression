function [Error] = linear_regression_cost_function(Theta, Y, FeatureMatrix)
  % Theta -> the vector of weights
  % Y -> the vector with all actual values
  % FeatureMatrix -> the matrix with all training examples
  % Error -> the error of the regularized cost function
  
  [m, n] = size(FeatureMatrix);
  % Calcularea valorilor prezise în "h", folosind operații cu matrice
  h = FeatureMatrix * Theta(2:end);
  % Calcularea costului in "Error", folosind operații cu matrice
  Error = sum((h - Y) .^ 2) / (2 * m);
  
endfunction
