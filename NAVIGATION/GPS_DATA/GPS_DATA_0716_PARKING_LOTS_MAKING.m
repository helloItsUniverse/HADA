%------------------------------------------------------------------%
% HADA 2022
%------------------------------------------------------------------%
% About      : Parking Lots from GPS Data
% Created    : 2022.07.19
% Modified   : 2022.07.19
% Editted by : Wooju So
%------------------------------------------------------------------%

clear all; close all; clc;

%% CLEANED DATA (COMPLETE)

clear all; close all; clc;

load('data/GPS_DATA_0716_01_CLEANED_AND_MERGED.mat')

geoplot_with_index(lat_post_left_merged, LON_post_left_merged, 'g.', 9, 'Stop Lines' )

%% PARKING LOT DATA MAKING

clear all; close all; clc;

load('data/GPS_DATA_0716_01_CLEANED_AND_MERGED.mat')

lat_PARKING_01 = lat_post_left04;
lat_PARKING_02 = lat_post_left05;
lat_PARKING_03 = lat_post_left06;
lat_PARKING_04 = lat_post_left07;
lat_PARKING_05 = lat_post_left08;
lat_PARKING_06 = lat_post_left09;
lat_PARKING_07 = lat_post_left10;
lat_PARKING_08 = lat_post_left11;
lat_PARKING_09 = lat_post_left12;
lat_PARKING_10 = lat_post_left13;
lat_PARKING_11 = lat_post_left14;
lat_PARKING_12 = lat_post_left15;
lat_PARKING_13 = lat_post_left16;

LON_PARKING_01 = LON_post_left04;
LON_PARKING_02 = LON_post_left05;
LON_PARKING_03 = LON_post_left06;
LON_PARKING_04 = LON_post_left07;
LON_PARKING_05 = LON_post_left08;
LON_PARKING_06 = LON_post_left09;
LON_PARKING_07 = LON_post_left10;
LON_PARKING_08 = LON_post_left11;
LON_PARKING_09 = LON_post_left12;
LON_PARKING_10 = LON_post_left13;
LON_PARKING_11 = LON_post_left14;
LON_PARKING_12 = LON_post_left15;
LON_PARKING_13 = LON_post_left16;

lat_PARKING_LOTS = [ lat_PARKING_01 lat_PARKING_02 lat_PARKING_03 ...
                     lat_PARKING_04 lat_PARKING_05 lat_PARKING_06 ...
                     lat_PARKING_07 lat_PARKING_08 lat_PARKING_09 ...
                     lat_PARKING_10 lat_PARKING_11 lat_PARKING_12 ...
                     lat_PARKING_13 
                   ];

LON_PARKING_LOTS = [ LON_PARKING_01 LON_PARKING_02 LON_PARKING_03 ...
                     LON_PARKING_04 LON_PARKING_05 LON_PARKING_06 ...
                     LON_PARKING_07 LON_PARKING_08 LON_PARKING_09 ...
                     LON_PARKING_10 LON_PARKING_11 LON_PARKING_12 ...
                     LON_PARKING_13
                   ];

geoplot_with_index(lat_PARKING_13, LON_PARKING_13, 'g.',10, 'Stop Lines' )



%% PARKING LOTS (COMPLETE)

clear all; close all; clc;

load('data/GPS_DATA_0716_03_PARKING_LOTS.mat')

% geoplot_with_index(lat_PARKING_LOTS, LON_PARKING_LOTS, 'g.', 7, 'Stop Lines' )

% PTS_PARKING_01 = [ lat_PARKING_01; LON_PARKING_01 ]';
% PTS_PARKING_02 = [ lat_PARKING_02; LON_PARKING_02 ]';
% PTS_PARKING_03 = [ lat_PARKING_03; LON_PARKING_03 ]';
% PTS_PARKING_04 = [ lat_PARKING_04; LON_PARKING_04 ]';
% PTS_PARKING_05 = [ lat_PARKING_05; LON_PARKING_05 ]';
% PTS_PARKING_06 = [ lat_PARKING_06; LON_PARKING_06 ]';
% PTS_PARKING_07 = [ lat_PARKING_07; LON_PARKING_07 ]';
% PTS_PARKING_08 = [ lat_PARKING_08; LON_PARKING_08 ]';
% PTS_PARKING_09 = [ lat_PARKING_09; LON_PARKING_09 ]';
% PTS_PARKING_10 = [ lat_PARKING_10; LON_PARKING_10 ]';
% PTS_PARKING_11 = [ lat_PARKING_11; LON_PARKING_11 ]';
% PTS_PARKING_12 = [ lat_PARKING_12; LON_PARKING_12 ]';
% PTS_PARKING_13 = [ lat_PARKING_13; LON_PARKING_13 ]';
% PTS_PARKING_ALL = [ PTS_PARKING_01; PTS_PARKING_02; PTS_PARKING_03; ...
%                     PTS_PARKING_04; PTS_PARKING_05; PTS_PARKING_06; ...
%                     PTS_PARKING_07; PTS_PARKING_08; PTS_PARKING_09; ...
%                     PTS_PARKING_10; PTS_PARKING_11; PTS_PARKING_12; ...
%                     PTS_PARKING_13
%                   ];

