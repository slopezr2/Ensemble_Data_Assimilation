%XA = XB+DX*W

function XA = analysis_ensemble_chol(XB,xmb,N,m,H,y)
global erro n

%Synthetic observations
Ys = y*ones(1,N)+erro*randn(m,N);

D = Ys-XB(H,:);
DX = XB-xmb*ones(1,N);
Q = DX(H,:);
P = (N-1)*eye(N,N)+(1/erro^2)*(Q'*Q);
%L = chol(P);
W = P\(Q'*((1/erro^2)*D));
XA = XB+DX*W;
end