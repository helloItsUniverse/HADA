%------------------------------------------------------------------%
% HADA 2022
%------------------------------------------------------------------%
% About      : Stop Lines from GPS Data
% Created    : 2022.07.19
% Modified   : 2022.07.19
% Editted by : Wooju So
%------------------------------------------------------------------%

clear all; close all; clc;

load('data/GPS_DATA_0716_POST_PROCESSING.mat')

geoplot_with_index(L_post_left_merged, l_post_left_merged, 'g.', 'Cleaned GPS Data' )

%% STOP LINES incomplete

clear all; close all; clc;

load('data/GPS_DATA_0716_STOP_LINES_INCOMPLETE.mat')

geoplot_with_index(L_STOP_LINES, l_STOP_LINES, 'g.', 6, 'Stop Lines' )

LON_STOP_LINE_17 = LON_STOP_LINE_09 - 0.001495;
lat_STOP_LINE_17 = lat_STOP_LINE_09 + 0.000072;

for idx_rm = 239:-1:210
    LON_STOP_LINE_17(idx_rm) = [];
    lat_STOP_LINE_17(idx_rm) = [];
end


[ L_STOP_LINES, l_STOP_LINES ] = append_section(L_STOP_LINES, l_STOP_LINES, LON_STOP_LINE_17, lat_STOP_LINE_17);

hold on;
geoplot_with_index(LON_STOP_LINE_17, lat_STOP_LINE_17, 'r.', 6, 'Stop Lines')





%% STOP LINES (COMPLETE)

clear all; close all; clc;

load('data/GPS_DATA_0716_02_STOP_LINES.mat')

PTS_STOP_LINE_01 = [ LON_STOP_LINE_01; lat_STOP_LINE_01 ]';
PTS_STOP_LINE_02 = [ LON_STOP_LINE_02; lat_STOP_LINE_02 ]';
PTS_STOP_LINE_03 = [ LON_STOP_LINE_03; lat_STOP_LINE_03 ]';
PTS_STOP_LINE_04 = [ LON_STOP_LINE_04; lat_STOP_LINE_04 ]';
PTS_STOP_LINE_05 = [ LON_STOP_LINE_05; lat_STOP_LINE_05 ]';
PTS_STOP_LINE_06 = [ LON_STOP_LINE_06; lat_STOP_LINE_06 ]';
PTS_STOP_LINE_07 = [ LON_STOP_LINE_07; lat_STOP_LINE_07 ]';
PTS_STOP_LINE_08 = [ LON_STOP_LINE_08; lat_STOP_LINE_08 ]';
PTS_STOP_LINE_09 = [ LON_STOP_LINE_09; lat_STOP_LINE_09 ]';
PTS_STOP_LINE_10 = [ LON_STOP_LINE_10; lat_STOP_LINE_10 ]';
PTS_STOP_LINE_11 = [ LON_STOP_LINE_11; lat_STOP_LINE_11 ]';
PTS_STOP_LINE_12 = [ LON_STOP_LINE_12; lat_STOP_LINE_12 ]';
PTS_STOP_LINE_13 = [ LON_STOP_LINE_13; lat_STOP_LINE_13 ]';
PTS_STOP_LINE_14 = [ LON_STOP_LINE_14; lat_STOP_LINE_14 ]';
PTS_STOP_LINE_15 = [ LON_STOP_LINE_15; lat_STOP_LINE_15 ]';
PTS_STOP_LINE_16 = [ LON_STOP_LINE_16; lat_STOP_LINE_16 ]';
PTS_STOP_LINE_17 = [ LON_STOP_LINE_17; lat_STOP_LINE_17 ]';

