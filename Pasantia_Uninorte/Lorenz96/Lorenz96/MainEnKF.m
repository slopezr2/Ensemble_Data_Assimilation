%EnKF driver for Lorenz 96

clc
clear all
close all

rng(10);

Variables

%%
%Begin - experimental settings

xt = randn(n,1);

%Initial condition
xt = propagate_model(xt,T0);

%Background state
xb0 = xt+errb*randn(n,1);
xt = propagate_model(xt,T0);
xb0 = propagate_model(xb0,T0);

%Initial ensemble
for i = 1:N 
    XB(:,i) = xb0+errb*randn(n,1);
    XB(:,i) = propagate_model(XB(:,i),T0);
end

xt = propagate_model(xt,T0);

%End - experimental settings
%%

for k = 1:M
    disp(['Iteration ',num2str(k)]);
    
%Reference solution
xt = propagate_model(xt,T);    

%Forecast ensemble
XB = forecast_ensemble(XB,T,N);
xmb = mean(XB,2);

% - Observation (from the actual value)
y = xt(H)+erro*randn(m,1);

%Analysis ensemble
%XA = analysis_ensemble(XB,xmb,N,m,H,y);
%XA = analysis_ensemble_2(XB,xmb,N,m,H,y);
%XA = analysis_ensemble_3(XB,xmb,N,m,H,y);
%XA = analysis_ensemble_chol(XB,xmb,N,m,H,y);
%XA = analysis_ensemble_svd(XB,xmb,N,m,H,y);
XA = analysis_ensemble_loc(XB,xmb,N,m,H,y,3);
xma = mean(XA,2);

EA(k) = norm(xma-xt);
EB(k) = norm(xmb-xt);

XB = XA;

end

fig = figure;
hold all
plot(EB,'--b');
plot(EA,'--r');
legend('Background','Analysis');


% plot(XB(H(2),:),XB(H(3),:),'*b');
% plot(XA(H(2),:),XA(H(3),:),'*r');
% plot(y(2),y(3),'s','markerfacecolor','k');
% plot(xmb(H(2)),xmb(H(3)),'s','markerfacecolor','b');
% plot(xma(H(2)),xma(H(3)),'s','markerfacecolor','r');
% plot(xt(H(2)),xt(H(3)),'s','markerfacecolor','c');




















