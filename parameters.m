% parameters

clear;clc;

% learning rate (between 0 and 1)
alpha_p = 0.1;

% inverse temperature
beta_p = 0.00001;

% discount factor (between 0 and 1)
gamma_p = 0.99; % or greater

% percentage chance for random during policy evaluation
epsilon_p = 0.01; 

% max iteration
max_itr = 10000;

% max interation within an episode
max_ep_itr = 500;

save('parameters.mat')

cliffinit

% run sarsa
mkdir SARSAimages
SARSA
dir_to_gif('SARSAimages')

% run Q learning
mkdir Qimages
QLearning
dir_to_gif('Qimages')