PTS_STOP_LINE_ALL = [ PTS_STOP_LINE_01; PTS_STOP_LINE_02; PTS_STOP_LINE_03; ...
                      PTS_STOP_LINE_04; PTS_STOP_LINE_05; PTS_STOP_LINE_06; ...
                      PTS_STOP_LINE_07; PTS_STOP_LINE_08; PTS_STOP_LINE_09; ...
                      PTS_STOP_LINE_10; PTS_STOP_LINE_11; PTS_STOP_LINE_12; ...
                      PTS_STOP_LINE_13; PTS_STOP_LINE_14; PTS_STOP_LINE_15; ...
                      PTS_STOP_LINE_16; PTS_STOP_LINE_17
                    ];

geoplot_with_index(PTS_STOP_LINE_ALL, 'g.', 7, 'Stop Lines' )


% geoplot_with_index(lat_STOP_LINES, LON_STOP_LINES, 'g.', 7, 'Stop Lines' )


%% COMPLETE CLEANED DATA

clear all; close all; clc;

load('data/GPS_DATA_0716_01_CLEANED_AND_MERGED.mat')

geoplot_with_index(lat_post_left_merged, LON_post_left_merged, 'g.', 8, 'Stop Lines' )


%% COMPLETE STOP LINES

clear all; close all; clc;

load('data/GPS_DATA_0716_02_STOP_LINES.mat')

geoplot_with_index(PTS_STOP_LINE_ALL, 'g.', 2, 'Stop Lines' )

%% CELL MAKING

PTS_STOP_LINE_01_cell = num2cell(PTS_STOP_LINE_01);
[ row, col ] = size(PTS_STOP_LINE_01_cell);
for i = 1:row
    PTS_STOP_LINE_01_cell{i, 3} = {'Stop Line - 01'};
end

PTS_STOP_LINE_02_cell = num2cell(PTS_STOP_LINE_02);
[ row, col ] = size(PTS_STOP_LINE_02_cell);
for i = 1:row
    PTS_STOP_LINE_02_cell{i, 3} = {'Stop Line - 02'};
end

PTS_STOP_LINE_03_cell = num2cell(PTS_STOP_LINE_03);
[ row, col ] = size(PTS_STOP_LINE_03_cell);
for i = 1:row
    PTS_STOP_LINE_03_cell{i, 3} = {'Stop Line - 03'};
end

PTS_STOP_LINE_04_cell = num2cell(PTS_STOP_LINE_04);
[ row, col ] = size(PTS_STOP_LINE_04_cell);
for i = 1:row
    PTS_STOP_LINE_04_cell{i, 3} = {'Stop Line - 04'};
end

PTS_STOP_LINE_05_cell = num2cell(PTS_STOP_LINE_05);
[ row, col ] = size(PTS_STOP_LINE_05_cell);
for i = 1:row
    PTS_STOP_LINE_05_cell{i, 3} = {'Stop Line - 05'};
end

PTS_STOP_LINE_06_cell = num2cell(PTS_STOP_LINE_06);
[ row, col ] = size(PTS_STOP_LINE_06_cell);
for i = 1:row
    PTS_STOP_LINE_06_cell{i, 3} = {'Stop Line - 06'};
end

PTS_STOP_LINE_07_cell = num2cell(PTS_STOP_LINE_07);
[ row, col ] = size(PTS_STOP_LINE_07_cell);
for i = 1:row
    PTS_STOP_LINE_07_cell{i, 3} = {'Stop Line - 07'};
end

PTS_STOP_LINE_08_cell = num2cell(PTS_STOP_LINE_08);
[ row, col ] = size(PTS_STOP_LINE_08_cell);
for i = 1:row
    PTS_STOP_LINE_08_cell{i, 3} = {'Stop Line - 08'};
end

PTS_STOP_LINE_09_cell = num2cell(PTS_STOP_LINE_09);
[ row, col ] = size(PTS_STOP_LINE_09_cell);
for i = 1:row
    PTS_STOP_LINE_09_cell{i, 3} = {'Stop Line - 09'};
end

PTS_STOP_LINE_10_cell = num2cell(PTS_STOP_LINE_10);
[ row, col ] = size(PTS_STOP_LINE_10_cell);
for i = 1:row
    PTS_STOP_LINE_10_cell{i, 3} = {'Stop Line - 10'};
