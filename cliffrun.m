function [path, totalreward] = cliffrun(Q)

load('parameters.mat')
load('cliffinit.mat')

% run that exploits highest Q

% init path matrix
path = [start];
% count used for learning curve
count = 1;
% start at beginning
curr_state = start;

totalreward = 0;

% while state is not goal
while ( curr_state ~= goal )
    % choose next state with highest Q
    act_Q = highQ(curr_state, Q);
    next_state = move(curr_state, act_Q);
    reward = calculate_r(next_state);
    
    % add state to path
    path = [path next_state];
    
    % update current state
    curr_state = next_state;
    
    % if not solvable within max_ep_itr, then break
    if ( count > max_ep_itr )
        break;
    end
    % increment count
    count = count + 1;
    totalreward = totalreward + reward;
end

end