%XA = XB+(inv(PB)+H'*inv(R)*H)\H'*inv(R)*D

function XA = analysis_ensemble(XB,xmb,N,m,H,y)
global erro n

%Synthetic observations
Ys = y*ones(1,N)+erro*randn(m,N);

D = (1/erro^2)*(Ys-XB(H,:));
Sb = XB-xmb*ones(1,N);
Pb = (1/(N-1))*(Sb*Sb');
W = inv(Pb);
Z = zeros(n,N);
for i = 1:m
   j = H(i);
   W(j,j) = W(j,j) + 1/erro^2;
   Z(j,:) = D(i,:);
end
XA = XB+W\Z;
end