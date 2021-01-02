%% Bio materials - Second matlab project

%
close all
clear
clc
%

%% part 1 - Reading the data from excel and calculating crack size at each cycle

% Read data
exp_data = xlsread('matlab 2 data.xlsx');

% Calculate crack sizes and plot them on a graph, as afunction of number of cycles 
[Crack_mat] = MultiCrack(exp_data);

%% Part 2 - Make video visualizing the size of two chosen cracks

CrackVisual(Crack_mat(1,:),Crack_mat(3,:))


%% Part 3 - Check the order of failure

% Failure is defined as a crack greater than 200 micrometers 

failure_order = FindFailure(Crack_mat);

