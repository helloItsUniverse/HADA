load("GPSdata.mat");
Y = [EARTH.Rn * (NAV.HORIZONT.geoPos(1,:) - GPSdata(1,:));
    EARTH.Re * (NAV.HORIZONT.geoPos(2,:) - GPSdata(2,:));
    sqrt( (EARTH.Rn * (NAV.HORIZONT.geoPos(1,:) - GPSdata(1,:))).^2 + (EARTH.Re * (NAV.HORIZONT.geoPos(2,:) - GPSdata(2,:))).^2 ) ];
Path_Total = Y(3,:);
Y =  sqrt( (EARTH.Rn * (NAV.HORIZONT.geoPos(1,1:5350) - GPSdata(1,1:5350))).^2 + (EARTH.Re * (NAV.HORIZONT.geoPos(2,1:5350) - GPSdata(2,1:5350))).^2 );
Path_1 = Y;

figure(103)
plot(TIME.time,Path_Total); xlabel('Time[s]'); ylabel('Error[-]');
title('RMSE for Total Path');

figure(104);
plot(TIME.time(1:5350),Path_1); xlabel('Time[s]'); ylabel('Error[-]');
xlabel('Time[s]'); ylabel('Error[-]');
title('RMSE for Path 1');


Y =  sqrt( (EARTH.Rn * (NAV.HORIZONT.geoPos(1,5351:16060) - GPSdata(1,5351:16060))).^2 + (EARTH.Re * (NAV.HORIZONT.geoPos(2,5351:16060) - GPSdata(2,5351:16060)))).^2 ;
Path_2 = Y;
figure(105)
plot(TIME.time(5351:16060),Path_2);
xlabel('Time[s]'); ylabel('Error[-]');
title('RMSE for Path 2');

Y = sqrt( (EARTH.Rn * (NAV.HORIZONT.geoPos(1,16061:17010) - GPSdata(1,16061:17010))).^2 + (EARTH.Re * (NAV.HORIZONT.geoPos(2,16061:17010) - GPSdata(2,16061:17010)))).^2 ;
Path_3 = Y;
figure(106)
plot(TIME.time(16061:17010),Path_3);
xlabel('Time[s]'); ylabel('Error[-]');
title('RMSE for Path 3');

Y = sqrt( (EARTH.Rn * (NAV.HORIZONT.geoPos(1,17011:19107) - GPSdata(1,17011:19107))).^2 + (EARTH.Re * (NAV.HORIZONT.geoPos(2,17011:19107) - GPSdata(2,17011:19107)))).^2 ;
Path_4 = Y;
figure(107)
plot(TIME.time(17011:19107),Path_4);
xlabel('Time[s]'); ylabel('Error[-]');
title('RMSE for Path 4');

Y = sqrt( (EARTH.Rn * (NAV.HORIZONT.geoPos(1,19108:22550) - GPSdata(1,19108:22550))).^2 + (EARTH.Re * (NAV.HORIZONT.geoPos(2,19108:22550) - GPSdata(2,19108:22550)))).^2 ;
Path_5 = Y;
plot(TIME.time(19108:22550),Path_5);
xlabel('Time[s]'); ylabel('Error[-]');
title('RMSE for Path 5');

Y = sqrt( (EARTH.Rn * (NAV.HORIZONT.geoPos(1,22551:23750) - GPSdata(1,22551:23750))).^2 + (EARTH.Re * (NAV.HORIZONT.geoPos(2,22551:23750) - GPSdata(2,22551:23750)))).^2 ;
Path_6 = Y;
plot(TIME.time(22551:23750),Path_6);
xlabel('Time[s]'); ylabel('Error[-]');
title('RMSE for Path 6');

Y = sqrt( (EARTH.Rn * (NAV.HORIZONT.geoPos(1,23751:24945) - GPSdata(1,23751:24945))).^2 + (EARTH.Re * (NAV.HORIZONT.geoPos(2,23751:24945) - GPSdata(2,23751:24945)))).^2 ;
Path_7 = Y;
plot(TIME.time(23751:24945),Path_7);
xlabel('Time[s]'); ylabel('Error[-]');
title('RMSE for Path 7');

Y = sqrt( (EARTH.Rn * (NAV.HORIZONT.geoPos(1,24946:30000) - GPSdata(1,24946:30000))).^2 + (EARTH.Re * (NAV.HORIZONT.geoPos(2,24946:30000) - GPSdata(2,24946:30000)))).^2 ;
Path_8 = Y;
plot(TIME.time(24946:30000),Path_8);
xlabel('Time[s]'); ylabel('Error[-]');
title('RMSE for Path 8');
RMSE = [mean(Path_Total);
        mean(Path_1);
        mean(Path_2);
        mean(Path_3);
        mean(Path_4);
        mean(Path_5);
        mean(Path_6);
        mean(Path_7);
        mean(Path_8)];

