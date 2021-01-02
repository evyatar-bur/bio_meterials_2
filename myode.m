function [dadN] = myode(a,C,d_stress,m)
% myode defines an ode, based on paris law

dadN = C*((d_stress*((pi*a)^0.5))^m);

end

