clear;clc;close all;

pathRoot = '/Volumes/midDisk/hangzhouwan-2016Q1-tidy/netmanager_b';
% pathRoot = 'F:\hangzhouwan-2016Q1-tidy\netmanager_b';

sensorNum = [1 4 15];
dateStart = '2016-01-01';
dateEnd = '2016-01-3';
sensorTrainRatio = 20/100;
% sensorPSize = 10;

% %% []
% sensor = adi(pathRoot,sensorNum,dateStart,dateEnd,sensorTrainRatio,[]);
% 
% %% s1
% step = [1];
% sensor = adi(pathRoot,sensorNum,dateStart,dateEnd,[],[], step);
% 
%% s2
% sensorTrainRatio = 20/100;
step = [3];
sensor = adi(pathRoot,sensorNum,dateStart,dateEnd,sensorTrainRatio,[],step);

% %% s3
% step = [3];
% sensor = adi(pathRoot,sensorNum,dateStart,dateEnd,[],[], step);
