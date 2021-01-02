function [dadN] = myode(a,C,d_stress,m)
%

dadN = C.*((d_stress.*((pi.*a).^0.5)).^m);


end

