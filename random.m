function [action] = random(action_arr)

% random function
%   choose next action randomly

% rand num between 1 and 4
randaction = randi(4);

% while chosen action is not invalid
while ( action_arr(:,randaction) == 0 )
    randaction = randi(4);
end

% update action
action = randaction;

end
