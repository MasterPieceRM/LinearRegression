function [Theta] = normal_equation(FeatureMatrix, Y, tol, iter)
  % FeatureMatrix -> the matrix with all training examples
  % Y -> the vector with all actual values
  % tol -> the learning rate
  % iter -> the number of iterations
  % tol -> the tolerance level for convergence of the conjugate gradient method
  % Theta -> the vector of weights
  
  [m n] = size(FeatureMatrix);
  Theta = zeros(n + 1, 1);
  A = FeatureMatrix' * FeatureMatrix;
  eigv = eig(A);
  if ~all(eigv > 0)
    return;
  end
  b = FeatureMatrix' * Y;
  x0 = zeros(n, 1);
  r0 = b - A * x0;
  v0 = r0;
  v = v0;
  x = x0;
  tolsq = tol * tol;
  k = 1;
  while (k <= iter && r0' * r0 > tolsq)
    t = (r0' * r0) / (v0' * A * v0);
    x = x0 + t * v0;
    r = r0 - t * A * v0;
    s = (r' * r) / (r0' * r0);
    v = r + s * v0;
    k = k + 1;
    x0 = x;
    v0 = v;
    r0 = r;
  end
  Theta(2 : end) = x;
endfunction