clc;
clear;
close all;

% Create Fuzzy Inference System
fis = mamfis('Name','WashingMachine');

%% INPUT 1: Dirt Level
fis = addInput(fis,[0 10],'Name','DirtLevel');

fis = addMF(fis,'DirtLevel','trapmf',[0 0 3 5],'Name','Low');
fis = addMF(fis,'DirtLevel','trimf',[3 5 7],'Name','Medium');
fis = addMF(fis,'DirtLevel','trapmf',[6 8 10 10],'Name','High');

%% INPUT 2: Load Size
fis = addInput(fis,[0 10],'Name','LoadSize');

fis = addMF(fis,'LoadSize','trapmf',[0 0 3 5],'Name','Small');
fis = addMF(fis,'LoadSize','trimf',[3 5 7],'Name','Medium');
fis = addMF(fis,'LoadSize','trapmf',[6 8 10 10],'Name','Large');

%% OUTPUT: Wash Time
fis = addOutput(fis,[0 60],'Name','WashTime');

fis = addMF(fis,'WashTime','trimf',[0 10 20],'Name','Short');
fis = addMF(fis,'WashTime','trimf',[20 30 40],'Name','Medium');
fis = addMF(fis,'WashTime','trimf',[40 50 60],'Name','Long');

%% FUZZY RULES
ruleList = [
1 1 1 1 1
1 3 2 1 1
2 1 2 1 1
2 3 3 1 1
3 2 3 1 1
3 3 3 1 1
];

fis = addRule(fis,ruleList);

%% Display Membership Functions
figure;
plotmf(fis,'input',1);
title('Dirt Level Membership Functions');

figure;
plotmf(fis,'input',2);
title('Load Size Membership Functions');

figure;
plotmf(fis,'output',1);
title('Wash Time Membership Functions');

%% Rule Viewer
ruleview(fis);

%% Surface Viewer
surfview(fis);

%% Example Test
input = [7 8]; % Dirt Level, Load Size
output = evalfis(fis,input);

disp(['Wash Time = ', num2str(output),' minutes']);
