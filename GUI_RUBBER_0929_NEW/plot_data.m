clear all; close all; clc;
addpath("C:\Users\HADA\Desktop\RUBBER_0914");
data = readmatrix('UDPdata_6.csv');

Cluster = data(:,1)-1;
CAM_FLAG = data(:,2);
bef_Delta_f = data(:,3);
aft_Delta_f = data(:,4);
speed_cmd   = data(:,5); 

len_ = length(Cluster);
T_start = 0;
Ts      = 0.05;
T_final = len_*Ts;
Time = T_start:Ts:T_final-Ts;
Time = Time';

idx_1Cluster = [];
idx_2Cluster = [];
idx_3Cluster = [];
cnt  = 1 ;
for i = 1 : 1 : len_
    if(Cluster(i,1) == 1)
        idx_1Cluster(cnt) = i; 
    elseif(Cluster(i,1) == 2)
        idx_2Cluster(cnt) = i;
    else
        idx_3Cluster(cnt) = i;
    end
    cnt = cnt +1 ;
end

%% 
figure(1)
plot(Time,Cluster,'b*'); hold on; grid on;
xlabel("Time[sec]")
ylabel("Cluster Number Detected"); hold off;

figure(2)
plot(Time,CAM_FLAG,'b*'); hold on; grid on;
xlabel("Time[sec]")
ylabel("Camera Flag"); hold off;

figure(3)
plot(Time,bef_Delta_f,'b*'); hold on; grid on;
xlabel("Time[sec]")
ylabel("Raw Delta f"); hold off;

figure(4)
plot(Time,aft_Delta_f,'b*'); hold on; grid on;
xlabel("Time[sec]")
ylabel("Modified Delta f"); hold off;

figure(5)
plot(Time,speed_cmd,'b*'); hold on; grid on;
xlabel("Time[sec]")
ylabel("Speed Cmd"); hold off;


figure(6)
plot(Time,Cluster,'b*'); hold on; grid on;
plot(Time,CAM_FLAG,'r*'); 
xlabel("Time[sec]")
ylabel("FLAG and Cluster"); hold off;
