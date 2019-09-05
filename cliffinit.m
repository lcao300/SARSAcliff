% creation of cliff

% create maze with reward
maze = ones(4,12) * -1;
for i = 2:11
    maze(4,i) = -100;
end

maze(4,12) = 100;

% init start and goal
start = 4;       
goal = 48;

% linearize array
maze_linear = reshape(maze,[goal,1]);

% save as mat file
save('cliffinit.mat')