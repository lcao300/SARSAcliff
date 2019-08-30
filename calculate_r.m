function [reward] = calculate_r(state)

load('cliffinit.mat');

% calculate the reward of a state
%   every state is -1 except for the cliff

reward = maze_linear(state);

end
