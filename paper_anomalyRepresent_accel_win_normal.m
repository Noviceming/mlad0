clear;close all;

% token = 1976;
channel = [26];

% [date, h] = colLocation(token,'2012-01-01')


date = '2012-03-05';
h = 18;
% fileName = ['/Volumes/ssd/sutong-2012-tidy/' date '/' date ' ' num2str(h,'%02d') '-VIB.mat'];
fileName = ['H:/sutong-2012-tidy/' date '/' date ' ' num2str(h,'%02d') '-VIB.mat'];
load(fileName);

t = 0.05:0.05:3600;
data = data - repmat(mean(data),[72000,1]);


figure
plot(t,data(:,channel)*100);
% plot(t,data(:,1),t,data(:,2),t,data(:,3));
xlabel('Time (s)');
ylabel('Accel. (cm/s^2)');
xlim([0 3600]);
% ylim([-0.8 0.6]);
% set(gca,'ytick', [-0.8 -0.6 -0.4 -0.2 0 0.2 0.4 0.6]);
set(gca,'fontname', 'Times New Roman','fontweight','bold');

% set(gca, 'fontsize', 20);
% set(gca,'Units','normalized', 'Position',[0.06 0.14 0.93 0.83]);  % control axis's position in figure
% % set(gca,'Units','normalized', 'OuterPosition',[0 0 1 1]);  % control axis's position in figure
% set(gcf,'Units','pixels','Position',[100, 100, 1900, 600]);

set(gca, 'fontsize', 14);
set(gca,'Units','normalized', 'Position',[0.12 0.21 0.87 0.7]);  % control axis's position in figure
% set(gca,'Units','normalized', 'OuterPosition',[0 0 1 1]);  % control axis's position in figure
set(gcf,'Units','pixels','Position',[100, 100, 600, 300]);

%%
folderName = 'plotForPaper';
if ~exist(folderName, 'dir'), mkdir(folderName); end
% saveName = ['accel_' date '-' num2str(h,'%02d') '_ch' tidyName(abbr(channel)) '_normal.emf'];
% saveas(gcf, [folderName '/' saveName]);
saveName = ['accel_' date '-' num2str(h,'%02d') '_ch' tidyName(abbr(channel)) '_normal.tif'];
saveas(gcf, [folderName '/' saveName]);
% saveName = ['accel_' date '-' num2str(h,'%02d') '_ch' tidyName(abbr(channel)) '_normal.eps'];
% saveas(gcf, [folderName '/' saveName]);

close