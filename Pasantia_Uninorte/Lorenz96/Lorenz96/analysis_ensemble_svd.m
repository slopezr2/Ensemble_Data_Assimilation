%XA = XB+DX*W

function XA = analysis_ensemble_svd(XB,xmb,N,m,H,y)
global erro

%Synthetic observations
Ys = y*ones(1,N)+erro*randn(m,N);

D = Ys-XB(H,:);
DXG = (1/sqrt(N-1))*(XB-xmb*ones(1,N));
Q = DXG(H,:);
[U,S,V] = svd(Q);
W = eye(m,m)*erro^2+S*S';
Z = DXG*(V*(S'*(W\(U'*D))));
XA = XB+Z;
end