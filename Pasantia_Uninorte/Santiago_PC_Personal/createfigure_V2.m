function createfigure_V2(figura,fre,rad,X1,Y1,X2,Y2,X3,Y3,X4,Y4,X5,Y5,X6,Y6,X7,Y7,X8,Y8,X9,Y9,X10,Y10,X11,Y11,X12,Y12,X13,Y13,X14,Y14,X15,Y15,X16,Y16,X17,Y17,X18,Y18,X19,Y19,X20,Y20,X21,Y21,X22,Y22,X23,Y23,X24,Y24,X25,Y25,X26,Y26,X27,Y27,X28,Y28,X29,Y29,X30,Y30)
%CREATEFIGURE

%  Auto-generated by MATLAB on 12-Jun-2019 19:37:38
% Create figure
figure1 = figure(figura);
set(gcf, 'Position', [00,-10, 1366, 650])
% Create axes
subplot1 = subplot(6,5,1,'Parent',figure1,'Position',[0.853002817525253 0.504847056936329 0.123739495798319 0.0971084378999597]);
hold(subplot1,'on');
for i=1:size(Y15,2)
semilogy(X15,Y15(:,i),'r','Parent',subplot1);
end
%axes1 = axes('Parent',figure1,...
%     'Position',[0.853002817525253 0.504847056936329 0.123739495798319 0.0971084378999597]);

% Create ylabel
ylabel('Norm Error');

% Create xlabel


% Uncomment the following line to preserve the X-limits of the axes
axis([0 25 10^-1 10^3.5])
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes1,[0 100000]);
% Set the remaining axes properties
set(subplot1,'FontSize',8,'YMinorTick','on','YScale','log');
% Create axes
% 
 subplot2 = subplot(6,5,2,'Parent',figure1,'Position',[0.201742313323573 0.504847056936329 0.12373949579832 0.0971084378999597]);
 hold(subplot2,'on');
 for i=1:size(Y11,2)
 semilogy(X11,Y11(:,i),'r','Parent',subplot2);
 end
% % Create ylabel
ylabel({'%Obs=0.7','','Norm error'});
 axis([0 25 10^-1 10^3.5])
% 
% % Create xlabel
 
% 
% % Uncomment the following line to preserve the X-limits of the axes
% % xlim(axes2,[0 25]);
% % Uncomment the following line to preserve the Y-limits of the axes
% % ylim(axes2,[0 100000]);
% % Set the remaining axes properties
 set(subplot2,'FontSize',8,'YMinorTick','on','YScale','log');
% % Create axes



% Create axes
 subplot5 = subplot(6,5,1,'Parent',figure1,'Position',[0.527372565424413 0.803057125013947 0.123739495798319 0.0971084378999593]);
 hold(subplot5,'on');
% 
 for i=1:size(Y3,2)
 semilogy(X3,Y3(:,i),'r','Parent',subplot5);
 end
% 
% % Create ylabel
ylabel('Norm Error');
% 
% % Create xlabel
 axis([0 25 10^-1 10^3.5])

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes5,[0 25]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes5,[0 100000]);
% Set the remaining axes properties
 set(subplot5,'FontSize',8,'YMinorTick','on','YScale','log');
% Create axes
subplot6 = subplot(6,5,2,'Parent',figure1,'Position',[0.690187691474834 0.803057125013947 0.123739495798319 0.0971084378999593]);
hold(subplot6,'on');

for i=1:size(Y4,2)
semilogy(X4,Y4(:,i),'r','Parent',subplot6);
end
% Create ylabel
ylabel('Norm Error');
axis([0 25 10^-1 10^3.5])
% Create xlabel


% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes6,[0 25]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes6,[0 100000]);
% Set the remaining axes properties
set(subplot6,'FontSize',8,'YMinorTick','on','YScale','log');
% Create axes
subplot7 = subplot(6,5,2,'Parent',figure1,'Position',[0.853002817525253 0.803057125013947 0.123739495798319 0.0971084378999593]);
hold(subplot7,'on');

for i=1:size(Y5,2)
semilogy(X5,Y5(:,i),'r','Parent',subplot7);
end
% Create ylabel
ylabel('Norm Error');
axis([0 25 10^-1 10^3.5])
% Create xlabel


% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes7,[0 25]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes7,[0 100000]);
% Set the remaining axes properties
set(subplot7,'FontSize',8,'YMinorTick','on','YScale','log');
% Create axes

