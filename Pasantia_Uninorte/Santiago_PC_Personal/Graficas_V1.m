close all
frequencia=[1 5 10];
radio=[5 10 15];
for fre=1:3
   for rad=1:3
       fig=(fre-1)*(fre+1) +rad;
       
       clc
      X=1:25; 
      Y1=squeeze(norma_error(1,fre,1,rad,1,:,:));
      Y2=squeeze(norma_error(1,fre,1,rad,2,:,:));
      Y3=squeeze(norma_error(1,fre,1,rad,3,:,:));
      Y4=squeeze(norma_error(1,fre,1,rad,4,:,:));
      Y5=squeeze(norma_error(1,fre,1,rad,5,:,:));
      Y6=squeeze(norma_error(2,fre,1,rad,1,:,:));
      Y7=squeeze(norma_error(2,fre,1,rad,2,:,:));
      Y8=squeeze(norma_error(2,fre,1,rad,3,:,:));
      Y9=squeeze(norma_error(2,fre,1,rad,4,:,:));
      Y10=squeeze(norma_error(2,fre,1,rad,5,:,:));
      Y11=squeeze(norma_error(1,fre,2,rad,1,:,:));
      Y12=squeeze(norma_error(1,fre,2,rad,2,:,:));
      Y13=squeeze(norma_error(1,fre,2,rad,3,:,:));
      Y14=squeeze(norma_error(1,fre,2,rad,4,:,:));
      Y15=squeeze(norma_error(1,fre,2,rad,5,:,:));
      Y16=squeeze(norma_error(2,fre,2,rad,1,:,:));
      Y17=squeeze(norma_error(2,fre,2,rad,2,:,:));
      Y18=squeeze(norma_error(2,fre,2,rad,3,:,:));
      Y19=squeeze(norma_error(2,fre,2,rad,4,:,:));
      Y20=squeeze(norma_error(2,fre,2,rad,5,:,:));
      Y21=squeeze(norma_error(1,fre,3,rad,1,:,:));
      Y22=squeeze(norma_error(1,fre,3,rad,2,:,:));
      Y23=squeeze(norma_error(1,fre,3,rad,3,:,:));
      Y24=squeeze(norma_error(1,fre,3,rad,4,:,:));
      Y25=squeeze(norma_error(1,fre,3,rad,5,:,:));
      Y26=squeeze(norma_error(2,fre,3,rad,1,:,:));
      Y27=squeeze(norma_error(2,fre,3,rad,2,:,:));
      Y28=squeeze(norma_error(2,fre,3,rad,3,:,:));
      Y29=squeeze(norma_error(2,fre,3,rad,4,:,:));
      Y30=squeeze(norma_error(2,fre,3,rad,5,:,:));
      createfigure_V2(fig,frequencia(fre),radio(rad),X,Y1,X,Y2,X,Y3,X,Y4,X,Y5,X,Y6,X,Y7,X,Y8,X,Y9,X,Y10,X,Y11,X,Y12,X,Y13,X,Y14,X,Y15,X,Y16,X,Y17,X,Y18,X,Y19,X,Y20,X,Y21,X,Y22,X,Y23,X,Y24,X,Y25,X,Y26,X,Y27,X,Y28,X,Y29,X,Y30)
      titulo=['Error_Norm_F_obs=_' num2str(frequencia(fre)) '_and_r=_' num2str(radio(rad)),'.png'];
      saveas(fig,titulo)
      clc
   end
    
    
end