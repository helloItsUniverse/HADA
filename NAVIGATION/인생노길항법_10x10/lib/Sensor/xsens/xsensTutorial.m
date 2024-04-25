clc; close all; clear all;

global h
global euler

Ts = 0.05;
Tf = 10;
Time = 0:Ts:Tf;
Time = Time';
N = length(Time);

roll = zeros(N,1);
pitch = zeros(N,1);
yaw = zeros(N,1);
i = 1;

xsens_init();

disp('Start...');

simTime = 0;
initTime = CheckWindowsTime(0,0)*0.001;
currTime = 0;
prevTime = initTime;

while simTime < Tf
    
    roll(i,1)   = euler(1);
    pitch(i,1)  = euler(2);
    yaw(i,1)    = euler(3);
    pause(Ts/1000);
    
    while(1)
        currTime = CheckWindowsTime(0,0)*0.001;
        if(currTime-prevTime > Ts)
            break;
        end
    end

    prevTime = currTime;
    simTime = simTime + Ts;
    i = i+1;
end

xsens_close();

figure; hold on;
subplot(3,1,1); grid on;
plot(Time,roll,'r');
subplot(3,1,2); grid on;
plot(Time,pitch,'g');
subplot(3,1,3); grid on;
plot(Time,yaw,'b');
