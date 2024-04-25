function HorizontalFilter()
%------------------------------------------------------------------%
% Course Name: Autonomous Vehicle Control
% About      : Navigation Filter Design
% Created    : 2021.12.30
% Modified   : 2021.12.30
% Editted by : Mad Cow
% Name       : Han, Kwanghee So woo ju
%------------------------------------------------------------------%
global NAV CONTROL TIME SENSOR EARTH;

idx         = TIME.idx;
Ts          = TIME.ts;

persistent KAL
% if isempty(KAL)
%     q                = NAV.HORIZONT.q;
%     r                = NAV.HORIZONT.r;
%     KAL = struct(   'H' ,   [1 0 0 0 0 0 0; 0 1 0 0 0 0 0],...
%                     'Q' ,   q*[1/36*Ts^6    0               1/12*Ts^5       0              1/6*Ts^4   0     1/6*Ts^3; 
%                                0            1/36*Ts^6       0               1/12*Ts^5      0          1/6*Ts^4         0;
%                                1/12*Ts^5    0               1/4*Ts^4        0              1/2*Ts^3   0                1/2*Ts^2; 
%                                0            1/12*Ts^5       0               1/4*Ts^4       0          1/2*Ts^3         0;
%                                1/6*Ts^4     0               1/2*Ts^3        0              Ts^2       0                Ts;
%                                0            1/6*Ts^4        0               1/2*Ts^3       0          Ts^2             0; ...
%                                1/6*Ts^3     0               1/2*Ts^2        0              Ts         0                1/Ts],...
%                     'R' ,   r*eye(2));
% end

