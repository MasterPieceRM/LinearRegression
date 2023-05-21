function [Theta] = gradient_descent(FeatureMatrix, Y, n, m, alpha, iter)
  % FeatureMatrix -> the matrix with all training examples
  % Y -> the vector with all actual values
  % n -> the number of predictors
  % m -> the number of trainings
  % alpha -> the learning rate
  % iter -> the number of iterations
  % Theta -> the vector of weights
  Theta = zeros(n + 1, 1);
  % Calcularea valorilor prezise în "H", folosind operații cu matrice
  H = FeatureMatrix * Theta(2 : end);
  for step = 1 : iter
    % Calculează erorile pe baza valorilor h deja calculate
    Errors = H - Y;
    % Calculează gradientul
    Gradient = (1/m) * (FeatureMatrix' * Errors);
    Theta(2 : end) = Theta(2 : end) - alpha * Gradient;
    H = FeatureMatrix * Theta(2 : end);
  end
endfunction