%====Simulation Lorenz===
clear all
close all
clc

n=40;
N=100;
F=8;
tsim=500;
dt=0.01;
x=zeros(n,tsim,N);
r=1;
 B=zeros(n,n,tsim); % Estimated covarianza by Modified Cholesky. Dimensions (states, states, time)
for j=1:N
x0=rand(n,1);
[x(:,:,j),t]=Lorenz_96(tsim,dt,x0,F);
end
for i=1:tsim
    XB = x(:,i,:)-mean(x(:,i,:),3)*ones(1,N);
    [B(:,:,i),P]=Calculo_B_Cholesky(XB,r);
    imagesc(B(:,:,i)),colorbar
    pause(0.1)
end



% imagesc(x)
% Nen=1:N;
%  figure
%  plot(t,squeeze(x(5,:,Nen)))
