function [rho,J1,J2,J3]=rho_calculation(q,xk,Bsquare,alpha,y,inB,inR,H,meanxb)

a(1)=0;
 b(1)=1;
 for l=1:q
    h=(b(l)-a(l))/4;
    alp1=a(l)+h;
    alp2=a(l)+2*h;
    alp3=a(l)+3*h;
    x1= xk+alp1*Bsquare*alpha;
    x2= xk+alp2*Bsquare*alpha;
    x3= xk+alp3*Bsquare*alpha;
    J1=functional_cost(meanxb,x1,y,inB,inR,H);
    J2=functional_cost(meanxb,x2,y,inB,inR,H);
    J3=functional_cost(meanxb,x3,y,inB,inR,H);
    if (J1<=J2) && (J1<=J3) %Magnitud of the descend step
        a(l+1)=a(l);
        b(l+1)=alp2;
        rho=alp1;
    elseif (J2<=J1) && (J2<=J3)
        a(l+1)=alp1;
        b(l+1)=alp3;
        rho=alp2;
    elseif (J3<=J1) && (J3<=J2)
        a(l+1)=alp2;
        b(l+1)=b(l);
        rho=alp3;
    end

 end