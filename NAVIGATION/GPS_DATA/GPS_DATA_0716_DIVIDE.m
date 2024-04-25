%------------------------------------------------------------------%
% HADA 2022
%------------------------------------------------------------------%
% About      : Processing GPS Data
% Created    : 2022.07.19
% Modified   : 2022.07.19
% Editted by : Wooju So
%------------------------------------------------------------------%

clear all; close all; clc;

%% CLEANED DATA (COMPLETE)

clear all; close all; clc;

load('data/GPS_DATA_0716_01_CLEANED_CELL.mat')

geoplot_with_index_section(PTS_CLEANED_ALL_cell, 'g.', 1, 'Whole Lines' )

%% STOP LINES (COMPLETE)

clear all; close all; clc;

load('data/GPS_DATA_0716_02_STOP_LINES_CELL.mat')

geoplot_with_index_section(PTS_STOP_LINES_ALL_cell, 'g.', 2, 'Stop Lines' )

%% PARKING LOTS (COMPLETE)

clear all; close all; clc;

load('data/GPS_DATA_0716_03_PARKING_LOTS.mat')

geoplot_with_index(PTS_PARKING_ALL, 'g.', 3, 'Parking Lots' )
