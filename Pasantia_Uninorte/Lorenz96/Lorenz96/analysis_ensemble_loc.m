%XA = XB+PB*H'*(R+H*PB*H')\D

function XA = analysis_ensemble_loc(XB,xmb,N,m,H,y,r)
global erro n

%Synthetic observations
Ys = y*ones(1,N)+erro*randn(m,N);

D = Ys-XB(H,:);
Sb = XB-xmb*ones(1,N);
Pb = (1/(N-1))*(Sb*Sb');

L = localization_matrix(n,r);
Pb = L.*Pb;
W = Pb(H,H)+erro^2*eye(m,m);
XA = XB+Pb(:,H)*(W\D);
end