% SARSA implementation

load('cliffinit.mat')
load('parameters.mat')

% init Q matrix
Q = zeros(goal, 4);

% count for task
count = 1;

% init reward array
reward_arr = [];

% run through task max_itr number of times
for i=1:max_itr
    
    % init totalreward
    totalreward = 0;
    
    % init current state at start
    curr_state = start;
    
    % find possible actions from currrent state
    action_arr = find_action(curr_state);
    
    % find action based on egreedy
    % action = egreedy(curr_state,action_arr,Q);
    
    % find action based on softmax
    action = softmax(curr_state,action_arr,Q);
    
    % count for episode
    count_ep = 1;
    
    while ( curr_state ~= goal )
        % find next state based on action chosen
        next_state = action_arr(:,action);

        % reward at next_state
        reward = calculate_r(next_state);
        
        % if next state is on the cliff
        if ( mod(next_state,4) == 0 && next_state ~= 4 && next_state ~= 48)
            totalreward = totalreward + reward;
            
            if ( mod(count,20) == 0 )
                % agentmovessave(count,count_ep,next_state);
            end
            
            break;
        end
        
        % find next possible actions from next state
        next_action_arr = find_action(next_state);
        
        % find next action based on egreedy
        % next_action = egreedy(next_state,next_action_arr,Q);
        
        % find next action based on softmax
        next_action = softmax(next_state,next_action_arr,Q);
        
        % SARSA equation update
        Q(curr_state,action) = Q(curr_state,action) + alpha_p*[reward + gamma_p*Q(next_state,next_action) - Q(curr_state,action)];
        
        % update agent images for every 10th completion of maze
        if ( mod(count,20) == 0)
            % agentmovessave(count,count_ep,curr_state);
        end
        
 
        % update state and action
        curr_state = next_state;
        action_arr = next_action_arr;
        action = next_action;
        
        % make sure while loop ~= infinite loop
        count_ep = count_ep + 1;
        if ( count_ep == max_ep_itr )
            break;
        end
    % end of episode
    totalreward = totalreward + reward;
    end
    
    % save Q as image every time task is finished
    % Qimagefunc(count,Q);
    
    if ( mod(count,10) == 0 )
        fprintf('count:');
        disp(count);
    end
    count = count + 1;
    
    reward_arr = [reward_arr totalreward];

% end of task
end

% final run through of cliff using greedy
% init final path array
[final_path,~]=cliffrun(Q);

% display final path
plotfinalpath(final_path);

% make learning curve
x = 1:max_itr;
figure;
plot(x,reward_arr);
title(['SARSA algorithm; \alpha = ' num2str(alpha_p) ' \gamma = ' num2str(gamma_p) ' \beta = ' num2str(beta_p)])
xlim([0 max_itr]);
ylim([-125 150]);
xlabel('Episodes');
ylabel('Reward');
