%=========================================================================%
% Handong Global University
% Course    : Automatic Vehicle Control 2021W
% About     : Integration
% Created   : 2021.12.30
% Modified  : 2021.12.30
%=========================================================================%
if TIME.idx ~= TIME.length
%-------------------------------------------------------------------------%
% Navigation
%-------------------------------------------------------------------------%

NAV.VeN(:,TIME.idx+1)       = NAV.VeN(:,TIME.idx) + TIME.ts * NAV.AeN(:,TIME.idx);
NAV.geoPos(:,TIME.idx+1)    = NAV.geoPos(:,TIME.idx) + TIME.ts * NAV.geoPosDot(:,TIME.idx);

end