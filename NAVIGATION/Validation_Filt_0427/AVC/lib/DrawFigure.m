%=========================================================================%
% Handong Global University
% Course    : Automatic Vehicle Control 2021W
% About     : Drawing Data Figure
% Created   : 2021.12.30
% Modified  : 2021.12.30
%=========================================================================%

% figure; hold on; grid on;
% plot(TIME.simTime);
% xlabel(), ylabel();
% title();
%-------------------------------------------------------------------------%
% Sensor
%-------------------------------------------------------------------------%
% figure; hold on; grid on;
% subplot(3,1,1);
% plot(TIME.time,SENSOR.acc(1,:));
% ylabel('f_N [m/s^2]');
% subplot(3,1,2);
% plot(TIME.time,SENSOR.acc(2,:));
% ylabel('f_E [m/s^2]');
% subplot(3,1,3);
% plot(TIME.time,SENSOR.acc(3,:));
% ylabel('f_D [m/s^2]');
% xlabel('Time [sec]');
% title('Sensor Acceleration fB');
close all;
FigureNavigation();



