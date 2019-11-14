close all
clear all
load workspace_proof_100exp_V8.mat
load norma_error_x_MLEF.mat
clc
frequency=[16,80];
N_en=[20,40,80];
S=[0.7,1];
for obs=1:2
    for fre=1:2
       for N=[1,3]
           Nmlef_A=[1 1 2];
           Nmlef=Nmlef_A(N);
           for gam=[1,3,5]
               gam_mlefA=[1 1 2 1 3];
               gamMLEF=gam_mlefA(gam);
               fig=figure;
                ini_error_XB=1000+1500*rand(1,1);
               plot(0:25,log10([ini_error_XB squeeze(norma_error_x_MLEF(obs,fre,Nmlef,gamMLEF,:))']),'Color',[0 0 0],'LineWidth',2,'Marker','o','MarkerFaceColor',[0 0 0])
               hold on
               titulo=['\delta' 't= ' num2str(frequency(fre)) ' ,N= ' num2str(N_en(N)) ' ,s= ' num2str(S(obs)) ' ,\gamma= ' num2str(gam)   ];
               titulo2=['delta_t=_' num2str(frequency(fre)) '_N=' num2str(N_en(N)) '_s=_' num2str(S(obs)*100) '_gamma=_' num2str(gam)];
%                title(titulo,'FontAngle','italic','FontSize',16,'FontName','Arial')
              
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
                           b=squeeze(norma_error_muestras(obs,fre,N,rad,gam,j,:))>10^3;
                           b=sum(b);
                            if N_errores(obs,fre,N,rad,gam,j)==0 && b==0  %&& a2<(a1/15) %&& a3<10^-1 
                               cont=cont+1; 
                               linea(cont,:)=squeeze(norma_error_muestras(obs,fre,N,rad,gam,j,:));
                               if isnan(linea(cont,end)) || linea(cont,end)==0
                                   linea(cont,end)=linea(cont,end-1);
                               end
                            end

                   end
                  if cont>0 
                   plot(0:25,log10([ini_error_XB mean(linea,1)]),'Color',color,'LineWidth',2,'Marker','o','MarkerFaceColor',color)
                   rmse(obs,fre,N,rad,gam)=mean(log10(mean(linea)));
                   grid on
                   axis([0 25 -2 4])
                   ylabel('log(\lambda_t)','FontSize',16,'Interpreter','tex')
                   xlabel('Assimilation step (t)','FontSize',16,'Interpreter','tex')
%                    title(titulo,'FontAngle','italic','FontSize',16,'FontName','Arial','FontWeight','Normal','Interpreter','tex')
                  
                  hold on
                  
                  end
                  
               end
               if norma_error_x_MLEF(obs,fre,Nmlef,gamMLEF,end)==0
                   norma_error_x_MLEF(obs,fre,Nmlef,gamMLEF,end)=norma_error_x_MLEF(obs,fre,Nmlef,gamMLEF,end-1);
                   
               end
               
              legend({'MLEF','MLEF-MC r=1','MLEF-MC r=5','MLEF-MC r=10'},'FontSize',12,'Interpreter','tex')
                
%                saveas(fig,titulo2,'epsc')
               
           end

       end


    end
end
% close all
%  Graficas_faltantes

