clear;clc;close all;

pathRoot = '/Volumes/midDisk/hangzhouwan-2016Q1-tidy/netmanager_b';

sensorNum = [24];
dateStart = '2016-02-28';
dateEnd = '2016-03-01';
sensorTrainRatio = 25/100;
sensorPSize = 10;
step = 1;

%%
sensor = pspp(pathRoot,sensorNum,dateStart,dateEnd,sensorTrainRatio,sensorPSize,step);


% sensor = pspp([], sensorNum, dateStart, dateEnd, sensorTrainRatio, sensorPSize, step);

