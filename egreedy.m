function [action] = egreedy(state,action_arr,Q)

load('parameters.mat', 'epsilon_p');
% e-greedy function
%   finding next action by using e-greedy method

random_num = rand;

% if epsilon choose randomly
if ( random_num <= epsilon_p )
    action = random(action_arr);

% if not epsilon choose move with best Q
else
    action = highQ(state,Q);
end

end