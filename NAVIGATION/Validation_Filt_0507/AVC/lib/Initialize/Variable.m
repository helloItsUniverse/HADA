%=========================================================================%
% Handong Global University
% Course    : Automatic Vehicle Control 2021W
% About     : Parameter Setting
% Created   : 2021.12.30
% Modified  : 2021.12.30
%=========================================================================%

%-------------------------------------------------------------------------%
% Control Mode
%-------------------------------------------------------------------------%
file = "211230_Data.csv";

global  CONTROL;
CONTROL         = struct(   'CSV'       ,   1,...
                            'NAV'       ,   4,...  % 1: Pure   2: Vertical   3: Horizontal(ssKalman)   4: Horizontal
                            'GUIDE'     ,   0,...
                            'RIDAR'     ,   0,...
                            'CAMERA'    ,   0 ...
                        );

RAD2DEG         = 180/pi;
DEG2RAD         = pi/180;

%-------------------------------------------------------------------------%
% Time
%-------------------------------------------------------------------------%
global  TIME;
TIME            = struct(   'final'     ,   299.99,...
                            'ts'        ,   0.01,...
                            'time'      ,   0.0,...
                            'idx'       ,   0,...
                            'currTime'  ,   0.0,...
                            'prevTime'  ,   0.0,...
                            'delTime'   ,   0.0,...
                            'length'    ,   0.0);
TIME.time       = 0 : TIME.ts : TIME.final;
TIME.length     = length(TIME.time);

%-------------------------------------------------------------------------%
% Sensor Data - size: 20
%-------------------------------------------------------------------------%
global  SENSOR;
SENSOR          = struct(   'time'      ,   zeros(1,TIME.length),...
                            'attitude'  ,   zeros(3,TIME.length),...    % roll, pitch, yaw  [rad]
                            'gyro'      ,   zeros(3,TIME.length),...    % x, y, z           (nB)
                            'GPS'       ,   zeros(2,TIME.length),...    % Lat, long         [rad]
                            'acc'       ,   zeros(3,TIME.length),...    % N, E, D           [m/s^2]
                            'height'    ,   0.0,...                     % h init            [m]
                            'temper'    ,   0.0,...                     % T init            [C]
                            'press'     ,   zeros(1,TIME.length));      % P                 [Pa]

%-------------------------------------------------------------------------%
% EARTH - earth model WGS-84 constants
%-------------------------------------------------------------------------%
global  EARTH;
EARTH           = struct(   'Req'       ,   6378135,...
                            'Rn'        ,   0.0,...
                            'Re'        ,   0.0,...
                            'We'        ,   7.292115e-5,...
                            'g0'        ,   9.780318,...
                            'e2'        ,   6.69437999014e-3);

%-------------------------------------------------------------------------%
% Navigation
%-------------------------------------------------------------------------%
global  NAV;
NAV             = struct(   'AcbBias'   ,   zeros(3,1),...              % Acceleration Bias (B-Frame)
                            'AeN'       ,   zeros(3,TIME.length),...    % N, E, D           [m/s^2]
                            'VeN'       ,   zeros(3,TIME.length),...    % N, E, D           [m/s]
                            'geoPos'    ,   zeros(3,TIME.length),...    % Lat, long [rad], height [m]
                            'geoPosDot' ,   zeros(3,TIME.length),...    % Lat, long [rad], height [m]
                            'PURE'      ,   0.0,...
                            'VERTICAL'  ,   0.0,...
                            'HORIZONT'  ,   0.0);

NAV.PURE        = struct(   'AeN'       ,   zeros(3,TIME.length));

NAV.VERTICAL    = struct(   'hAid'      ,   zeros(1,TIME.length),...
                            'accBias'   ,   zeros(1,TIME.length),...
                            'velBias'   ,   zeros(1,TIME.length));

NAV.HORIZONT    = struct(   'AxyBias'   ,   zeros(2,1),...
                            'q'         ,   0.1^2,...
                            'r'         ,   (2.0 * 0.1408/6400000)^2,...
                            'xHat'      ,   zeros(10,TIME.length),...
                            'geoPos'    ,   zeros(2,TIME.length),...
                            'VeN'       ,   zeros(3,TIME.length));

