function [theta] = normalEqn(X, y)
%NORMALEQN Computes the closed-form solution to linear regression 
%   NORMALEQN(X,y) computes the closed-form solution to linear 
%   regression using the normal equations.

theta = zeros(size(X, 2), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the code to compute the closed form solution
%               to linear regression and put the result in theta.
%
theta = ((X'*X)^-1) * X' * y;
% ---------------------- Sample Solution ----------------------
% X = [2 1 3; 7 1 9; 1 8 1; 3 7 4];
% y = [2 ; 5 ; 5 ;6];
% X' = [2 7 1 3; 1 1 8 7; 3 9 1 4];
% [theta] = normalEqn(X,y);
% theta = [0.0084; 0.5681; 0.4864]
% -------------------------------------------------------------


% ============================================================

end
