%=========================================================================%
% Handong Global University
% Course    : Automatic Vehicle Control 2021W
% About     : Data Save as File
% Created   : 2021.12.30
% Modified  : 2021.12.30
%=========================================================================%

t = datetime('now');
filename = datestr(t,'mmdd_HHMM') + "_Data.csv";
fp = fopen(filename,'w');

filedata = [NAV.AeN; NAV.VeN; NAV.geoPosDot; NAV.geoPos; NAV.HORIZONT.geoPos]';
writematrix(filedata,filename);

fclose(fp);

disp('Data file saved...');
disp('filename: ' + filename);
