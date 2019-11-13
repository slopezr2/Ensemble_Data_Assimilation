close all
load error_EnKF_KA.mat
load error_Ledoid.mat
load error_Schur.mat
fig=figure;
for Nm=[1 2]
    Nm_opt=[50 75];
    for freq=[1]
        freq_opt=[1];
        for Nen=1:2
            Nen_opt=[20 40];
            if Nm==2 && Nen==1
            subplot(2,2,3)    
            else
            subplot(2,2,Nm*Nen)
            end
            a=squeeze((mean(error_Schur(Nm,freq,Nen,:,:),5)));
            [~,kk1]=max(a);
            plot(log10(movmean(squeeze((mean(error_Schur(Nm,freq,Nen,kk1,:),4))),100)),'LineWidth',2)
            hold on
            a=squeeze((mean(error_Ledoid(Nm,freq,Nen,:,:),5)));
            [~,kk2]=max(a);
            plot(log10(movmean(squeeze((mean(error_Ledoid(Nm,freq,Nen,kk2,:),4))),100)),'LineWidth',2)
            a=squeeze((mean(error_EnKF_KA(Nm,freq,Nen,:,:),5)));
            [~,kk3]=min(a);
            plot(log10(movmean(squeeze((mean(error_EnKF_KA(Nm,freq,Nen,kk3,:),4))),100)),'LineWidth',2),legend('EnKF-Cl','EnKF-RBLW','EnKF-KA')
            ylabel('log(L_t)')
            xlabel('Time[h]')
            titulo=['N= ',num2str(Nen_opt(Nen)),', \delta','t= ',num2str(frequency_opt(freq)),' h',', s= ',num2str(Nm_opt(Nm)/100)];
            title(titulo)
            figmat=(['N= ',num2str(Nen_opt(Nen)),', Observed states= ',num2str(Nm_opt(Nm)),'%, Observation frequency= ',num2str(frequency_opt(freq)),' h','.svg']);
            RMSE_KA=mean(sqrt(sum(error_EnKF_KA(Nm,freq,Nen,kk3,:).^2,5)/1500));
            RMSE_Ledoid=mean(sqrt(sum(error_Ledoid(Nm,freq,Nen,:,:).^2,5)/1500));
            RMSE_Schur=mean(sqrt(sum(error_Schur(Nm,freq,Nen,:,:).^2,5)/1500));
            disp([titulo,' KA= ',num2str(RMSE_KA),' Ledoid= ',num2str(RMSE_Ledoid),' CL= ',num2str(RMSE_Schur)])
%              saveas(fig,figmat)
        end
    end
end