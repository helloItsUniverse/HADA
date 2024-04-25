%=========================================================================%
% Handong Global University
% Course    : Automatic Vehicle Control 2021W
% About     : Time Management
% Created   : 2021.12.30
% Modified  : 2021.12.30
%=========================================================================%

TIME.idx                    = TIME.idx + 1          ;
TIME.simTime(TIME.idx,1)    = TIME.ts * TIME.idx    ;
TIME.prevTime               = TIME.currTime         ;