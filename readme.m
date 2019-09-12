% % readme
% 
% to run cliff task: run parameters.m
% 
%% function/file descriptions
% 
% calculate_r: input state and output reward at that state
% cliffinit: create cliff and init start/goal
% cliffrun: input Q and output path and total reward; runs through maze
%           exploiting highest Q
% egreedy: input state, action_arr, and Q and output action; egreedy
%          policy action selection
% find_action: input curr_state and output action_arr; finds all possible
%              actions
% highQ: input state and Q and output action; greedy action selection
% move: input curr_state and action and output next_state
% parameters: inits parameters and iteration limits
% plotfinalpath: input final_path, plots final path of agent
% Qimagefunc: input count and Q, splits Q into 4
% Qimagesave: input 4 Q arrays, plots Qs and saves them as images
% random: input action_arr and ouput action; random action selection
% SARSA: main