subplot8 = subplot(6,5,2,'Parent',figure1,'Position',[0.201742313323573 0.650640832696992 0.12373949579832 0.0971084378999595]);
hold(subplot8,'on');

for i=1:size(Y6,2)
semilogy(X6,Y6(:,i),'r','Parent',subplot8);
end
% Create ylabel
ylabel({'%Obs=1','','Norm error'});
axis([0 25 10^-1 10^3.5])
% Create xlabel


% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes8,[0 25]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes8,[0 100000]);
% Set the remaining axes properties
set(subplot8,'FontSize',8,'YMinorTick','on','YScale','log');
% Create axes

subplot9 = subplot(6,5,2,'Parent',figure1,'Position',[0.364557439373993 0.650640832696992 0.123739495798319 0.0971084378999595]);
hold(subplot9,'on');

for i=1:size(Y7,2)
semilogy(X7,Y7(:,i),'r','Parent',subplot9);
end
% Create ylabel
ylabel('Norm Error');
axis([0 25 10^-1 10^3.5])
% Create xlabel


% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes9,[0 25]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes9,[0 100000]);
% Set the remaining axes properties
set(subplot9,'FontSize',8,'YMinorTick','on','YScale','log');
% Create axes
subplot10 = subplot(6,5,2,'Parent',figure1,'Position',[0.527372565424413 0.650640832696992 0.123739495798319 0.0971084378999595]);
hold(subplot10,'on');

for i=1:size(Y8,2)
semilogy(X8,Y8(:,i),'r','Parent',subplot10);
end
% Create ylabel
ylabel('Norm Error');
axis([0 25 10^-1 10^3.5])
% Create xlabel


% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes10,[0 25]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes10,[0 100000]);
% Set the remaining axes properties
set(subplot10,'FontSize',8,'YMinorTick','on','YScale','log');
% Create axes
subplot11 = subplot(6,5,2,'Parent',figure1,'Position',[0.690187691474834 0.650640832696992 0.123739495798319 0.0971084378999595]);
hold(subplot11,'on');

for i=1:size(Y9,2)
semilogy(X9,Y9(:,i),'r','Parent',subplot11);
end
% Create ylabel
ylabel('Norm Error');
axis([0 25 10^-1 10^3.5])
% Create xlabel


% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes11,[0 25]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes11,[0 100000]);
% Set the remaining axes properties
set(subplot11,'FontSize',8,'YMinorTick','on','YScale','log');
% Create axes
subplot12 = subplot(6,5,2,'Parent',figure1,'Position',[0.853002817525253 0.650640832696992 0.123739495798319 0.0971084378999595]);
hold(subplot12,'on');

for i=1:size(Y10,2)
semilogy(X10,Y10(:,i),'r','Parent',subplot12);
end
% Create ylabel
ylabel('Norm Error');
axis([0 25 10^-1 10^3.5])
% Create xlabel


% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes12,[0 25]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes12,[0 100000]);
% Set the remaining axes properties
set(subplot12,'FontSize',8,'YMinorTick','on','YScale','log');
% Create axes
subplot13 = subplot(6,5,2,'Parent',figure1,'Position',[0.364557439373993 0.504847056936329 0.123739495798319 0.0971084378999597]);
hold(subplot13,'on');

for i=1:size(Y12,2)
semilogy(X12,Y12(:,i),'r','Parent',subplot13);
end

% Create ylabel
ylabel('Norm Error');
axis([0 25 10^-1 10^3.5])
% Create xlabel


% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes13,[0 25]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes13,[0 100000]);
% Set the remaining axes properties
set(subplot13,'FontSize',8,'YMinorTick','on','YScale','log');
% Create axes
subplot14 = subplot(6,5,2,'Parent',figure1,'Position',[0.527372565424413 0.504847056936329 0.123739495798319 0.0971084378999597]);
hold(subplot14,'on');
for i=1:size(Y13,2)
semilogy(X13,Y13(:,i),'r','Parent',subplot14);
end
% Create ylabel
ylabel('Norm Error');
axis([0 25 10^-1 10^3.5])
% Create xlabel


% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes14,[0 25]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes14,[0 100000]);
% Set the remaining axes properties
set(subplot14,'FontSize',8,'YMinorTick','on','YScale','log');
% Create axes
subplot15 = subplot(6,5,2,'Parent',figure1,'Position',[0.690187691474834 0.504847056936329 0.123739495798319 0.0971084378999597]);
hold(subplot15,'on');
for i=1:size(Y14,2)
semilogy(X14,Y14(:,i),'r','Parent',subplot15);
end

