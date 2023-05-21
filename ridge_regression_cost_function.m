function [Error] = ridge_regression_cost_function(Theta, Y, FeatureMatrix, lambda)
  % Theta -> the vector of weights
  % Y -> the vector with all actual values
  % FeatureMatrix -> the matrix with all training examples
  % lambda -> regularization parameter that controls the amount of 
  %           shrinkage applied to the regression coefficients
  % Error -> the error of the regularized cost function
  [m, n] = size(FeatureMatrix);
  % Calcularea valorilor prezise în "h", folosind operații cu matrice  
  h = FeatureMatrix * Theta(2:end);
  % Calcularea costului regularizat L2 in "Error", folosind operații cu matrice
  Error = sum((h - Y) .^ 2) / (2 * m) + lambda * sumsq(Theta);
endfunction