geoplot_with_index(PTS_PARKING_ALL, 'g.', 7, 'Stop Lines' )


%% PARKING LOTS CELL

PTS_PARKING_01_cell = num2cell(PTS_PARKING_01);
[ row, col ] = size(PTS_PARKING_01_cell);
for i = 1:row
    PTS_PARKING_01_cell{i, 3} = {'Parking - 01'};
end

PTS_PARKING_02_cell = num2cell(PTS_PARKING_02);
[ row, col ] = size(PTS_PARKING_02_cell);
for i = 1:row
    PTS_PARKING_02_cell{i, 3} = {'Parking - 02'};
end

PTS_PARKING_03_cell = num2cell(PTS_PARKING_03);
[ row, col ] = size(PTS_PARKING_03_cell);
for i = 1:row
    PTS_PARKING_03_cell{i, 3} = {'Parking - 03'};
end

PTS_PARKING_04_cell = num2cell(PTS_PARKING_04);
[ row, col ] = size(PTS_PARKING_04_cell);
for i = 1:row
    PTS_PARKING_04_cell{i, 3} = {'Parking - 04'};
end

PTS_PARKING_05_cell = num2cell(PTS_PARKING_05);
[ row, col ] = size(PTS_PARKING_05_cell);
for i = 1:row
    PTS_PARKING_05_cell{i, 3} = {'Parking - 05'};
end

PTS_PARKING_06_cell = num2cell(PTS_PARKING_06);
[ row, col ] = size(PTS_PARKING_06_cell);
for i = 1:row
    PTS_PARKING_06_cell{i, 3} = {'Parking - 06'};
end

PTS_PARKING_07_cell = num2cell(PTS_PARKING_07);
[ row, col ] = size(PTS_PARKING_07_cell);
for i = 1:row
    PTS_PARKING_07_cell{i, 3} = {'Parking - 07'};
end

PTS_PARKING_08_cell = num2cell(PTS_PARKING_08);
[ row, col ] = size(PTS_PARKING_08_cell);
for i = 1:row
    PTS_PARKING_08_cell{i, 3} = {'Parking - 08'};
end

PTS_PARKING_09_cell = num2cell(PTS_PARKING_09);
[ row, col ] = size(PTS_PARKING_09_cell);
for i = 1:row
    PTS_PARKING_09_cell{i, 3} = {'Parking - 09'};
end

PTS_PARKING_10_cell = num2cell(PTS_PARKING_10);
[ row, col ] = size(PTS_PARKING_10_cell);
for i = 1:row
    PTS_PARKING_10_cell{i, 3} = {'Parking - 10'};
end

PTS_PARKING_11_cell = num2cell(PTS_PARKING_11);
[ row, col ] = size(PTS_PARKING_11_cell);
for i = 1:row
    PTS_PARKING_11_cell{i, 3} = {'Parking - 11'};
end

PTS_PARKING_12_cell = num2cell(PTS_PARKING_12);
[ row, col ] = size(PTS_PARKING_12_cell);
for i = 1:row
    PTS_PARKING_12_cell{i, 3} = {'Parking - 12'};
end

PTS_PARKING_13_cell = num2cell(PTS_PARKING_13);
[ row, col ] = size(PTS_PARKING_13_cell);
for i = 1:row
    PTS_PARKING_13_cell{i, 3} = {'Parking - 13'};
end


PTS_PARKING_ALL_cell = [ PTS_PARKING_01_cell; PTS_PARKING_02_cell; ...
                         PTS_PARKING_03_cell; PTS_PARKING_04_cell; ...
                         PTS_PARKING_05_cell; PTS_PARKING_06_cell; ...
                         PTS_PARKING_07_cell; PTS_PARKING_08_cell; ...
                         PTS_PARKING_09_cell; PTS_PARKING_10_cell; ...
                         PTS_PARKING_11_cell; PTS_PARKING_12_cell; ...
                         PTS_PARKING_13_cell
                       ];

geoplot_with_index_section(PTS_PARKING_ALL_cell, 'b.', 1, 'Parking Lines');