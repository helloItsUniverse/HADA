%=========================================================================%
% Handong Global University
% Course    : Automatic Vehicle Control 2021W
% About     : Time Idling
% Created   : 2021.12.30
% Modified  : 2021.12.30
%=========================================================================%
if(CONTROL.CSV==0)
    
while(1)
    TIME.currTime   = CheckWindowsTime(0,0)*0.001;      % [sec]
    TIME.delTime    = TIME.currTime - TIME.prevTime;    % [sec]
    if(TIME.delTime >= TIME.ts)
        break;
    end
end

end