function [action] = softmax(state,action_arr,Q)

load('parameters.mat', 'beta_p');
% softmax function
%   finding next action by using softmax method

% extract Q matrix for state
Q_arr = Q(state,:);

% find total
Q_tot = exp(beta_p * Q_arr(1)) + exp(beta_p * Q_arr(2)) + exp(beta_p * Q_arr(3))+ exp(beta_p * Q_arr(4));

% softmax
prob1 = exp(beta_p * Q_arr(1))/Q_tot;
prob2 = exp(beta_p * Q_arr(2))/Q_tot;
prob3 = exp(beta_p * Q_arr(3))/Q_tot;
prob4 = exp(beta_p * Q_arr(4))/Q_tot;

% if all softmaxes are equal choose randomly
if ( prob1 == prob2 && prob2 == prob3 && prob3 == prob4 )
    check1 = 0;
    while ( check1 == 0 )
        randnum = rand;
        if ( randnum <= 0.25 && action_arr(1) ~= 0 )
            action = 1;
            check1 = 1;
        elseif ( randnum <= 0.5 && action_arr(2) ~= 0)
            action = 2;
            check1 = 1;
        elseif ( randnum <= 0.75 && action_arr(3) ~= 0)
            action = 3;
            check1 = 1;
        elseif ( action_arr(4) ~= 0 )
            action = 4;
            check1 = 1;
        end
    end

% choose action based on probabilities given in softmax
else
    check2 = 0;
    while ( check2 == 0 )
        randnum = rand;
        if ( randnum <= prob1 && action_arr(1) ~= 0)
            action = 1;
            check2 = 1;
        elseif ( randnum <= prob1 + prob2 && action_arr(2) ~= 0)
            action = 2;
            check2 = 1;
        elseif ( randnum <= prob1 + prob2 + prob3 && action_arr(3) ~= 0)
            action = 3;
            check2 = 1;
        elseif ( randnum <= prob1 + prob2 + prob3 + prob4 && action_arr(4) ~= 0)
            action = 4;
            check2 = 1;
        end
    end
end

end
