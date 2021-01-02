function [Crack_mat] = MultiCrack(exp_data)
% MultiCrack recieves the experiment 

num_of_cracks = length(exp_data);

min_stress = 4.6*(10^9); % Pa
max_stress = 5*(10^9); % Pa

Num_of_cycles = 7*10^6;

Crack_mat = zeros(num_of_cracks,Num_of_cycles);

figure;
for i = 1:num_of_cracks
    
    
    a0 = exp_data(1,i)*(10^-6);
    C = exp_data(2,i); 
    m = exp_data(3,i);

    
    [sol] = ParisCrack(a0,C,m,min_stress,max_stress,Num_of_cycles);
    
    N = linspace(0,Num_of_cycles,Num_of_cycles);
    a = deval(sol,N);
    
    Crack_mat(i,:) = a;
    
    plot(N(1:1000),a(1:1000))
    
    hold on

end

hold off
