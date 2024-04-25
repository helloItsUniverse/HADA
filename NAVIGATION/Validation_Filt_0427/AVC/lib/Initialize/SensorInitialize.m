%=========================================================================%
% Handong Global University
% Course    : Automatic Vehicle Control 2021W
% About     : Parameter Initialization
% Created   : 2021.12.30
% Modified  : 2021.12.30
%=========================================================================%

%-------------------------------------------------------------------------%
% Import Data from .csv
%-------------------------------------------------------------------------%
if( CONTROL.CSV )

data = load(file);

% data index enumeration ===================
ROLL    = 2;    PITCH   = 3;    YAW     = 4;
LAT     = 8;    LONG    = 9;
VN      = 12;   VE      = 13;   VD      = 14;
AN      = 15;   AE      = 16;   AD      = 17;
HEIGHT  = 18;   TEMPER  = 19;   PRESS   = 20;
% ==========================================

SENSOR.time         = data(:,1)';
SENSOR.attitude     = data(:,ROLL:YAW)' * DEG2RAD;
SENSOR.GPS          = data(:,LAT:LONG)' * DEG2RAD;
SENSOR.acc          = data(:,AN:AD)';
SENSOR.height       = data(1,HEIGHT);
SENSOR.temper       = data(1,TEMPER);
SENSOR.press        = data(:,PRESS)';

NAV.VeN(:,1)        = data(1,VN:VD);

else

ConnectCheck();     % Sensors Connection Check

%-------------------------------------------------------------------------%
% Initialize Data from Sensors
%-------------------------------------------------------------------------%
% attitude, GPS, acc, press Initialize

SENSOR.time         = data(:,1)';
SENSOR.attitude     = data(:,ROLL:YAW)' * DEG2RAD;
SENSOR.GPS          = data(:,LAT:LONG)' * DEG2RAD;
SENSOR.acc          = data(:,AN:AD)';
SENSOR.height       = data(1,HEIGHT);
SENSOR.temper       = data(1,TEMPER);
SENSOR.press        = data(:,PRESS)';

NAV.VeN(:,1)        = data(1,VN:VD);

end


NAV.geoPos(:,1)     = [ SENSOR.GPS(:,1); SENSOR.height];

EARTH.Rn = EARTH.Req*(1-EARTH.e2) / ( 1 - EARTH.e2 * sin(NAV.geoPos(1,1))^2 )^1.5;
EARTH.Re = EARTH.Req / ( 1-EARTH.e2 * ( sin(NAV.geoPos(1,1)) )^2 )^0.5;

disp('Variable initialized...');


