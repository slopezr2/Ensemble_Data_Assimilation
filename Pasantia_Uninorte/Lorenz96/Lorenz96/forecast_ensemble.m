function XB = forecast_ensemble(XB,T,N)
for i = 1:N 
    XB(:,i) = propagate_model(XB(:,i),T);
end
end