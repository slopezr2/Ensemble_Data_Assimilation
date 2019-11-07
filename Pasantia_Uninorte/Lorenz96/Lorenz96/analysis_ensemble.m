%XA = (inv(PB)+H'*inv(R)*H)\(inv(PB)*XB+H'*inv(R)*Ys)

function XA = analysis_ensemble(XB,xmb,N,m,H,y)
global erro

%Synthetic observations
Ys = y*ones(1,N)+erro*randn(m,N);

Sb = XB-xmb*ones(1,N);
Pb = (1/(N-1))*(Sb*Sb');
W = inv(Pb);
Z = Pb\XB;
for i = 1:m
   j = H(i);
   W(j,j) = W(j,j) + 1/erro^2; 
   Z(j,:) = Z(j,:) + (1/erro^2)*Ys(i,:);
end
XA = W\Z;
end