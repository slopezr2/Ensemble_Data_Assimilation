close all
clc
for obs=1
    for fre=2
       for N=[3]
           for gam=[1,3,5]
               figure
               titulo=['\delta t= ' num2str(fre) ' ,N=' num2str(N) ' ,s= ' num2str(obs) ' ,\gamma= ' num2str(gam)   ];
               title(titulo)
              for rad=1:3
                  switch rad
                        case 1 
                          color=[ 0    0.4470    0.7410];
                        case 2 
                            color =[0.8500    0.3250    0.0980 ];
                        case 3
                            color =[0.4660    0.6740    0.1880];
                  end
                  cont=0;
                  clear linea
                   for j=1:100
                           a1=(squeeze(norma_error_muestras(obs,fre,N,rad,gam,j,1)));
                           a2=(squeeze(norma_error_muestras(obs,fre,N,rad,gam,j,4)));
                           a3=(squeeze(norma_error_muestras(obs,fre,N,rad,gam,j,23:25)));
                           a3=mean(a3);
                           b=squeeze(norma_error_muestras(obs,fre,N,rad,gam,j,:))>10^6;
                           b=sum(b);
                            if N_errores(obs,fre,N,rad,gam,j)==0 && b==0 && a3<10^-1 && a2<(a1/15) 
                               cont=cont+1; 
                               
                               linea(cont,:)=squeeze(norma_error_muestras(obs,fre,N,rad,gam,j,:));
                               if isnan(linea(cont,end)) || linea(cont,end)==0
                                   linea(cont,end)=linea(cont,end-1);
                               end
                               semilogy((linea(cont,:)),'Color',color,'LineWidth',1)
                                title(titulo)
                  
                                 hold on
                            end

                   end
%                   if cont>0 
%                   semilogy(mean(linea),'Color',color,'LineWidth',2)
%                   title(titulo)
%                   
%                   hold on
%                   
%                   end
                  
              end
              legend('r=1','r=2','r=3')
           end

       end


    end
end





% for i=1:3
% %     figure
%     switch i
%         case 1 
%           color=[ 0    0.4470    0.7410];
%         case 2 
%             color =[0.8500    0.3250    0.0980 ];
%         case 3
%             color =[0.4660    0.6740    0.1880];
%     end
%     cont(i)=0;
%    for j=1:100
%        a=(squeeze(norma_error_muestras(2,1,3,i,3,j,4)));
%         if N_errores(2,1,3,i,3,j)==0 && a<4
%            cont(i)=cont(i)+1;
% %             pause(2)
%             semilogy(squeeze(norma_error_muestras(2,1,3,i,3,j,:)),'Color',color)
%             title(num2str(j))
%             hold on
%         end
%        
%    end
%     
%     
% end