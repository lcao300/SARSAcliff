function [action] = highQ(state,Q)
 
% find action based on Q matrix
    
    % extract Q matrix for state
    Q_arr = Q(state,:);
    
    % extract possible actions for state
    actions_Q = find_action(state);
 
    % if all 0s, choose random
    if ( range(Q_arr) == 0) 
        act_Q = random(actions_Q);
        action = act_Q;
    % find max
    else
        max = -1000000;
        index = 0;
        for m=1:4
            if ( Q_arr(:,m)>max && Q_arr(:,m) ~= 0 && actions_Q(:,m) ~= 0)
                max = Q_arr(:,m);
                % disp(max);
                index = m;
            end
        end
        if ( index ~= 0 )
            action = index;
        else
            act_Q = random(actions_Q);
            action = act_Q;
        end
    end
    
end