function    FigureNavigation()
global TIME NAV EARTH SENSOR;
RAD2DEG = 180/pi;

load("GPSdata.mat");

%-------------------------------------------------------------------------%
% Navigation Figure
%-------------------------------------------------------------------------%
X = [TIME.time; TIME.time; TIME.time];
idx = (SENSOR.GPS(1,:)~=0);
% idx = (GPSdata(1,:)~=0);

if(0)
% Pure Navigation Acceleration
Y = [NAV.PURE.AeN(1,:); NAV.PURE.AeN(2,:); NAV.PURE.AeN(3,:)];
label = ["A_N [m/s^2]";"A_E [m/s^2]";"A_D [m/s^2]"];
drawSubplot([3 1],X,Y,"Pure Navigation Acceleration","Time [sec]",label);

% Acceleration
Y = [NAV.AeN(1,:); NAV.AeN(2,:); NAV.AeN(3,:)];
drawSubplot([3 1],X,Y,"Compound Navigation Acceleration","Time [sec]",label);

% Velocity
Y = [NAV.VeN(1,:); NAV.VeN(2,:); NAV.VeN(3,:)];
label = ["V_N [m/s^2]";"V_E [m/s^2]";"V_D [m/s^2]"];
drawSubplot([3 1],X,Y,"Velocity","Time [sec]",label);

% Position derivative
Y = [NAV.geoPosDot(1,:); NAV.geoPosDot(2,:); NAV.geoPosDot(3,:)];
label = ["L\{dot} [rad/s]";"l\{dot} [rad/s]";"h\{dot} [m/s]"];
drawSubplot([3 1],X,Y,"Position Derivative","Time [sec]",label);

% Pure Navigation Position
Y = [NAV.geoPos(1,:)*RAD2DEG; NAV.geoPos(2,:)*RAD2DEG; NAV.geoPos(3,:)];
label = ["L [rad]";"l [rad]";"h [m]"];
drawSubplot([3 1],X,Y,"Pure Navigation Position","Time[sec]",label);

% Posistion
Y = [NAV.HORIZONT.geoPos(1,:)*RAD2DEG; NAV.HORIZONT.geoPos(2,:)*RAD2DEG];
label = ["L [rad]";"l [rad]"];
drawSubplot([2 1],X,Y,"Compound Navigation Position","Time [sec]",label);

figure;  grid on;
geoplot(RAD2DEG*NAV.geoPos(1,:),RAD2DEG*NAV.geoPos(2,:),'w*-');hold on;
% geoplot(RAD2DEG*GPSdata(1,idx),RAD2DEG*GPSdata(2,idx),'b+');
geoplot(RAD2DEG*NAV.HORIZONT.geoPos(1,:),RAD2DEG*NAV.HORIZONT.geoPos(2,:),'y.-');
geobasemap('satellite');

figure; hold on;
plot((GPSdata(1,:)-GPSdata(1,1))*EARTH.Req,'k.');
plot((NAV.HORIZONT.geoPos(1,:)-GPSdata(1,1))*EARTH.Req,'b-o'); ylim([-2000 2000])
grid on

figure; hold on;
plot((GPSdata(2,:)-GPSdata(2,1))*EARTH.Req,'k.');
plot((NAV.HORIZONT.geoPos(2,:)-GPSdata(2,1))*EARTH.Req,'b-o'); ylim([0 4000])
grid on
end

figure;
plot(EARTH.Req*sqrt((GPSdata(1,:)-GPSdata(1,1)).^2+(GPSdata(2,:)-GPSdata(2,1)).^2), 'k.')
hold on, plot(EARTH.Req*sqrt((NAV.HORIZONT.geoPos(1,:)-GPSdata(1,1)).^2+(NAV.HORIZONT.geoPos(2,:)-GPSdata(2,1)).^2), 'b-o')
grid on
ylim([0 4000])

Y = [EARTH.Rn * (NAV.HORIZONT.geoPos(1,:) - GPSdata(1,:));
    EARTH.Re * (NAV.HORIZONT.geoPos(2,:) - GPSdata(2,:));
    sqrt( (EARTH.Rn * (NAV.HORIZONT.geoPos(1,:) - GPSdata(1,:))).^2 + (EARTH.Re * (NAV.HORIZONT.geoPos(2,:) - GPSdata(2,:))).^2 ) ];
label = ["N Error[m]";"E Error[m]";"Distance Error[m]"];
drawSubplot([3 1],X,Y,'Integrated Navigation Error','Time[sec]',label);

figure(90), subplot(2,1,1), plot(X(3,:), EARTH.Rn * (NAV.HORIZONT.geoPos(1,:)-GPSdata(1,1)), X(3,:), EARTH.Rn * (GPSdata(1,:)-GPSdata(1,1))), grid on, xlabel('time [sec]'), ylabel('north position [m]')
hold on, subplot(2,1,2), plot(X(3,:), EARTH.Rn * (NAV.HORIZONT.geoPos(2,:)-GPSdata(2,1)), X(3,:), EARTH.Rn * (GPSdata(2,:)-GPSdata(2,1))), grid on, xlabel('time [sec]'), ylabel('east position [m]')

figure(100), subplot(2,1,1), plot(X(3,:), Y(3,:), 'b', X(3,idx), Y(3,idx), 'rx'), grid on, xlabel('time [sec]'), ylabel('filter error distance [m]'), title('Navigation Error Distances', 'FontSize', 18)

Y = [EARTH.Rn * (NAV.geoPos(1,:) - GPSdata(1,:));
    EARTH.Re * (NAV.geoPos(2,:) - GPSdata(2,:));
    sqrt( (EARTH.Rn * (NAV.geoPos(1,:) - GPSdata(1,:))).^2 + (EARTH.Re * (NAV.geoPos(2,:) - GPSdata(2,:))).^2 ) ];
label = ["N Error[m]";"E Error[m]";"Distance Error[m]"];
drawSubplot([3 1],X,Y,'Pure Inertial Navigation Error','Time[sec]',label);

figure(100), hold on, subplot(2,1,2), plot(X(3,:), Y(3,:), 'b', X(3,idx), Y(3,idx), 'rx'), grid on, xlabel('time [sec]'), ylabel('IN error distance [m]')

figure(101), plot(X(3,:), NAV.HORIZONT.xHat(5:6,:)), grid on, xlabel('time [sec]'), ylabel('acceleration [m/s2]')
figure(102), plot(X(3,:),NAV.HORIZONT.geoPos(1))
end