% Create ylabel
ylabel('Norm Error');
axis([0 25 10^-1 10^3.5])
% Create xlabel


% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes15,[0 25]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes15,[0 100000]);
% Set the remaining axes properties
set(subplot15,'FontSize',8,'YMinorTick','on','YScale','log');
% Create axes

subplot16 = subplot(6,5,2,'Parent',figure1,'Position',[0.201742313323573 0.357397652036594 0.123739495798319 0.0971084378999597]);
hold(subplot16,'on');
for i=1:size(Y16,2)
semilogy(X16,Y16(:,i),'r','Parent',subplot16);
end
% Create ylabel
ylabel({'%Obs=1','','Norm error'});
axis([0 25 10^-1 10^3.5])
% Create xlabel


% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes16,[0 25]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes16,[0 100000]);
% Set the remaining axes properties
set(subplot16,'FontSize',8,'YMinorTick','on','YScale','log');
% Create axes
subplot17 = subplot(6,5,2,'Parent',figure1,'Position',[0.364557439373993 0.357397652036594 0.123739495798319 0.0971084378999595]);
hold(subplot17,'on');
for i=1:size(Y17,2)
semilogy(X17,Y17(:,i),'r','Parent',subplot17);
end
% Create ylabel
ylabel('Norm Error');
axis([0 25 10^-1 10^3.5])
% Create xlabel


% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes17,[0 25]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes17,[0 100000]);
% Set the remaining axes properties
set(subplot17,'FontSize',8,'YMinorTick','on','YScale','log');
% Create axes
subplot18 = subplot(6,5,2,'Parent',figure1,'Position',[0.527372565424413 0.357397652036594 0.123739495798319 0.0971084378999595]);
hold(subplot18,'on');
for i=1:size(Y18,2)
semilogy(X18,Y18(:,i),'r','Parent',subplot18);
end

% Create ylabel
ylabel('Norm Error');
axis([0 25 10^-1 10^3.5])
% Create xlabel


% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes18,[0 25]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes18,[0 100000]);
% Set the remaining axes properties
set(subplot18,'FontSize',8,'YMinorTick','on','YScale','log');
% Create axes
subplot19 = subplot(6,5,2,'Parent',figure1,'Position',[0.690187691474834 0.357397652036594 0.123739495798319 0.0971084378999595]);
hold(subplot19,'on');
for i=1:size(Y19,2)
semilogy(X19,Y19(:,i),'r','Parent',subplot19);
end

% Create ylabel
ylabel('Norm Error');
% Create xlabel
axis([0 25 10^-1 10^3.5])

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes19,[0 25]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes19,[0 100000]);
% Set the remaining axes properties
set(subplot19,'FontSize',8,'YMinorTick','on','YScale','log');
% Create axes
subplot20 = subplot(6,5,2,'Parent',figure1,'Position',[0.853002817525253 0.357397652036594 0.123739495798319 0.0971084378999595]);
hold(subplot20,'on');
for i=1:size(Y20,2)
semilogy(X20,Y20(:,i),'r','Parent',subplot20);
end

% Create ylabel
ylabel('Norm Error');
axis([0 25 10^-1 10^3.5])
% Create xlabel


% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes20,[0 25]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes20,[0 100000]);
% Set the remaining axes properties
set(subplot20,'FontSize',8,'YMinorTick','on','YScale','log');
% Create axes
subplot21 = subplot(6,5,2,'Parent',figure1,'Position',[0.201742313323573 0.211603876275931 0.12373949579832 0.0971084378999597]);
hold(subplot21,'on');
for i=1:size(Y21,2)
semilogy(X21,Y21(:,i),'r','Parent',subplot21);
end

% Create ylabel
ylabel({'%Obs=0.7','','Norm error'});
axis([0 25 10^-1 10^3.5])
% Create xlabel


% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes21,[0 25]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes21,[0 100000]);
% Set the remaining axes properties
set(subplot21,'FontSize',8,'YMinorTick','on','YScale','log');
% Create axes

subplot22 = subplot(6,5,2,'Parent',figure1,'Position',[0.364557439373993 0.211603876275931 0.123739495798319 0.0971084378999597]);
hold(subplot22,'on');
for i=1:size(Y22,2)
semilogy(X22,Y22(:,i),'r','Parent',subplot22);
end

% Create ylabel
ylabel('Norm Error');

