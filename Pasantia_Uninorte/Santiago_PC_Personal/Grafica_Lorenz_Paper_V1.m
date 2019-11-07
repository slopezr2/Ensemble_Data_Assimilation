close all
clc
for i=1:3
%     figure
    switch i
        case 1 
          color=[ 0    0.4470    0.7410];
        case 2 
            color =[0.8500    0.3250    0.0980 ];
        case 3
            color =[0.4660    0.6740    0.1880];
    end
    cont(i)=0;
   for j=1:100
       a=(squeeze(norma_error_muestras(2,1,3,i,3,j,4)));
        if N_errores(2,1,3,i,3,j)==0 && a<4
           cont(i)=cont(i)+1;
%             pause(2)
            semilogy(squeeze(norma_error_muestras(2,1,3,i,3,j,:)),'Color',color)
            title(num2str(j))
            hold on
        end
       
   end
    
    
end