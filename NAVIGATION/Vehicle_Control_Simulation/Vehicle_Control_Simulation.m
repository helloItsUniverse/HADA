%=========================================================================%
% Handong Global University
% Team      : Guidance, Navigation
% About     : Trajectory Tracking Guidance
% Author    : 한광희 소우주 이기윤 노경하
% Created   : 2022.7.20
% Modified  : 2022.7.20
%=========================================================================%
%=========================================================================%
%                 Q 1. Generate Optimal Path ?                            %
%                 Q 2. Optimal Trajectory Tracking Control                % 
%=========================================================================%
clc; clear all; close all;

UNIT              = struct(   'D2R', pi/180,...
                              'R2D', 180/pi );

LOGIC             = struct(   'NOK' ,  0,...
                              'YOK' ,  1 );

TIME              = struct(   'Ts' ,    0.001,...
                              'Tf' ,    200.0,...
                              'N'  ,    0.0);
TIME.N            = floor(TIME.Tf/TIME.Ts+0.5);  
TIME.Ntimes       = 0 : TIME.Ts : TIME.Tf;
TIME.idx               = 1;


%==========================================================================
% User Define Variables
% Ways
Waypoints_1           = [0 3;3 3;3 0;0 0];
% Flag
DISP    = 0; FIG = 1; DATA = 1;
%==========================================================================

Veh               = struct('X',0,...
                           'Y',0,...
                           'V',0.5);
Veh.Gam0 = 90* UNIT.D2R;
Veh.Vx = Veh.V*cos(Veh.Gam0); 
Veh.Vy = Veh.V*sin(Veh.Gam0);
Numway = 1;
Cway = 0.5;
Kp = 2; c1 = 2; c2 = 3;
Limt = 40 * UNIT.D2R;
% umax = 
R0 = sqrt((Veh.X-Waypoints_1(1,1))^2+(Veh.Y-Waypoints_1(1,2))^2);
Gammax = 28*UNIT.D2R;
Cmdbuf = 0; Cmdbuf1 = 0;
while(TIME.idx<length(TIME.Ntimes))
    
    dX = Waypoints_1(Numway,1) - Veh.X;
    dY = Waypoints_1(Numway,2) - Veh.Y;
    rng = sqrt(dX^2 + dY^2);
    LOS = atan2(dY,dX);
    Gam = atan2(Veh.Vy,Veh.Vx);
    cI_L = GetDCM(LOS);  cI_B = GetDCM(Gam); % Inertial Frame to Body Frame
    cB_L = cI_L*cI_B'; % Unit vector
    UxB = cB_L * [1;0]; % Guidance Frame
    Eta = atan2(UxB(2,1),UxB(1,1));
    if Gam >=Gammax
        Gam = Gammax;
    end

    Lamdot = -Veh.V*sin(Eta)/rng;
    K1 = c1*exp(-c2*(R0-rng)/R0);
%     Cmd = (Lamdot + K1 * sin(Eta/2))/Veh.V;
    Cmd1 = -rng/(Veh.V*cos(Eta))*(K1*(-Lamdot)+Veh.V^2*sin(2*Eta)/rng^2);
    if(rng<Cway)
    Numway = Numway + 1;

        if Numway>length(Waypoints_1)
            break;
        else
        
        R0 = sqrt((Veh.X-Waypoints_1(Numway,1))^2+(Veh.Y-Waypoints_1(Numway,2))^2);
        end
    end
    Cmd = -2*Kp*Veh.V*sin(Eta);

    Ax = -Veh.V*Cmd*sin(Gam); Ay = Veh.V*Cmd*cos(Gam);
    Veh.Vx = Veh.Vx + TIME.Ts * Ax; Veh.Vy = Veh.Vy + TIME.Ts*Ay;
    Veh.X = Veh.X + TIME.Ts* Veh.Vx + 0.5*TIME.Ts^2*Ax;
    Veh.Y = Veh.Y + TIME.Ts * Veh.Vy + 0.5 * TIME.Ts^2*Ay;

    buffer.X(TIME.idx,1) = Veh.X;
    buffer.Y(TIME.idx,1) = Veh.Y;
    
    TIME.idx = TIME.idx+1;

Cmdbuf = Cmdbuf + abs(Cmd);
Cmdbuf1 = Cmdbuf1 + abs(Cmd1);

end % of while


figure;
plot(buffer.X,buffer.Y,'k-'); hold on; plot(buffer.X(1),buffer.Y(1),'b*')
plot(Waypoints_1(1,1),Waypoints_1(1,2),'rp');
plot(Waypoints_1(2,1),Waypoints_1(2,2),'rp');
plot(Waypoints_1(3,1),Waypoints_1(3,2),'rp')
legend('Trajectory','Initial Pos','Waypoints');
