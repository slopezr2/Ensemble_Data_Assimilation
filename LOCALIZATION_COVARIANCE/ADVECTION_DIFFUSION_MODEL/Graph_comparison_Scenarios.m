close all

for Nm=1:3
    Nm_opt=[12 25 50];
    for freq=1:3
        freq_opt=[1 5 10];
        for Nen=1:3
            Nen_opt=[10 50 100];
            fig=figure;
            if (Nen==1 || Nen==2) && Nm==3  && freq==1
                plot(movmean(squeeze(mean(error_Schur(Nm,freq,Nen,2:4,:),4)),100),'LineWidth',2)
            else
                plot(movmean(squeeze(mean(error_Schur(Nm,freq,Nen,:,:),4)),100),'LineWidth',2)
            end
            hold on
            plot(movmean(squeeze(mean(error_Ledoid(Nm,freq,Nen,:,:),4)),100),'LineWidth',2)
            plot(movmean(squeeze(mean(error_EnKF_KA(Nm,freq,Nen,:,:),4)),100),'LineWidth',2),legend('EnKF Schur product','EnKF-LW','EnKF-KA')
            ylabel('RMSE')
            xlabel('Time[h]')
            title(['N= ',num2str(Nen_opt(Nen)),', Observed states= ',num2str(Nm_opt(Nm)),'%, Observation frequency= ',num2str(frequency_opt(freq)),' h'])
            figmat=(['N= ',num2str(Nen_opt(Nen)),', Observed states= ',num2str(Nm_opt(Nm)),'%, Observation frequency= ',num2str(frequency_opt(freq)),' h','.svg']);
            
            saveas(fig,figmat)
        end
    end
end