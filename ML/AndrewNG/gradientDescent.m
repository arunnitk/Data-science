function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
% we have X with 2 coulums ... so we have to compute 2 thetas
% say theta(1) for X(:,1), theta2 for X(:,2)
 %select the fisrt column of the X
%    X_1 = X(:,1);
    %select the second column of the X
 %   X_2 = X(:,2);
% for the gradient descentto conerge ... alpha should be small
% next partial derivative of J(theta(1), theta(2)) ==> hypothesis
%hypothesis = X*theta


%theta(1) = theta(1) - alpha* sum((hypothesis-y)'*X_1) / m;

%theta(2) = theta(2) - alpha * sum((hypothesis - y)' *  X_2) / m;

##### First formula d/d(theta)J(Theta0, theta1) = 1/m m --> 1=1sum(h(theta(X(i) -y(i)).X(i)
    g = 0;
    k = 0;
    for i = 1 : m
        k = k + (theta(1) + theta(2) * X(i,2) - y(i)) *X(i,1) ;
        g = g + (theta(1) + theta(2) * X(i,2) - y(i)) * X(i, 2);
    end
    fprintf('%f\n', k);
    fprintf('%f\n', g);
    theta(1) =theta(1) - alpha /m * k;
    theta(2) = theta(2) - alpha /m * g;




    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
