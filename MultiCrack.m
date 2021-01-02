function [Crack_mat] = MultiCrack(exp_data)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

num_of_cracks = length(exp_data);

min_stress = 4.6*(10^9); % Pa
max_stress = 5*(10^9); % Pa

N = 7*10^6;

Crack_mat = zeros(num_of_cracks,2437);

figure;
for i = 1:num_of_cracks
    
    
    a0 = exp_data(1,i)*(10^-6);

    C = exp_data(2,i); 

    m = exp_data(3,i);

    [N,Crack_mat(i,:)] = ParisCrack(a0,C,m,min_stress,max_stress,N);
    
    plot(N,Crack_mat(i,:))
    hold on

end

hold off
