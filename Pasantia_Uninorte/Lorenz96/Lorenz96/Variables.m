%Variables

global P n erro

%N - number of model realizations
N = 100;

%n - number of model components
n = 40;

%m - number of observed components from model state
dm = 2;
H = 1:dm:n;
m = length(H);

%T - forecast step
T0 = [0 10]; %Ensemble initialization
T = [0 1]; %Forecast step
TJ = 0:0.01:1; %Plot ensemble trajectories

%P - model parameters
P.F = 8;

%Errors
errb = 0.05;
erro = 0.01;
R = erro^2*eye(m,m);

%M - Assimilation steps
M = 15;









