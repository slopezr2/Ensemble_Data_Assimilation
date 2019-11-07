 close all
clc
% load rmse.mat
figure1 = figure;

% Create axes
axes1 = axes('Position',[0.303806734992682 0.783167155425219 0.15 0.1464]);
plot([1 5 10],squeeze(rmse(1,1,3,:,1)),'o--','LineWidth',2,'MarkerSize',5,'MarkerFaceColor','b')
% Create ylabel
ylabel('log(\lambda)','FontSize',14);

% Create xlabel
xlabel('r','FontSize',14);

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[0 11]);
% Set the remaining axes properties
set(axes1,'XGrid','on','XTick',[0 2 4 6 8 10 11],'YGrid','on');
% Create axes
axes2 = axes('Position',...
    [0.555013792518098 0.783125610174911 0.150000000000005 0.146419844370543]);

% Create ylabel
plot([1 5 10],squeeze(rmse(1,1,3,:,3)),'o--','LineWidth',2,'MarkerSize',5,'MarkerFaceColor','b')

ylabel('log(\lambda)','FontSize',14);

% Create xlabel
xlabel('r','FontSize',14);

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes2,[0 11]);
% Set the remaining axes properties
set(axes2,'XGrid','on','XTick',[0 2 4 6 8 10 11],'YGrid','on');
% Create axes
axes3 = axes('Position',...
    [0.794083221932229 0.783125610174911 0.15 0.146419844370543]);
plot([1 5 10],squeeze(rmse(1,1,3,:,5)),'o--','LineWidth',2,'MarkerSize',5,'MarkerFaceColor','b')

% Create ylabel
ylabel('log(\lambda)','FontSize',14);

% Create xlabel
xlabel('r','FontSize',14);

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes3,[0 11]);
% Set the remaining axes properties
set(axes3,'XGrid','on','XTick',[0 2 4 6 8 10 11],'YGrid','on');
% Create axes
axes4 = axes('Position',...
    [0.302767203513912 0.552841515219805 0.150000000000001 0.1464]);
plot([1 5 10],squeeze(rmse(1,2,3,:,1)),'o--','LineWidth',2,'MarkerSize',5,'MarkerFaceColor','b')
% Create ylabel
ylabel('log(\lambda)','FontSize',14);

% Create xlabel
xlabel('r','FontSize',14);

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes4,[0 11]);
% Set the remaining axes properties
set(axes4,'XGrid','on','XTick',[0 2 4 6 8 10 11],'YGrid','on');
% Create axes
axes5 = axes('Position',...
    [0.555013792518098 0.550568787947079 0.150000000000005 0.146419844370543]);
plot([1 5 10],[-0.62 -0.51 -0.48],'o--','LineWidth',2,'MarkerSize',5,'MarkerFaceColor','b')
% Create ylabel
ylabel('log(\lambda)','FontSize',14);

% Create xlabel
xlabel('r','FontSize',14);

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes5,[0 11]);
% Set the remaining axes properties
set(axes5,'XGrid','on','XTick',[0 2 4 6 8 10 11],'YGrid','on');
% Create axes
axes6 = axes('Position',...
    [0.794083221932229 0.550568787947079 0.15 0.146419844370543]);
plot([1 5 10],[0.12 0.19 0.24],'o--','LineWidth',2,'MarkerSize',5,'MarkerFaceColor','b')
% Create ylabel
ylabel('log(\lambda)','FontSize',14);

% Create xlabel
xlabel('r','FontSize',14);

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes6,[0 11]);
% Set the remaining axes properties
set(axes6,'XGrid','on','XTick',[0 2 4 6 8 10 11],'YGrid','on');
% Create axes
axes7 = axes('Position',...
    [0.302767203513912 0.303984271559102 0.150000000000001 0.1464]);
plot([1 5 10],squeeze(rmse(2,1,3,:,1)),'o--','LineWidth',2,'MarkerSize',5,'MarkerFaceColor','b')
% Create ylabel
ylabel('log(\lambda)','FontSize',14);

% Create xlabel
xlabel('r','FontSize',14);

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes7,[0 11]);
% Set the remaining axes properties
set(axes7,'XGrid','on','XTick',[0 2 4 6 8 10 11],'YGrid','on');
% Create axes
axes8 = axes('Position',...
    [0.555013792518098 0.306256998831829 0.150000000000005 0.146419844370543]);
plot([1 5 10],squeeze(rmse(2,1,3,:,3)),'o--','LineWidth',2,'MarkerSize',5,'MarkerFaceColor','b')
% Create ylabel
ylabel('log(\lambda)','FontSize',14);

% Create xlabel
xlabel('r','FontSize',14);

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes8,[0 11]);
% Set the remaining axes properties
set(axes8,'XGrid','on','XTick',[0 2 4 6 8 10 11],'YGrid','on');
% Create axes
axes9 = axes('Position',...
    [0.794083221932229 0.306256998831829 0.15 0.146419844370543]);
plot([1 5 10],squeeze(rmse(2,1,3,:,5)),'o--','LineWidth',2,'MarkerSize',5,'MarkerFaceColor','b')
% Create ylabel
ylabel('log(\lambda)','FontSize',14);

% Create xlabel
xlabel('r','FontSize',14);

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes9,[0 11]);
% Set the remaining axes properties
set(axes9,'XGrid','on','XTick',[0 2 4 6 8 10 11],'YGrid','on');
% Create axes
axes10 = axes('Position',...
    [0.302767203513912 0.0603798876214555 0.150000000000001 0.1464]);
