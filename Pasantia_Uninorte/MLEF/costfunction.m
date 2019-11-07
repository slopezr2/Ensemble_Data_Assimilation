function [J,g]=costfunction(x)
global C  C_T y i salidas meanxb Xb inR inR_square tipo
J=0.5*(C_T*x)'*(C_T*x)+ 0.5*((y(:,i)-(operador(salidas,meanxb+Xb*C_T*x,tipo)))'*inR*(y(:,i)-(operador(salidas,meanxb+Xb*C_T*x,tipo))));

for Nen=1:length(C) %Propagation in time of all the ensemble members
    %==Calculation Matrix C, see equation (8) and (9)
    cx(:,Nen)=inR_square*(operador(salidas,meanxb+Xb*C_T*x + Xb(:,Nen),tipo)-operador(salidas,meanxb+Xb*C_T*x,tipo));
end

g=real(pinv(eye(length(C))+C)*x-(cx'*inR_square*(y(:,i)-operador(salidas,meanxb+Xb*C_T*x,tipo))));
g=g/norm(g);
end