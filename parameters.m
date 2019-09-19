% parameters

clear;clc;

% learning rate (between 0 and 1)
alpha_p = 0.00001;

% inverse temperature
beta_p = 0.00001;

% discount factor (between 0 and 1)
gamma_p = 0.99; % or greater

% percentage chance for random during policy evaluation
% epsilon_p = 0.01; 

% max iteration
max_itr = 10000;

% max interation within an episode
max_ep_itr = 100;

save('parameters.mat')

cliffinit
SARSA