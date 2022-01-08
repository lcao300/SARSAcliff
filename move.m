function [next_state] = move(curr_state, action)

% move based on current state and action

% up (1)
if ( action == 1 )
    next_state = curr_state - 1;
end

% down (2)
if ( action == 2 )
    next_state = curr_state + 1;
end

% left (3)
if ( action == 3 )
    next_state = curr_state - 4;
end

% right (4)
if ( action == 4 )
    next_state = curr_state + 4;
end

end
