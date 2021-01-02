function [sol] = ParisCrack(a0,C,m,min_stress,max_stress,N_Num)
% ParisCrack recieves the relevant parameters and uses paris law,
% to compute the size of a crack formed in a substance in the experiment. 

d_stress = (max_stress - min_stress);
N_span = [0 N_Num]; 

sol = ode45(@(N,a) myode(a,C,d_stress,m),N_span,a0);

end

