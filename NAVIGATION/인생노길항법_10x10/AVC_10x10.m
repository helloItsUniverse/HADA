%=========================================================================%
% Handong Global University
% Course    : Automatic Vehicle Control 2021W
% About     : Main
% Created   : 2021.12.30
% Modified  : 2022.01.01
%=========================================================================%

close all; clear; clc;

addpath(genpath('./lib'));

Initialize();

disp('Start...');

while( TIME.idx < TIME.length )
    NextLevel();
    
    ImportData();
    
    SignalProcessing();
    
    
    ExportData();
%     disp('dd')
    %%IdleTime();
end

disp('Finished...');

Release();
WriteFile();
DrawFigure();
Analyze();