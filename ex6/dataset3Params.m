function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%
% C & Sigma values to test
c_list = [0.01 0.03 0.1 0.3 1 3 10 30];
sigma_list = [0.01 0.03 0.1 0.3 1 3 10 30];
% Blank result matrix
result = zeros(length(c_list)*length(sigma_list),3);
row = 1;
% For loop
for c_val = c_list
    for sigma_val = sigma_list
        [model] = svmTrain(X, y, c_val, @(x1, x2) ...
            gaussianKernel(x1, x2, sigma_val));
        % Predictions labels on Cross Validation set
        predictions = svmPredict(model, Xval);
        % Prediction Error
        err_val = mean(double(predictions ~= yval));
        % Result matrix
        result(row,:) = [c_val sigma_val err_val];
        row = row+1;
    end
end
% Index of minimum error val
[~, i] = min(result(:,3));
% Minimum C & SIGMA
C = result(i,1);
sigma = result(i,2);
% =========================================================================
end
