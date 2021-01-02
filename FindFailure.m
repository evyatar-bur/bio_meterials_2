function [failure_order] = FindFailure(Crack_mat)
% Findfailure gets a matrix containing the size of the crack of four
% experiments, and returns order in which they fail.


did_brake = (Crack_mat<=200);
when_brake = sum(did_brake,2);
[num_of_cycles,failure_order] = sort(when_brake);


disp('The substance from experiment ' + string(failure_order(1)) + ' Broke first, after ' +  string(num_of_cycles(1)+1) + ' cycles')
disp('The substance from experiment ' + string(failure_order(2)) + ' Broke second, after ' +  string(num_of_cycles(2)+1) + ' cycles')
disp('The substance from experiment ' + string(failure_order(3)) + ' Broke third, after ' +  string(num_of_cycles(3)+1) + ' cycles')
disp('The substance from experiment ' + string(failure_order(4)) + ' Broke fourth, after ' +  string(num_of_cycles(4)+1) + ' cycles')



end

