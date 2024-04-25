function HorizontalFilter()
%------------------------------------------------------------------%
% Course Name: Autonomous Vehicle Control
% About      : Navigation Filter Design
% Created    : 2021.12.30
% Modified   : 2021.12.30
% Editted by : Mad Cow
% Name       : Han, Kwanghee So woo ju
%------------------------------------------------------------------%
global NAV CONTROL TIME SENSOR EARTH P eP;

idx         = TIME.idx;
Ts          = TIME.ts;

persistent KAL
if isempty(KAL)
    q                = NAV.HORIZONT.q;
    r                = NAV.HORIZONT.r;
   KAL = struct(   'H' ,   [1 0 0 0 0 0 0 0 0 0; 0 1 0 0 0 0 0 0 0 0],...
                    'Q' ,   q*[Ts ^ 10 / 14400    0                   Ts ^ 9 / 2880       0                   Ts ^ 8 / 720       0                   Ts ^ 7 / 240       0                   Ts ^ 6 / 120       0;
                                0                   Ts ^ 10 / 14400    0                   Ts ^ 9 / 2880       0                   Ts ^ 8 / 720       0                   Ts ^ 7 / 240       0                   Ts ^ 6 / 120;
                                Ts ^ 9 / 2880        0                   Ts ^ 8 / 576        0                   Ts ^ 7 / 144       0                   Ts ^ 6 / 48          0                   Ts ^ 5 / 24          0;
                                0                  Ts ^ 9 / 2880        0                   Ts ^ 8 / 576        0                   Ts ^ 7 / 144       0                   Ts ^ 6 / 48          0                   Ts ^ 5 / 24;
                                Ts ^ 8 / 720       0                   Ts ^ 7 / 144       0                   Ts ^ 6 / 36          0                   Ts ^ 5 / 12          0                   Ts ^ 4 / 6          0;
                                0                  Ts ^ 8 / 720       0                   Ts ^ 7 / 144       0                   Ts ^ 6 / 36          0                   Ts ^ 5 / 12          0                   Ts ^ 4 / 6;          
                                Ts ^ 7 / 240       0                   Ts ^ 6 / 48          0                   Ts ^ 5 / 12          0                   Ts ^ 4 / 4          0                   Ts ^ 3 / 2          0;
                                0                  Ts ^ 7 / 240       0                   Ts ^ 6 / 48          0                   Ts ^ 5 / 12          0                   Ts ^ 4 / 4          0                   Ts ^ 3 / 2;
                                Ts ^ 6 / 120       0                  Ts ^ 5 / 24          0                   Ts ^ 4 / 6          0                   Ts ^ 3 / 2          0                   Ts ^ 2             0;
                                0                   Ts ^ 6 / 120       0                  Ts ^ 5 / 24          0                   Ts ^ 4 / 6          0                   Ts ^ 3 / 2          0                   Ts ^ 2],...
                    'R' ,   r*eye(2));
    
end





%-------------------------------------------------------------------------%
%                               Get Data                                  %
%-------------------------------------------------------------------------%  

persistent count;
if isempty(count)
count = 0 ; 
end

