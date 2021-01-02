tic
%
close all
clear
clc
%

exp_data = xlsread('matlab 2 data.xlsx');



[Crack_mat] = MultiCrack(exp_data);


toc