axis([0 25 10^-1 10^3.5])
% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes22,[0 25]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes22,[0 100000]);
% Set the remaining axes properties
set(subplot22,'FontSize',8,'YMinorTick','on','YScale','log');
% Create axes
subplot23 = subplot(6,5,2,'Parent',figure1,'Position',[0.527372565424413 0.211603876275931 0.123739495798319 0.0971084378999597]);
hold(subplot23,'on');
for i=1:size(Y23,2)
semilogy(X23,Y23(:,i),'r','Parent',subplot23);
end

% Create ylabel
ylabel('Norm Error');
axis([0 25 10^-1 10^3.5])
% Create xlabel


% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes23,[0 25]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes23,[0 100000]);
% Set the remaining axes properties
set(subplot23,'FontSize',8,'YMinorTick','on','YScale','log');
% Create axes
subplot24 = subplot(6,5,2,'Parent',figure1,'Position',[0.690187691474834 0.211603876275931 0.123739495798319 0.0971084378999597]);
hold(subplot24,'on');
for i=1:size(Y24,2)
semilogy(X24,Y24(:,i),'r','Parent',subplot24);
end

% Create ylabel
ylabel('Norm Error');
axis([0 25 10^-1 10^3.5])

% Create xlabel


% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes24,[0 25]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes24,[0 100000]);
% Set the remaining axes properties
set(subplot24,'FontSize',8,'YMinorTick','on','YScale','log');
% Create axes
subplot25 = subplot(6,5,2,'Parent',figure1,'Position',[0.853002817525253 0.211603876275931 0.123739495798319 0.0971084378999597]);
hold(subplot25,'on');
for i=1:size(Y25,2)
semilogy(X25,Y25(:,i),'r','Parent',subplot25);
end

% Create ylabel
ylabel('Norm Error');
axis([0 25 10^-1 10^3.5])
% Create xlabel


% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes25,[0 25]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes25,[0 100000]);
% Set the remaining axes properties
set(subplot25,'FontSize',8,'YMinorTick','on','YScale','log');
% Create axes
subplot26 = subplot(6,5,2,'Parent',figure1,'Position',[0.201742313323573 0.0575319548199034 0.12373949579832 0.0971084378999596]);
hold(subplot26,'on');
for i=1:size(Y26,2)
semilogy(X26,Y26(:,i),'r','Parent',subplot26);
end

% Create ylabel
ylabel({'%Obs=1','','Norm error'});
axis([0 25 10^-1 10^3.5])
% Create xlabel


% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes26,[0 25]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes26,[0 100000]);
% Set the remaining axes properties
set(subplot26,'FontSize',8,'YMinorTick','on','YScale','log');
% Create axes
subplot27 = subplot(6,5,2,'Parent',figure1,'Position',[0.364557439373993 0.0575319548199034 0.123739495798319 0.0971084378999596]);
hold(subplot27,'on');
for i=1:size(Y27,2)
semilogy(X27,Y27(:,i),'r','Parent',subplot27);
end

% Create ylabel
ylabel('Norm Error');
axis([0 25 10^-1 10^3.5])
% Create xlabel


% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes27,[0 25]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes27,[0 100000]);
% Set the remaining axes properties
set(subplot27,'FontSize',8,'YMinorTick','on','YScale','log');
% Create axes
subplot28 = subplot(6,5,2,'Parent',figure1,'Position',[0.527372565424413 0.0575319548199034 0.123739495798319 0.0971084378999596]);
hold(subplot28,'on');
for i=1:size(Y28,2)
semilogy(X28,Y28(:,i),'r','Parent',subplot28);
end

% Create ylabel
ylabel('Norm Error');
axis([0 25 10^-1 10^3.5])
% Create xlabel


% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes28,[0 25]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes28,[0 100000]);
% Set the remaining axes properties
set(subplot28,'FontSize',8,'YMinorTick','on','YScale','log');
% Create axes
subplot29 = subplot(6,5,2,'Parent',figure1,'Position',[0.690187691474834 0.0575319548199034 0.123739495798319 0.0971084378999596]);
hold(subplot29,'on');
for i=1:size(Y29,2)
semilogy(X29,Y29(:,i),'r','Parent',subplot29);
end

% Create ylabel
ylabel('Norm Error');
axis([0 25 10^-1 10^3.5])
% Create xlabel


% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes29,[0 25]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes29,[0 100000]);
% Set the remaining axes properties
set(subplot29,'FontSize',8,'YMinorTick','on','YScale','log');
% Create axes
subplot30 = subplot(6,5,2,'Parent',figure1,'Position',[0.853002817525253 0.0575319548199034 0.123739495798319 0.0971084378999596]);
hold(subplot30,'on');
for i=1:size(Y30,2)
semilogy(X30,Y30(:,i),'r','Parent',subplot30);
end