if isempty(KAL)
    q                = NAV.HORIZONT.q;
    r                = NAV.HORIZONT.r;
    KAL = struct(   'H' ,   [1 0 0 0; 0 1 0 0],...
                    'Q' ,   q*[Ts^4/4 0  Ts^2/2   0;
                             0 Ts^4/4      0   Ts^2/2;
                             Ts^2/2      0   Ts  0;
                             0      Ts^2/2   0  Ts],...
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

if(CONTROL.NAV == 3)                % Steady State Kalman (3rd method)    
    v           = sqrt(NAV.VeN(1,idx)^2 + NAV.VeN(2,idx)^2);
    psi         = SENSOR.attitude(3,idx)*180/pi;
%     v = 9.666;  psi = 0.7920;     % region 1
%     v = 20.1331;  psi = 1.6129;   % region 2
%     v = 15.3296;  psi = -2.5704;  % region 3
    
    Ve          = v*sind(psi);
    Vn          = v*cosd(psi);
    L           = NAV.geoPos(1,idx);

   Fc = [0                                 0   1/RN                      0;
          Ve*tan(L) / (RE*cos(L))           1   0                         1 / (RE*cos(L));
         -2*We*Ve*cos(L)-Ve^2*sec(L)^2/RE   0   0                         -2*We*sin(L)-2*Ve*tan(L)/RE;
          2*We*Vn*cos(L)+Vn*Ve*sec(L)^2/RE  0   2*We*sin(L)+Ve*tan(L)/RE  Vn*tan(L)/RE];
%         
    F           = eye(4) + Ts*Fc;

    psiList     = -180:5:180;
    vList       = 0:1:35;

    Kg11        = interp2(psiList,vList,NAV.HORIZONT.Kf11, psi,v);
    Kg12        = interp2(psiList,vList,NAV.HORIZONT.Kf12, psi,v);
    Kg21        = interp2(psiList,vList,NAV.HORIZONT.Kf21, psi,v);
    Kg22        = interp2(psiList,vList,NAV.HORIZONT.Kf22, psi,v);
    Kg31        = interp2(psiList,vList,NAV.HORIZONT.Kf31, psi,v);
    Kg32        = interp2(psiList,vList,NAV.HORIZONT.Kf32, psi,v);
    Kg41        = interp2(psiList,vList,NAV.HORIZONT.Kf41, psi,v);
    Kg42        = interp2(psiList,vList,NAV.HORIZONT.Kf42, psi,v);

    
    Kg          = [Kg11 Kg12; Kg21 Kg22; Kg31 Kg32; Kg41 Kg42];
    
elseif(CONTROL.NAV == 4)            % Kalman (2nd method)
    % Variable Calling
    Vn          = NAV.VeN(1,idx);
    Ve          = NAV.VeN(2,idx);
    Vd          = NAV.VeN(3,idx);
    L           = NAV.geoPos(1,idx);
    psi         = SENSOR.attitude(3,idx)*180/pi;
    AcbN        = NAV.AcbBias(1);
    AcbE        = NAV.AcbBias(2);


    Fc = [0                                            0   1/RN                      0                                0                 0            0;
          Ve*tan(L) / (RE*cos(L))                      0   0                         1 / (RE*cos(L))                  0                 0            0;
         -2*We*Ve*cos(L)-Ve^2*sec(L)^2/RE              0   0                         -2*We*sin(L)-2*Ve*tan(L)/RE      Vn/RE             cosd(psi)    -sind(psi);
          2*We*Vn*cos(L)+Vn*Ve*sec(L)^2/RE             0   2*We*sin(L)+Ve*tan(L)/RE  (Vn*tan(L)+Vd)/RE                2*We*cos(L)+Ve/RE sind(psi)    cosd(psi);
          2*We*Ve*sin(L)                               0   -2*Vn/RE                  -2*(We*cos(L)+Ve/RE)             -1                 0            0;          
          0                                            0   0                         0                                0                 0            0;
          0                                            0   0                         0                                0                 0            0];
    
    ob = obsv(Fc,KAL.H);
    if(rank(ob) ~= 7)
        disp('Obsv!');
        pause();
    end
    
    F           = eye(4) + Ts*Fc;

    [P,~,~]     = dare( F', KAL.H', KAL.Q, KAL.R );
    Kg          = P * KAL.H' * inv(KAL.R);
end

xPure       = [NAV.geoPos(1,idx);
                NAV.geoPos(2,idx);];

xGPS        = [SENSOR.GPS(1,idx);
                SENSOR.GPS(2,idx)];

if idx == 1
X           = zeros(4,1);
else
X           = NAV.HORIZONT.xHat(1:4,idx-1);
end

%-------------------------------------------------------------------------%
%                        Error Equation -> deltaXdot                      %
%-------------------------------------------------------------------------%
xBar        = F * X;

if(xGPS(1,1) == 0)

    xHat = xBar;

else

    count = count + 1;

    Y = xGPS - xPure;
    xHat = xBar + Kg * (Y - KAL.H*xBar);

end

NAV.HORIZONT.geoPos(:,idx)  = NAV.geoPos(1:2,idx) + xHat(1:2);
% NAV.HORIZONT.VeN(:,idx)     = NAV.VeN(1:3,idx) + xHat(3:5);
% NAV.HORIZONT.AxyBias(:,idx) = xHat(5:6);

% option #1 : bias compensation at every time after 1[sec] by consisdering the convergence rate of the navigation filter 
if( idx >= 100 ) 
%     NAV.AcbBias(1:2)     = NAV.HORIZONT.AxyBias(:,idx) ;
end

if( count == 20 )

    NAV.geoPos(1:2,idx)  = NAV.HORIZONT.geoPos(:,idx);
    NAV.VeN(1:3,idx)     = NAV.HORIZONT.VeN(:,idx);
    
% option #2 : bias compensation when the pure inertial navigation is reset
%     NAV.AcbBias(1:2)     = NAV.HORIZONT.AxyBias(:,idx) ;

%     xHat = zeros(6,1);
    xHat(1:4,1) = zeros(4,1);

    count = 0; 

end

NAV.HORIZONT.xHat(1:4,idx)    = xHat;

end