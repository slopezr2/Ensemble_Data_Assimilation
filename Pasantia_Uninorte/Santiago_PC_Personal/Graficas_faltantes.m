load aa
load bb
load cc
load aa1
load bb1
load cc1
load aa2
load bb2
load cc2
%  close all
clc
aa=log10(aa);
bb=log10(bb);
cc=log10(cc);
aa1=log10(aa1);
bb1=log10(bb1);
cc1=log10(cc1);
aa2=log10(aa2);
bb2=log10(bb2);
cc2=log10(cc2);




fig=figure;
plot(0:25,[3.1 aa],'LineWidth',2,'Color',[ 0    0.4470    0.7410],'Marker','o','MarkerFaceColor',[ 0    0.4470    0.7410])
hold on
plot(0:25,[3.1 bb],'LineWidth',2,'Color',[0.8500    0.3250    0.0980 ],'Marker','o','MarkerFaceColor',[0.8500    0.3250    0.0980 ])
plot(0:25,[3.1 cc],'LineWidth',2,'Color',[0.4660    0.6740    0.1880],'Marker','o','MarkerFaceColor',[0.4660    0.6740    0.1880])
axis([0 25 -2 4])
ylabel('log(\lambda_k)','FontSize',12)
xlabel('Assimilation step (k)','FontSize',12)
grid on
legend({'r=1','r=5','r=10'},'FontSize',12)
titulo=['\delta' 't= ' num2str(16) ' ,N= ' num2str(80) ' ,s= ' num2str(0.7) ' ,\gamma= ' num2str(1)   ];
title(titulo,'FontAngle','italic','FontSize',16,'FontName','Arial','FontWeight','Normal','Interpreter','tex')
titulo2=['delta_t=_' num2str(16) '_N=' num2str(80) '_s=_' num2str(0.7) '_gamma=_' num2str(1) '.eps'];
saveas(fig,titulo2)
titulo3=['delta_t=_' num2str(16) '_N=' num2str(80) '_s=_' num2str(0.7) '_gamma=_' num2str(1) '.fig'];
 saveas(fig,titulo3)
rmse(1,1,3,1,1)=mean(aa(2:end));
rmse(1,1,3,2,1)=mean(bb(2:end));
rmse(1,1,3,3,1)=mean(bb(2:end));



fig=figure;
plot(0:25,[3.05 aa2],'LineWidth',2,'Color',[ 0    0.4470    0.7410],'Marker','o','MarkerFaceColor',[ 0    0.4470    0.7410])
hold on
plot(0:25,[3.05 bb2],'LineWidth',2,'Color',[0.8500    0.3250    0.0980 ],'Marker','o','MarkerFaceColor',[0.8500    0.3250    0.0980 ])
plot(0:25,[3.05 cc2],'LineWidth',2,'Color',[0.4660    0.6740    0.1880],'Marker','o','MarkerFaceColor',[0.4660    0.6740    0.1880])
axis([0 25 -2 4])
ylabel('log(\lambda_k)','FontSize',12)
xlabel('Assimilation step (k)','FontSize',12)
grid on
legend({'r=1','r=5','r=10'},'FontSize',12)
titulo=['\delta' 't= ' num2str(80) ' ,N= ' num2str(80) ' ,s= ' num2str(0.7) ' ,\gamma= ' num2str(1)   ];
title(titulo,'FontAngle','italic','FontSize',16, 'FontName','Arial','FontWeight','Normal','Interpreter','tex')
titulo2=['delta_t=_' num2str(80) '_N=' num2str(80) '_s=_' num2str(0.7) '_gamma=_' num2str(1) '.eps'];
saveas(fig,titulo2)
titulo3=['delta_t=_' num2str(80) '_N=' num2str(80) '_s=_' num2str(0.7) '_gamma=_' num2str(1) '.fig'];
 saveas(fig,titulo3)
rmse(1,2,3,1,1)=mean(aa1(2:end));
rmse(1,2,3,2,1)=mean(bb1(2:end));
rmse(1,2,3,3,1)=mean(bb1(2:end));

fig=figure;
plot(0:25,[3.2 aa1],'LineWidth',2,'Color',[ 0    0.4470    0.7410],'Marker','o','MarkerFaceColor',[ 0    0.4470    0.7410])
hold on
plot(0:25,[3.2 bb1],'LineWidth',2,'Color',[0.8500    0.3250    0.0980 ],'Marker','o','MarkerFaceColor',[0.8500    0.3250    0.0980 ])
plot(0:25,[3.2 cc1],'LineWidth',2,'Color',[0.4660    0.6740    0.1880],'Marker','o','MarkerFaceColor',[0.4660    0.6740    0.1880])
axis([0 25 -2 4])
ylabel('log(\lambda_k)','FontSize',12)
xlabel('Assimilation step (k)','FontSize',12)
legend({'r=1','r=5','r=10'},'FontSize',12)
grid on
titulo=['\delta' 't= ' num2str(80) ' ,N= ' num2str(20) ' ,s= ' num2str(0.7) ' ,\gamma= ' num2str(1)   ];
title(titulo,'FontAngle','italic','FontSize',16, 'FontName','Arial','FontWeight','Normal','Interpreter','tex')
titulo2=['delta_t=_' num2str(80) '_N=' num2str(20) '_s=_' num2str(0.7) '_gamma=_' num2str(1) '.eps'];
saveas(fig,titulo2)
titulo3=['delta_t=_' num2str(80) '_N=' num2str(20) '_s=_' num2str(0.7) '_gamma=_' num2str(1) '.fig'];
 saveas(fig,titulo3)

rmse(1,2,1,1,1)=mean(aa2(2:end));
rmse(1,2,1,2,1)=mean(bb2(2:end));
rmse(1,2,1,3,1)=mean(bb2(2:end));