% Create ylabel
ylabel('Norm Error');
% Create xlabel
axis([0 25 10^-1 10^3.5])

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes30,[0 25]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes30,[0 100000]);
% Set the remaining axes properties
set(subplot30,'FontSize',8,'YMinorTick','on','YScale','log');
% Create textbox
% Create axes
 subplot4 = subplot(6,5,2,'Parent',figure1,'Position',[0.364557439373993 0.803057125013947 0.123739495798319 0.0971084378999593]);
hold(subplot4,'on');

for i=1:size(Y2,2)
semilogy(X2,Y2(:,i),'r','Parent',subplot4);
end
% Create ylabel
ylabel('Norm Error');
axis([0 25 10^-1 10^3.5])
% Create xlabel


% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes4,[0 25]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes4,[0 100000]);
% Set the remaining axes properties
set(subplot4,'FontSize',8,'YMinorTick','on','YScale','log');

subplot3 = subplot(6,5,1,'Parent',figure1,'Position',[0.201742313323573 0.803057125013947 0.12373949579832 0.0971084378999593]);
hold(subplot3,'on');

for i=1:size(Y1,2)
semilogy(X1,Y1(:,i),'r','Parent',subplot3);
end
% Create ylabel
ylabel({'%Obs=0.7','','Norm error'});
axis([0 25 10^-1 10^3.5])

% Create xlabel


% Create title
title({''});

% % Set the remaining axes properties
 set(subplot3,'FontSize',8,'YMinorTick','on','YScale','log');
annotation(figure1,'textbox',...
    [0.0322108345534407 0.449331127012013 0.053074669207434 0.0562913895442786],...
    'String',{'N=40'},...
    'LineStyle','none',...
    'FontSize',14);

% Create textbox
annotation(figure1,'textbox',...
    [0.0292825768667643 0.765556292574927 0.053074669207434 0.0562913895442786],...
    'String',{'N=20'},...
    'LineStyle','none',...
    'FontSize',14);

% Create textbox
titulo=['F_{obs}= ' num2str(fre) ' and r= ' num2str(rad)   ];
annotation(figure1,'textbox',...
    [0.454612005856516 0.923 0.3 0.08],...
    'String',titulo,...
    'LineStyle','none',...
    'FontSize',14);

% Create textbox
annotation(figure1,'textbox',...
    [0.244509516837482 0.898006623700755 0.0428257676095076 0.0562913895442786],...
    'String',{'\gamma=1'},...
    'LineStyle','none',...
    'FontSize',14);

% Create textbox
annotation(figure1,'textbox',...
    [0.4099560761347 0.898006623700755 0.0428257676095076 0.0562913895442786],...
    'String',{'\gamma=2'},...
    'LineStyle','none',...
    'FontSize',14);

% Create textbox
annotation(figure1,'textbox',...
    [0.567349926793558 0.898006623700755 0.0428257676095076 0.0562913895442786],...
    'String',{'\gamma=3'},...
    'LineStyle','none',...
    'FontSize',14);

% Create textbox
annotation(figure1,'textbox',...
    [0.731332357247438 0.898006623700755 0.0428257676095076 0.0562913895442786],...
    'String',{'\gamma=4'},...
    'LineStyle','none',...
    'FontSize',14);

% Create textbox
annotation(figure1,'textbox',...
    [0.904099560761347 0.898006623700755 0.0428257676095076 0.0562913895442786],...
    'String',{'\gamma=5'},...
    'LineStyle','none',...
    'FontSize',14);

% Create textbox
annotation(figure1,'textbox',...
    [0.034407027818448 0.149662252839828 0.053074669207434 0.0562913895442786],...
    'String',{'N=80'},...
    'LineStyle','none',...
    'FontSize',14);

% Create rectangle
annotation(figure1,'rectangle',...
    [0.0937042459736457 0.620860927152317 0.894582723279657 0.326158940397351],...
    'LineStyle','-.');

% Create rectangle
annotation(figure1,'rectangle',...
    [0.09370424597365 0.0149006622516556 0.894582723279659 0.307947019867549],...
    'LineStyle','-.');

% Create rectangle
annotation(figure1,'rectangle',...
    [0.09370424597365 0.327814569536424 0.894582723279659 0.288079470198675],...
    'LineStyle','-.');

