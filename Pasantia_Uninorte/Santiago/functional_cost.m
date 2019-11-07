function J=functional_cost(xb,x,y,inB,inR,H)

J=(x-xb)'*inB*(x-xb)+(y-H*x)'*inR*(y-H*x);
end