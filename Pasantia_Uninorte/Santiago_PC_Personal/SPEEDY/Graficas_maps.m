% load Santiago_ExpSPEEDLW_r1_o_0_N100_F8.mat
load xmr_time.mat
close all
clc
variables={'Zonal wind','V wind','Temperature','Specific Humidity','Presure'};
x1lim=[-20 -30 240 -1*10^-3 5*10^4];
x2lim=[ 55 30 300 7.5*10^-3 11*10^4];
snapshot=12;
level=2;
%==For 3D variables===
for i=[1,3]
    %===XA===
    aux=xmr_time(i);
    aux=aux{1};
    Z=aux(:,:,level,snapshot-1)';
    Z=[Z(:,end/2+1:end) Z(:,1:end/2)];
%     aux=xma_time(1,i,snapshot);
%     aux=aux{1};
%     Z=aux(:,:,level)';
%     Z=[Z(:,end/2+1:end) Z(:,1:end/2)];
    figure
%      subplot(2,4,[7 8])
    fig=worldmap('World');
    baseR = makerefmat('RasterSize', size(Z),'Latlim',[-90 90],'Lonlim',[-180 180]);
    hh = meshm(Z, baseR);
    load coast
   
    plotm(lat, long, 0.01,'k');
    colormap(fig,'jet');
    set(gca,'LooseInset',get(gca,'TightInset')); 
%     title(['Analysis State'],'FontAngle','italic','FontSize',12,'FontName','Arial','FontWeight','Normal')
caxis([x1lim(i) x2lim(i)])
    colorbar
    %===XB===
    aux=xmb_time(1,i,6);
    aux=aux{1};
    Z=aux(:,:,level)';
    Z=[Z(:,end/2+1:end) Z(:,1:end/2)];
%     figure
%  subplot(2,4,[5 6])
figure
    fig=worldmap('World');
    baseR = makerefmat('RasterSize', size(Z),'Latlim',[-90 90],'Lonlim',[-180 180]);
    hh = meshm(Z, baseR);
    load coast
   
    plotm(lat, long, 0.01,'k');
    colormap(fig,'jet');
    set(gca,'LooseInset',get(gca,'TightInset')); 
%     title(['Background State'],'FontAngle','italic','FontSize',12,'FontName','Arial','FontWeight','Normal')
caxis([x1lim(i) x2lim(i)])
    colorbar
    %===real===
    aux=xmr_time(i);
    aux=aux{1};
    Z=aux(:,:,level,snapshot)';
    Z=[Z(:,end/2+1:end) Z(:,1:end/2)];
%     figure
%  subplot(2,4,[2 3])
figure
    fig=worldmap('World');
    baseR = makerefmat('RasterSize', size(Z),'Latlim',[-90 90],'Lonlim',[-180 180]);
    hh = meshm(Z, baseR);
    load coast
   
    plotm(lat, long, 0.01,'k');
    colormap(fig,'jet');
    set(gca,'LooseInset',get(gca,'TightInset')); 
%     title(['True State '],'FontAngle','italic','FontSize',12,'FontName','Arial','FontWeight','Normal')
    caxis([x1lim(i) x2lim(i)])
    colorbar
end
%     %===XA===
%     aux=xma_time(1,5,snapshot);
%     aux=aux{1};
%     Z=aux(:,:,1)';
%     Z=[Z(:,end/2+1:end) Z(:,1:end/2)];
%     figure
%     fig=worldmap('World');
%     baseR = makerefmat('RasterSize', size(Z),'Latlim',[-90 90],'Lonlim',[-180 180]);
%     hh = meshm(Z, baseR);
%     load coast
%     plotm(lat, long, 0.01,'k');
%     colormap(fig,'jet');
%     set(gca,'LooseInset',get(gca,'TightInset')); 
%     title(['XA for ' variables(5)])
% caxis([x1lim(5) x2lim(5)])
%     %===XB===
%     aux=xmb_time(1,5,snapshot);
%     aux=aux{1};
%     Z=aux(:,:,1)';
%     Z=[Z(:,end/2+1:end) Z(:,1:end/2)];
%     figure
%     fig=worldmap('World');
%     baseR = makerefmat('RasterSize', size(Z),'Latlim',[-90 90],'Lonlim',[-180 180]);
%     hh = meshm(Z, baseR);
%     load coast
%     plotm(lat, long, 0.01,'k');
%     colormap(fig,'jet');
%     set(gca,'LooseInset',get(gca,'TightInset')); 
%     title(['XB for ' variables(5)])
% caxis([x1lim(5) x2lim(5)])
%     %===real===
%     aux=xmr_time(5);
%     aux=aux{1};
%     Z=aux(:,:,snapshot)';
%     Z=[Z(:,end/2+1:end) Z(:,1:end/2)];
%     figure
%     fig=worldmap('World');
%     baseR = makerefmat('RasterSize', size(Z),'Latlim',[-90 90],'Lonlim',[-180 180]);
%     hh = meshm(Z, baseR);
%     load coast
%     plotm(lat, long, 0.01,'k');
%     colormap(fig,'jet');
%     set(gca,'LooseInset',get(gca,'TightInset')); 
%     title(['real for ' variables(5)])
%      caxis([x1lim(5) x2lim(5)])