RN          = EARTH.Rn;
RE          = EARTH.Re;
We          = EARTH.We;


    
if(CONTROL.NAV == 4)            % Kalman (2nd method)
    % Variable Calling
    Vn          = NAV.VeN(1,idx);
    Ve          = NAV.VeN(2,idx);
    Vd          = NAV.VeN(3,idx);
    L           = NAV.geoPos(1,idx);
    psi         = SENSOR.attitude(3,idx)*180/pi;
    AcbN        = NAV.AcbBias(1);
    AcbE        = NAV.AcbBias(2);
    Wned        = We*[cos(L); 0; -sin(L)];
    WN          = Wned(1);
    WE          = Wned(2);
    WD          = Wned(3);
    Req         = EARTH.Req;
    Fc = [0                                            0    -Vn/Req^2                    1/RN                        0                                0                  0            0             0                    0;
          Ve*tan(L) / (RE*cos(L))                      0    Ve/(Req^2*cos(L))            0                           1 / (RE*cos(L))                  0                  0            0             0                    0;
          0                                            0    -1                           0                           0                                0                  0            0             0                    0;
          -2*We*Ve*cos(L)-Ve^2*sec(L)^2/RE             0    (Ve^2*tan(L)-Vn*Vd)/Req^2    0                           -2*We*sin(L)-2*Ve*tan(L)/RE      Vn/RE              cosd(psi)    -sind(psi)    0                    0;
          2*We*Vn*cos(L)+Vn*Ve*sec(L)^2/RE             0    -(Ve*(Vn*tan(L)+Vd))/Req^2   2*We*sin(L)+Ve*tan(L)/RE    (Vn*tan(L)+Vd)/RE                2*We*cos(L)+Ve/RE  sind(psi)    cosd(psi)     0                    0;
          2*We*Ve*sin(L)                               0    (Vn^2+Ve^2)/Req^2            -2*Vn/RE                    -2*(We*cos(L)+Ve/RE)             0                  0            0             0                    0;          
          0                                            0    0                            0                           0                                0                  0            0             0                    0;
          0                                            0    0                            0                           0                                0                  0            0             0                    0;
          0                                            0    Vn/Req^2                     -1/RN                       0                                0                  0            0             0                    We*cos(L)+Ve/RE;
          -We*cos(L)-Ve/(RE*(cos(L))^2)                0    Ve*tan(L)/Req^2              0                           -tan(L)/RE                       0                  0            0             -(We*cos(L)+Ve/RE)   0 ];
    

    F           = eye(10) + Ts*Fc; % Euler's method
end

xPure       = [NAV.geoPos(1,idx); % From pure navigation
                NAV.geoPos(2,idx);];

xGPS        = [SENSOR.GPS(1,idx); % From GPS
                SENSOR.GPS(2,idx)];

if idx == 1
X           = zeros(10,1); % Estimated State Initialization
eP          = eye(10,10);
else
X           = NAV.HORIZONT.xHat(:,idx-1); % Estimated State
end

%-------------------------------------------------------------------------%
%                        Error Equation -> deltaXdot                      %
%-------------------------------------------------------------------------%
xBar        = F * X; % A priori state estimation

 eP          = F* eP *F'+KAL.Q; % A priori error covariance
% [P,~,~]     = dare(F',KAL.H',KAL.Q,KAL.R);
Kg          = eP *KAL.H' * inv(KAL.H*eP*KAL.H'+KAL.R); % Kalman gain calculation

if(xGPS(1,1) == 0)

    xHat = xBar; %If GPS initial data is zero, use a priori state estimation

else
    
    count = count + 1;
    Y = xGPS - xPure; % Residual 
    xHat = xBar + Kg * (Y - KAL.H*xBar); % A posteriori state estimation
    P = eP - Kg*KAL.H*eP; % A posteriori error covariance
    eP = P;
  
end

NAV.HORIZONT.geoPos(:,idx)  = NAV.geoPos(1:2,idx) + xHat(1:2);
NAV.HORIZONT.VeN(:,idx)     = NAV.VeN(1:3,idx) + xHat(4:6);
% NAV.HORIZONT.AxyBias(:,idx) = xHat(5:6);

% option #1 : bias compensation at every time after 1[sec] by consisdering the convergence rate of the navigation filter 
if( idx >= 100 ) 
    NAV.AcbBias(1:2)     = NAV.HORIZONT.AxyBias ;
end

if( count == 20 )

    NAV.geoPos(1:2,idx)  = NAV.HORIZONT.geoPos(:,idx);
    NAV.VeN(1:3,idx)     = NAV.HORIZONT.VeN(:,idx);
    
% option #2 : bias compensation when the pure inertial navigation is reset
%     NAV.AcbBias(1:2)     = NAV.HORIZONT.AxyBias ;

%     xHat = zeros(6,1);
    xHat(1:10,1) = zeros(10,1);

    count = 0; 

end

NAV.HORIZONT.xHat(:,idx)    = xHat;

end