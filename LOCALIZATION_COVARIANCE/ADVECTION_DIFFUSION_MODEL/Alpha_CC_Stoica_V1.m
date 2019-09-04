%===Algorithm to calculate Alpha for a Convex Combination
%in a Shrinkage formulation based on "On Using a priori Knowledge in
%Space-Time Adaptive Processing"

function alpha=Alpha_CC_Stoica_V1(L,P0,T,N)
sum=0;
for i=1:N
sum=sum+norm(L(:,i),'Fro')^4;
end

rho=abs((1/(N^2))*sum-(1/N)*norm(P0,'Fro')^2);
normB=norm(P0-T,'Fro')^2;
if normB==0
    alpha=0;
else
    alpha=max(0,rho/(rho+normB));
end
k=2;