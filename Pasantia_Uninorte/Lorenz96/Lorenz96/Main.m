%EnKF driver for Lorenz 96

clc
clear all
close all

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

%Forecast ensemble
for i = 1:N 
    XB(:,i) = propagate_model(XB(:,i),T);
end

xmb = mean(XB,2);
Sb = XB-xmb*ones(1,N);
Pb = (1/(N-1))*(Sb*Sb'); %Nunca 

%Reference solution
xt = propagate_model(xt,T);

% - Analysis
y = xt(H)+erro*randn(m,1);

%Analysis ensemble
%Synthetic observations
Ys = y*ones(1,N)+erro*randn(m,N);

W = inv(Pb);
Z = Pb\XB;
for i = 1:m
   j = H(i);
   W(j,j) = W(j,j) + 1/erro^2; 
   Z(j,:) = Z(j,:) + (1/erro^2)*Ys(i,:);
end
XA = W\Z;
xma = mean(XA,2);

fig = figure;
hold all
plot(XB(H(2),:),XB(H(3),:),'*b');
plot(XA(H(2),:),XA(H(3),:),'*r');
plot(y(2),y(3),'s','markerfacecolor','k');
plot(xmb(H(2)),xmb(H(3)),'s','markerfacecolor','b');
plot(xma(H(2)),xma(H(3)),'s','markerfacecolor','r');
plot(xt(H(2)),xt(H(3)),'s','markerfacecolor','c');




















