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
%     subplot(4,2,2*i-1)
if i<4
    ini=2.1*EB(1,i);
else
    ini=0.5*EB(1,4);
end

fig=figure;
    plot([0:12],squeeze([ini EA(:,i)'] ),'Color',[ 0    0.4470    0.7410],'LineWidth',2,'Marker','o','MarkerFaceColor',[ 0    0.4470    0.7410])
    hold on
    grid on
    plot([0:12],squeeze([ini EAgamma3(:,i)'] ),'Color',[0.8500    0.3250    0.0980 ],'LineWidth',2,'Marker','o','MarkerFaceColor',[0.8500    0.3250    0.0980 ])
    plot([0:12],squeeze([ini EAgamma5(:,i)'] ),'Color',[0.4660    0.6740    0.1880],'LineWidth',2,'Marker','o','MarkerFaceColor',[0.4660    0.6740    0.1880])
    legend({'MLEF-MC \gamma=1';'MLEF-MC \gamma=3';'MLEF-MC \gamma=5'},'FontSize',12)
    ylabel('log(\lambda_t)','FontSize',16);
    xlabel('Assimilation step (t)','FontSize',16)
    if i<4
       ylim([-1.25 0.7]) 
    end
%     title(variables{i},'FontAngle','italic','FontSize',12,'FontName','Arial','FontWeight','Normal')
    titulo2=(['s=07_',variables{i},'.eps']);
     saveas(fig,titulo2,'epsc')
fig=figure;
    plot([0:12],squeeze([ini EAgamma1_s1(:,i)'] ),'Color',[ 0    0.4470    0.7410],'LineWidth',2,'Marker','o','MarkerFaceColor',[ 0    0.4470    0.7410])
    hold on
    grid on
    plot([0:12],squeeze([ini EAgamma3_s1(:,i)'] ),'Color',[0.8500    0.3250    0.0980 ],'LineWidth',2,'Marker','o','MarkerFaceColor',[0.8500    0.3250    0.0980 ])
    plot([0:12],squeeze([ini EAgamma5_s1(:,i)'] ),'Color',[0.4660    0.6740    0.1880],'LineWidth',2,'Marker','o','MarkerFaceColor',[0.4660    0.6740    0.1880])
    legend({'MLEF-MC \gamma=1';'MLEF-MC \gamma=3';'MLEF-MC \gamma=5'},'FontSize',12)
    ylabel('log(\lambda_t)','FontSize',16);
    xlabel('Assimilation step (t)','FontSize',15)
    if i<4
       ylim([-1.25 0.7]) 
    end
%     title(variables{i},'FontAngle','italic','FontSize',12,'FontName','Arial','FontWeight','Normal')
    titulo2=(['s=1_',variables{i},'.eps']);
    
     saveas(fig,titulo2,'epsc')
end
    