end

PTS_STOP_LINE_11_cell = num2cell(PTS_STOP_LINE_11);
[ row, col ] = size(PTS_STOP_LINE_11_cell);
for i = 1:row
    PTS_STOP_LINE_11_cell{i, 3} = {'Stop Line - 11'};
end

PTS_STOP_LINE_12_cell = num2cell(PTS_STOP_LINE_12);
[ row, col ] = size(PTS_STOP_LINE_12_cell);
for i = 1:row
    PTS_STOP_LINE_12_cell{i, 3} = {'Stop Line - 12'};
end

PTS_STOP_LINE_13_cell = num2cell(PTS_STOP_LINE_13);
[ row, col ] = size(PTS_STOP_LINE_13_cell);
for i = 1:row
    PTS_STOP_LINE_13_cell{i, 3} = {'Stop Line - 13'};
end

PTS_STOP_LINE_14_cell = num2cell(PTS_STOP_LINE_14);
[ row, col ] = size(PTS_STOP_LINE_14_cell);
for i = 1:row
    PTS_STOP_LINE_14_cell{i, 3} = {'Stop Line - 14'};
end

PTS_STOP_LINE_15_cell = num2cell(PTS_STOP_LINE_15);
[ row, col ] = size(PTS_STOP_LINE_15_cell);
for i = 1:row
    PTS_STOP_LINE_15_cell{i, 3} = {'Stop Line - 15'};
end

PTS_STOP_LINE_16_cell = num2cell(PTS_STOP_LINE_16);
[ row, col ] = size(PTS_STOP_LINE_16_cell);
for i = 1:row
    PTS_STOP_LINE_16_cell{i, 3} = {'Stop Line - 16'};
end

PTS_STOP_LINE_17_cell = num2cell(PTS_STOP_LINE_17);
[ row, col ] = size(PTS_STOP_LINE_17_cell);
for i = 1:row
    PTS_STOP_LINE_17_cell{i, 3} = {'Stop Line - 17'};
end

PTS_STOP_LINE_18_cell{1, 1} = 37.24373544;
PTS_STOP_LINE_18_cell{1, 2} = 126.77441765;
PTS_STOP_LINE_18_cell{1, 3} = {'Stop Line - 18'};
for i = 2:100
    PTS_STOP_LINE_18_cell{i, 1} = PTS_STOP_LINE_18_cell{i-1, 1};
    PTS_STOP_LINE_18_cell{i, 2} = PTS_STOP_LINE_18_cell{i-1, 2} + 0.00000050;
    PTS_STOP_LINE_18_cell{i, 3} = PTS_STOP_LINE_18_cell{i-1, 3};
end






PTS_STOP_LINES_ALL_cell = [ PTS_STOP_LINE_01_cell; PTS_STOP_LINE_02_cell; ...
                            PTS_STOP_LINE_03_cell; PTS_STOP_LINE_04_cell; ...
                            PTS_STOP_LINE_05_cell; PTS_STOP_LINE_06_cell; ...
                            PTS_STOP_LINE_07_cell; PTS_STOP_LINE_08_cell; ...
                            PTS_STOP_LINE_09_cell; PTS_STOP_LINE_10_cell; ...
                            PTS_STOP_LINE_11_cell; PTS_STOP_LINE_12_cell; ...
                            PTS_STOP_LINE_13_cell; PTS_STOP_LINE_14_cell; ...
                            PTS_STOP_LINE_15_cell; PTS_STOP_LINE_16_cell; ...
                            PTS_STOP_LINE_17_cell; PTS_STOP_LINE_18_cell
                          ];

geoplot_with_index_section(PTS_STOP_LINES_ALL_cell, 'b.', 1, 'Whole Lines');

%% STOP LINES CELL

clear all; close all; clc;

load('data/GPS_DATA_0716_02_STOP_LINES_CELL.mat')

geoplot_with_index_section(PTS_STOP_LINES_ALL_cell, 'r.', 1, 'Stop Lines');