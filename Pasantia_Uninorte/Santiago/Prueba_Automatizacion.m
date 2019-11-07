observaciones=[0.7 1];

ensambles=[20 40 80];
gama=[1 2 3 4 5];

for obs=1:6
    for en=1:3
       for gam=1:5
          
           try a(obs,en,gam)=ensambles(en)/factorial(observaciones(obs));
               
           catch
               a(obs,en,gam)=555;
               
           end
               
           try a(obs,en,gam)=factorial(observaciones(obs));
               
           catch
               a(obs,en,gam)=554;
               
           end
           
       end
        
    end
    
end
