function [action_arr] = find_action(curr_state)

load('cliffinit.mat');

% find possible next actions
%   if next action is possible, then fill array with index
%   if next aciton is impossible, then fill array with 0

action_arr = [];

% up (1)
% if state is at upper border of maze
if ( mod(curr_state,4) == 1 )
    action_arr(:,1) = 0;
% if next state is valid
else
    action_arr(:,1) = curr_state-1;
end

% down (2)
% if state is at lower border of maze
if ( mod(curr_state,4) == 0 )
    action_arr(:,2) = 0;
% if next state is valid
else
    action_arr(:,2) = curr_state+1;
end

% left (3)
% if state is at left border of maze
if ( curr_state <= 4 )
    action_arr(:,3) = 0;
% if next state is valid
else
    action_arr(:,3) = curr_state-4;
end

% right (4)
% if state is at lower border of maze
if ( curr_state > goal-4 )
    action_arr(:,4) = 0;
% if next state is valid
else
    action_arr(:,4) = curr_state+4;
end

end
