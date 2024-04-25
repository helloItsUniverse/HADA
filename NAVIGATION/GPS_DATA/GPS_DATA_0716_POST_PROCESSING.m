%------------------------------------------------------------------%
% HADA 2022
%------------------------------------------------------------------%
% About      : Post Processing GPS Data
% Created    : 2022.07.19
% Modified   : 2022.07.19
% Editted by : Wooju So
%------------------------------------------------------------------%

clear all; close all; clc;

load('GPS_DATA_0716_POST_PROCESSING.mat')

geoplot_with_index(L_post_left_merged, l_post_left_merged, 'g.', 5, 'Cleaned GPS Data' )

%% STOP LINES

LON_STOP_LINE_01 = L_post_left21;
LON_STOP_LINE_02 = L_post_left26;
LON_STOP_LINE_03 = L_post_left29;
LON_STOP_LINE_04 = L_post_left31;
LON_STOP_LINE_05 = L_post_left32;
LON_STOP_LINE_06 = L_post_left33;
LON_STOP_LINE_07 = L_post_left36;
LON_STOP_LINE_08 = L_post_left39;
LON_STOP_LINE_09 = L_post_left44;
LON_STOP_LINE_10 = L_post_left46;
LON_STOP_LINE_11 = L_post_left50;
LON_STOP_LINE_12 = L_post_left58;

lat_STOP_LINE_01 = l_post_left21;
lat_STOP_LINE_02 = l_post_left26;
lat_STOP_LINE_03 = l_post_left29;
lat_STOP_LINE_04 = l_post_left31;
lat_STOP_LINE_05 = l_post_left32;
lat_STOP_LINE_06 = l_post_left33;
lat_STOP_LINE_07 = l_post_left36;
lat_STOP_LINE_08 = l_post_left39;
lat_STOP_LINE_09 = l_post_left44;
lat_STOP_LINE_10 = l_post_left46;
lat_STOP_LINE_11 = l_post_left50;
lat_STOP_LINE_12 = l_post_left58;



L_STOP_LINES = [ LON_STOP_LINE_01 LON_STOP_LINE_02 LON_STOP_LINE_03 ...
                 LON_STOP_LINE_04 LON_STOP_LINE_05 LON_STOP_LINE_06 ...
                 LON_STOP_LINE_07 LON_STOP_LINE_08 LON_STOP_LINE_09 ...
                 LON_STOP_LINE_10 LON_STOP_LINE_11 LON_STOP_LINE_12];

l_STOP_LINES = [ lat_STOP_LINE_01 lat_STOP_LINE_02 lat_STOP_LINE_03 ...
                 lat_STOP_LINE_04 lat_STOP_LINE_05 lat_STOP_LINE_06 ...
                 lat_STOP_LINE_07 lat_STOP_LINE_08 lat_STOP_LINE_09 ...
                 lat_STOP_LINE_10 lat_STOP_LINE_11 lat_STOP_LINE_12];

geoplot_with_index(L_STOP_LINES, l_STOP_LINES, 'g.', 'Stop Lines' )