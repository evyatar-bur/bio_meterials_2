function [sol] = ParisCrack(a0,C,m,min_stress,max_stress,N)
% 

d_stress = (max_stress - min_stress);

N_span = [0 N]; % 


sol = ode45(@(N,a) myode(a,C,d_stress,m),N_span,a0);

end

