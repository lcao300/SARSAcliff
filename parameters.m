% parameters

clear;clc;

% learning rate (between 0 and 1)
alpha_p = 0.4;

% discount factor (between 0 and 1)
gamma_p = 0.5;

% percentage chance for random during policy evaluation
epsilon_p = 0.3;

% max iteration
max_itr = 200;

% max interation within an episode
max_ep_itr = 1000;

save('parameters.mat')

cliffinit
SARSA