function [Crack_mat] = MultiCrack(exp_data)
% MultiCrack recieves the data of the experiments, and returns the sizes the cracks
% at each cycle, for each experiment. The function also graphs the sizes of
% the cracks together on one graph.

% Check how many experiments are given
num_of_cracks = length(exp_data);

% Define max. and min. stress
min_stress = 4.6; % GPa
max_stress = 5; % GPa

% Define number of cycles
Num_of_cycles = 7*10^6;

% Preallocate for speed
Crack_mat = zeros(num_of_cracks,Num_of_cycles);

figure;

for i = 1:num_of_cracks
    
    % Define paramters for the relevant experiment
    a0 = exp_data(1,i);
    C = exp_data(2,i); 
    m = exp_data(3,i);

    % Compute crack size
    [sol] = ParisCrack(a0,C,m,min_stress,max_stress,Num_of_cycles);
    
    N = linspace(0,Num_of_cycles,Num_of_cycles);
    a = deval(sol,N);
    Crack_mat(i,:) = a;
    
    % Plot the crack size, as a function of the number of cycles
    plot(N,a)
    hold on

end

title('Size of Crack as a function of cycle number')
legend('experiment 1','experiment 2','experiment 3','experiment 4')

xlabel('N - number of cycles')
ylabel('Crack size - micro-meter')

hold off
