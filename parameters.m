% parameters

clear;clc;

% learning rate (between 0 and 1)
alpha_p = 0.1;

% discount factor (between 0 and 1)
gamma_p = 0.9; % or greater

% percentage chance for random during policy evaluation
epsilon_p = 0.15; 

% max iteration
max_itr = 1000;

% max interation within an episode
max_ep_itr = 1000;

save('parameters.mat')

cliffinit
SARSA