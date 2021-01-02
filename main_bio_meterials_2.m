%
close all
clear
clc
%

exp_data = xlsread('matlab 2 data.xlsx');



a0 = exp_data(1,1)*(10^-6);

C = exp_data(2,1);

m = exp_data(3,1);

min_stress = 4.6*(10^9); % Pa
max_stress = 5*(10^9); % Pa

N_num = 7*10^6;


%%
[N,a,sol] = ParisCrack(a0,C,m,min_stress,max_stress,N_num);



%N = linspace(0,N_num,1000);
%a = deval(sol,N);


figure;
plot(N(1:10),a(1:10))

figure;
plot(sol.x(1:10),sol.y(1:10))
