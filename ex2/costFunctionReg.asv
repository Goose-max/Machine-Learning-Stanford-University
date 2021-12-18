function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
% Hypothesis Function
z = X*theta;    %Hypothesis Input = z
H = sigmoid(z); %Hypothesis function
% Cost function - Hypothesis error -> 0.5*(Hypothesis - y)^2
P1 = -(y'*log(H));
P2 = -((1-y)'*log(1-H));
% Cost Function - Regularization - Lambda
theta(1) = 0;               % Theta 0 <- not regularised
theta_sqr = theta'*theta;   % Squaring theta vector:
                            % Vector mulitply with itself - Scalr result
                            % Theta Transpose * Theta
                            % Vector: (n x m) * (m x n)
P3 = (lambda)*(theta_sqr);  % <- Regularization
% Final Cost Function
J = (1/m) * (P1+P2) + (P3/(2*m));

% Partial Derivative
error = H - y;  % Error between hypothesis and actual values
% Partial deravitive J(theta) with regularization
%                       -> including theta 0 -> 0su
grad = (1/m)*(X'*error) + (lambda/m)*(theta);   

% =============================================================

end
