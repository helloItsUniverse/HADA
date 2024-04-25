%=========================================================================%
% Handong Global University
% Course    : Automatic Vehicle Control 2021W
% About     : System Initialization
% Created   : 2021.12.30
% Modified  : 2021.12.30
%=========================================================================%

Variable();             % Parameter Define

SensorInitialize();     % Initial Value check

FilterInitialize();

TIME.prevTime       = CheckWindowsTime(0,0)*0.001;
