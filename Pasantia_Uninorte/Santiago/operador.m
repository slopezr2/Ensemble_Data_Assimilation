function Hx = operador(H,x,tipo)

global gam

if tipo <= 4 %Lineal, Quadratic, Cubic
    Hx = x(H,:).^tipo;
else
    if tipo==5
    Hx = exp(x(H,:));
    else
        if tipo == 6
           Hx = sin(x(H,:)); 
        else
    Hx = (x(H,:).*((abs(x(H,:))/2).^(gam - 1) + 1))/2;
        end
    end
end

end