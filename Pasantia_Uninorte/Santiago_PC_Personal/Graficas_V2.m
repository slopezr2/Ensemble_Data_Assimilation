close all
clear all
load  workspace_proof_100exp_V7.mat
frequencia=[1 5 10];
radio=[1 5 10 15];
for fre=1:3
   for rad=1:4
       fig=(fre-1)*(fre+1) +rad;
       
       clc
%       X=1:M*10; 
X=1:25;

      for i=1:N_exp
        if N_errores(1,fre,1,rad,1,i)==0
          Y1(:,i)=squeeze(norma_error_muestras(1,fre,1,rad,1,i,:));
        else
          Y1(:,i)=NaN;
        end
        if N_errores(1,fre,1,rad,2,i)==0
          Y2(:,i)=squeeze(norma_error_muestras(1,fre,1,rad,2,i,:));
        else
          Y2(:,i)=NaN;
        end
        if N_errores(1,fre,1,rad,3,i)==0
          Y3(:,i)=squeeze(norma_error_muestras(1,fre,1,rad,3,i,:));
        else
          Y3(:,i)=NaN;
        end
        if N_errores(1,fre,1,rad,4,i)==0
          Y4(:,i)=squeeze(norma_error_muestras(1,fre,1,rad,4,i,:));
        else
          Y4(:,i)=NaN;
        end
        if N_errores(1,fre,1,rad,5,i)==0
          Y5(:,i)=squeeze(norma_error_muestras(1,fre,1,rad,5,i,:));
        else
          Y5(:,i)=NaN;
        end
        if N_errores(2,fre,1,rad,1,i)==0
          Y6(:,i)=squeeze(norma_error_muestras(2,fre,1,rad,1,i,:));
        else
          Y6(:,i)=NaN;
        end
        if N_errores(2,fre,1,rad,2,i)==0
          Y7(:,i)=squeeze(norma_error_muestras(2,fre,1,rad,2,i,:));
        else
          Y7(:,i)=NaN;
        end
        if N_errores(2,fre,1,rad,3,i)== 0
          Y8(:,i)=squeeze(norma_error_muestras(2,fre,1,rad,3,i,:));
        else
          Y8(:,i)=NaN;
        end
        if N_errores(2,fre,1,rad,4,i)==0
          Y9(:,i)=squeeze(norma_error_muestras(2,fre,1,rad,4,i,:));
        else
          Y9(:,i)=NaN;
        end
        if N_errores(2,fre,1,rad,5,i)==0
          Y10(:,i)=squeeze(norma_error_muestras(2,fre,1,rad,5,i,:));
        else
          Y10(:,i)=NaN;
        end
        if N_errores(1,fre,2,rad,1,i)==0
          Y11(:,i)=squeeze(norma_error_muestras(1,fre,2,rad,1,i,:));
        else
          Y11(:,i)=NaN;
        end
        if N_errores(1,fre,2,rad,2,i)==0
          Y12(:,i)=squeeze(norma_error_muestras(1,fre,2,rad,2,i,:));
        else
          Y12(:,i)=NaN;
        end
        if N_errores(1,fre,2,rad,3,i)==0
          Y13(:,i)=squeeze(norma_error_muestras(1,fre,2,rad,3,i,:));
        else
          Y13(:,i)=NaN*ones(muestra,1);
        end
        if N_errores(1,fre,2,rad,4,i)==0
          Y14(:,i)=squeeze(norma_error_muestras(1,fre,2,rad,4,i,:));
        else
          Y14(:,i)=NaN;
        end
        if N_errores(1,fre,2,rad,5,i)==0
          Y15(:,i)=squeeze(norma_error_muestras(1,fre,2,rad,5,i,:));
        else
          Y15(:,i)=NaN;
        end
        if N_errores(2,fre,2,rad,1,i)==0
          Y16(:,i)=squeeze(norma_error_muestras(2,fre,2,rad,1,i,:));
        else
          Y16(:,i)=NaN;
        end
        if N_errores(2,fre,2,rad,2,i)==0
          Y17(:,i)=squeeze(norma_error_muestras(2,fre,2,rad,2,i,:));
        else
          Y17(:,i)=NaN;
        end
        if N_errores(2,fre,2,rad,3,i)==0
          Y18(:,i)=squeeze(norma_error_muestras(2,fre,2,rad,3,i,:));
        else
          Y18(:,i)=NaN;
        end
        if N_errores(2,fre,2,rad,4,i)==0
          Y19(:,i)=squeeze(norma_error_muestras(2,fre,2,rad,4,i,:));
        else
          Y19(:,i)=NaN;
        end
        if N_errores(2,fre,2,rad,5,i)==0
          Y20(:,i)=squeeze(norma_error_muestras(2,fre,2,rad,5,i,:));
        else
          Y20(:,i)=NaN;
        end
        if N_errores(1,fre,3,rad,1,i)==0
          Y21(:,i)=squeeze(norma_error_muestras(1,fre,3,rad,1,i,:));
        else
          Y21(:,i)=NaN;
        end
        if N_errores(1,fre,3,rad,2,i)==0
          Y22(:,i)=squeeze(norma_error_muestras(1,fre,3,rad,2,i,:));
        else
          Y22(:,i)=NaN;
        end
        if N_errores(1,fre,3,rad,3,i)==0
          Y23(:,i)=squeeze(norma_error_muestras(1,fre,3,rad,3,i,:));
        else
          Y23(:,i)=NaN;
        end
        if N_errores(1,fre,3,rad,4,i)==0
          Y24(:,i)=squeeze(norma_error_muestras(1,fre,3,rad,4,i,:));
        else
          Y24(:,i)=NaN;
        end
        if N_errores(1,fre,3,rad,1,i)==0
          Y25(:,i)=squeeze(norma_error_muestras(1,fre,3,rad,5,i,:));
        else
          Y25(:,i)=NaN;
        end
        if N_errores(2,fre,3,rad,1,i)==0
          Y26(:,i)=squeeze(norma_error_muestras(2,fre,3,rad,1,i,:));
        else
          Y26(:,i)=NaN;
        end
        if N_errores(2,fre,3,rad,2,i)==0
          Y27(:,i)=squeeze(norma_error_muestras(2,fre,3,rad,2,i,:));
        else
          Y27(:,i)=NaN;
        end
        if N_errores(2,fre,3,rad,3,i)==0
          Y28(:,i)=squeeze(norma_error_muestras(2,fre,3,rad,3,i,:));
        else
          Y28(:,i)=NaN;
        end
        if N_errores(2,fre,3,rad,4,i)==0
          Y29(:,i)=squeeze(norma_error_muestras(2,fre,3,rad,4,i,:));
        else
          Y29(:,i)=NaN;
        end
        if N_errores(2,fre,3,rad,5,i)==0
          Y30(:,i)=squeeze(norma_error_muestras(2,fre,3,rad,5,i,:));
        else
          Y30(:,i)=NaN;
        end
      end
      createfigure_V3(fig,frequencia(fre),radio(rad),X,Y1,X,Y2,X,Y3,X,Y4,X,Y5,X,Y6,X,Y7,X,Y8,X,Y9,X,Y10,X,Y11,X,Y12,X,Y13,X,Y14,X,Y15,X,Y16,X,Y17,X,Y18,X,Y19,X,Y20,X,Y21,X,Y22,X,Y23,X,Y24,X,Y25,X,Y26,X,Y27,X,Y28,X,Y29,X,Y30)
      titulo=['Error_Norm_F_obs=_' num2str(frequencia(fre)) '_and_r=_' num2str(radio(rad)),'.png'];
      saveas(fig,titulo)
      clc
   end
    
    
end