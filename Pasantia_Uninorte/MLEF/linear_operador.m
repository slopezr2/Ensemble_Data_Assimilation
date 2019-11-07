function HL = linear_operador(H,x,tipo)

global gam

n = length(x);

m = length(H);

HL = zeros(m,n);

if tipo <= 4 %Lineal
    MT = diag((tipo)*x(H).^(tipo-1));
else
    if (tipo == 5)
        MT = diag(exp(x(H)));
    else
        if (tipo==6)
           MT = diag(cos(x(H))); 
        else
        xh = x(H);
        MT = diag((abs(xh)/2).^(gam - 1)/2 + (xh.*sign(xh).*(abs(xh)/2).^(gam - 2)*(gam - 1))/4 + 1/2);
        end
    end
end
    
    HL(:,H) = MT;
    
end