clear;clc;close all;

pathRoot = '/Volumes/midDisk/hangzhouwan-2016Q1-tidy/netmanager_b';
% pathRoot = 'F:\hangzhouwan-2016Q1-tidy\netmanager_b';

sensorNum = {4, 1};
dateStart = '2016-01-01';
dateEnd = '2016-01-01';
sensorTrainRatio = 80/100;
% sensorPSize = 10;
step = [2 3 4];
% labelName = {'1-normal','2-outlier','3-minor'};

sensor = adidnn(pathRoot,sensorNum,dateStart,dateEnd,sensorTrainRatio,[],step,[]);



