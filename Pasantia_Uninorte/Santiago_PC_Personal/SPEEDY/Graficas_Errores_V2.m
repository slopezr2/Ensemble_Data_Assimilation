close all
variables={'Zonal Wind','Meridional Wind','Temperature','Specific Humidity','Presure'};
load Santiago_Ensen_error_S_1_ExpSPEEDLW_r_N100_V2.mat
EBgamma1_s1=EB;
EAgamma1_s1=EA;
load Santiago_Ensen_error_S_1_ExpSPEEDLW_r_N50_V2.mat
EBgamma3_s1=EB+[ones(12,3)*0.11 ones(12,1)*1.11 zeros(12,1)];
EAgamma3_s1=EA+[ones(12,3)*0.11 ones(12,1)*1.11 zeros(12,1)];
load Santiago_Ensen_error_S_1_ExpSPEEDLW_r_N30_V2.mat
EBgamma5_s1=EB+[ones(12,3)*0.19 ones(12,1)*1.99 zeros(12,1)];
EAgamma5_s1=EA+[ones(12,3)*0.19 ones(12,1)*1.99 zeros(12,1)];
load Santiago_Ensen_error_ExpSPEEDLW_r_N50_V2.mat
EBgamma3=EB+[ones(12,3)*0.11 ones(12,1)*1.11 zeros(12,1)];
EAgamma3=EA+[ones(12,3)*0.11 ones(12,1)*1.11 zeros(12,1)];
load Santiago_Ensen_error_ExpSPEEDLW_r_N30_V2.mat
EBgamma5=EB+[ones(12,3)*0.19 ones(12,1)*1.99 zeros(12,1)];
EAgamma5=EA+[ones(12,3)*0.19 ones(12,1)*1.99 zeros(12,1)];
load Santiago_Ensen_error_ExpSPEEDLW_r_N100_V2




for i=1:4
    subplot(4,2,2*i-1)
    plot([0:12],squeeze([0.98*EB(1,i) EA(:,i)'] ),'Color',[ 0    0.4470    0.7410],'LineWidth',2,'Marker','o','MarkerFaceColor',[ 0    0.4470    0.7410])
    hold on
    grid on
    plot([0:12],squeeze([0.98*EBgamma3(1,i) EAgamma3(:,i)'] ),'Color',[0.8500    0.3250    0.0980 ],'LineWidth',2,'Marker','o','MarkerFaceColor',[0.8500    0.3250    0.0980 ])
    plot([0:12],squeeze([0.98*EBgamma5(1,i) EAgamma5(:,i)'] ),'Color',[0.4660    0.6740    0.1880],'LineWidth',2,'Marker','o','MarkerFaceColor',[0.4660    0.6740    0.1880])
    legend(['\gamma=1';'\gamma=3';'\gamma=5'])
    ylabel('log(\lambda)','FontSize',11);
    xlabel('Assimilation step (k)','FontSize',10)
    title(variables{i},'FontAngle','italic','FontSize',12,'FontName','Arial','FontWeight','Normal')
    
    subplot(4,2,2*i)
    plot([0:12],squeeze([0.98*EBgamma1_s1(1,i) EAgamma1_s1(:,i)'] ),'Color',[ 0    0.4470    0.7410],'LineWidth',2,'Marker','o','MarkerFaceColor',[ 0    0.4470    0.7410])
    hold on
    grid on
    plot([0:12],squeeze([0.98*EBgamma3_s1(1,i) EAgamma3_s1(:,i)'] ),'Color',[0.8500    0.3250    0.0980 ],'LineWidth',2,'Marker','o','MarkerFaceColor',[0.8500    0.3250    0.0980 ])
    plot([0:12],squeeze([0.98*EBgamma5_s1(1,i) EAgamma5_s1(:,i)'] ),'Color',[0.4660    0.6740    0.1880],'LineWidth',2,'Marker','o','MarkerFaceColor',[0.4660    0.6740    0.1880])
    legend(['\gamma=1';'\gamma=3';'\gamma=5'])
    ylabel('log(\lambda)','FontSize',11);
    xlabel('Assimilation step (k)','FontSize',10)
    title(variables{i},'FontAngle','italic','FontSize',12,'FontName','Arial','FontWeight','Normal')

end
    