plot([1 5 10],squeeze(rmse(2,2,3,:,1)),'o--','LineWidth',2,'MarkerSize',5,'MarkerFaceColor','b')
% Create ylabel
ylabel('log(\lambda)','FontSize',14);

% Create xlabel
xlabel('r','FontSize',14);

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes10,[0 11]);
% Set the remaining axes properties
set(axes10,'XGrid','on','XTick',[0 2 4 6 8 10 11],'YGrid','on');
% Create axes
axes11 = axes('Position',...
    [0.555013792518098 0.0626526148941828 0.150000000000005 0.146419844370543]);
plot([1 5 10],squeeze(rmse(2,2,3,:,3)),'o--','LineWidth',2,'MarkerSize',5,'MarkerFaceColor','b')
% Create ylabel
ylabel('log(\lambda)','FontSize',14);

% Create xlabel
xlabel('r','FontSize',14);

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes11,[0 11]);
% Set the remaining axes properties
set(axes11,'XGrid','on','XTick',[0 2 4 6 8 10 11],'YGrid','on');
% Create axes
axes12 = axes('Position',...
    [0.794083221932229 0.0626526148941828 0.15 0.146419844370543]);
plot([1 5 10],squeeze(rmse(2,2,3,:,5)),'o--','LineWidth',2,'MarkerSize',5,'MarkerFaceColor','b')
% Create ylabel
ylabel('log(\lambda)','FontSize',14);

% Create xlabel
xlabel('r','FontSize',14);

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes12,[0 11]);
% Set the remaining axes properties
set(axes12,'XGrid','on','XTick',[0 2 4 6 8 10 11],'YGrid','on');
% Create line
annotation(figure1,'line',[0.170571010248902 0.975109809663251],...
    [0.713636363636363 0.713636363636363]);

% Create line
annotation(figure1,'line',[0.173499267935578 0.979502196193265],...
    [0.229545454545454 0.229545454545454]);

% Create line
annotation(figure1,'line',[0.0724743777452416 1.0],...
    [0.943700460829493 0.943700460829493]);

% Create line
annotation(figure1,'line',[0.0761346998535871 1.00],...
    [0.470973188102218 0.470973188102218],'LineWidth',1.5);

% Create line
annotation(figure1,'line',[0.0732064421669107 1.00],...
    [0.989155006284038 0.989155006284038],'LineWidth',1.5);

% Create textbox
annotation(figure1,'textbox',...
    [0.204513909224012 0.815909090909087 0.0414597364568077 0.0727272727272725],...
    'String','16 h',...
    'FontSize',12,...
    'FontAngle','italic',...
    'FitBoxToText','off',...
    'EdgeColor','none');

% Create textbox
annotation(figure1,'textbox',...
    [0.204513909224012 0.581818181818177 0.0414597364568077 0.0727272727272728],...
    'String','80 h',...
    'FontSize',12,...
    'FontAngle','italic',...
    'FitBoxToText','off',...
    'EdgeColor','none');

% Create textbox
annotation(figure1,'textbox',...
    [0.205978038067351 0.331818181818178 0.0414597364568077 0.0727272727272726],...
    'String','16 h',...
    'FontSize',12,...
    'FontAngle','italic',...
    'FitBoxToText','off',...
    'EdgeColor','none');

% Create textbox
annotation(figure1,'textbox',...
    [0.205978038067351 0.0977272727272682 0.0414597364568077 0.0727272727272729],...
    'String','80 h',...
    'FontSize',12,...
    'FontAngle','italic',...
    'FitBoxToText','off',...
    'EdgeColor','none');

% Create textbox
annotation(figure1,'textbox',...
    [0.0873836017569552 0.684090909090905 0.0414597364568078 0.0727272727272726],...
    'String','70%',...
    'FontSize',12,...
    'FontAngle','italic',...
    'FitBoxToText','off',...
    'EdgeColor','none');

% Create textbox
annotation(figure1,'textbox',...
    [0.0917759882869699 0.197727272727268 0.0414597364568078 0.0727272727272729],...
    'String','100%',...
    'FontSize',12,...
    'FontAngle','italic',...
    'FitBoxToText','off',...
    'EdgeColor','none');

% Create textbox
annotation(figure1,'textbox',...
    [0.203049780380674 0.914027694160142 0.026086383601757 0.0727272727272726],...
    'String','\delta t',...
    'FontSize',12,...
    'FontAngle','italic',...
    'FitBoxToText','off',...
    'EdgeColor','none');

% Create textbox
annotation(figure1,'textbox',...
    [0.0903118594436311 0.914027694160143 0.0260863836017569 0.0727272727272726],...
    'String',{'S'},...
    'FontSize',12,...
    'FontAngle','italic',...
    'FitBoxToText','off',...
    'EdgeColor','none');

% Create textbox
annotation(figure1,'textbox',...
    [0.364103953147878 0.918573148705596 0.0260863836017569 0.0727272727272726],...
    'String','\gamma=1',...
    'FontSize',12,...
    'FontAngle','italic',...
    'FitBoxToText','off',...
    'EdgeColor','none');

% Create textbox
annotation(figure1,'textbox',...
    [0.606417276720354 0.918573148705595 0.0260863836017569 0.0727272727272724],...
    'String','\gamma=3',...
    'FontSize',12,...
    'FontAngle','italic',...
    'FitBoxToText','off',...
    'EdgeColor','none');

% Create textbox
annotation(figure1,'textbox',...
    [0.853122986822841 0.918573148705595 0.026086383601757 0.0727272727272724],...
    'String','\gamma=5',...
    'FontSize',12,...
    'FontAngle','italic',...
    'FitBoxToText','off',...
    'EdgeColor','none');

