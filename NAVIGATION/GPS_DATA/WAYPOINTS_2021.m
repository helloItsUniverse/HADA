% CLEANED DATA (COMPLETE)
clear all; close all; clc;

load('data/GPS_DATA_0716_01_CLEANED_CELL.mat')

geoplot_with_index_section(PTS_CLEANED_ALL_cell, 'g.', 1, 'Whole Lines' )

% FILL DATA (COMPLETE)
load('data/GPS_DATA_0716_04_FILL_CELL.mat')

hold on;
geoplot_with_index_section(PTS_FILL_sect_ALL_cell, 'b.', 1, 'Whole Lines' )

idx_nums_01 = [    815   1553   2462   2795   3193 ...
                  3532   4154   4387   4867  24180 ...
                 24628  25013  25090  25170  25353 % 15
              ]';

idx_nums_02 = [    358 ]';

idx_nums_03 = [         76810  77110  79603   
              ]';

idx_nums_04 = [                               1638 ... % 20
                  1616   1593   1571   1549    
              ]';

idx_nums_05 = [                              63347 ... % 25
                 63467 ]';

idx_nums_06 = [           818    786    751    719 % 30
              ]';

idx_nums_07 = [  47010  46711  46302  46236  46172 ...
                 46112  46037  45952  45867 
              ]';

idx_nums_08 = [                               1235 ... % 40
                  1191   1139
              ]';

idx_nums_09 = [                76810  77110  77386  ... % 45
                 79603  80677  81346  81621  10188  ... % 50
                 10434  10494  10540  10592  10659  ... % 55
                 30313  30474  30537  30572  30609  ... % 60
                 30640  30674  30732  11931  12373  ... % 65
                 12766  12936  13006  13056  13115  ... % 70
                 13170  13321  65966  62022  62124  ... % 75
                 62623
              ]';

idx_nums_10 = [          1715   1691   1663   1639  % 80
              ]';

idx_nums_11 = [  73898  74103  74561  74978  75430  ... % 85
                 88340  88656  88983  89645  90123  ... % 90
                 90713  91158  92354  92747  93632  ... % 95
                 94095  94645                           % 97
              ]';


for idx = 1:size(idx_nums_01)
    WP_01(idx, 1:2) = [ PTS_CLEANED_ALL_cell{idx_nums_01(idx), 1:2} ];
end

for idx = 1:size(idx_nums_02)
    WP_02(idx, 1:2) = [ PTS_FILL_sect_ALL_cell{idx_nums_02(idx), 1:2} ];
end

for idx = 1:size(idx_nums_03)
    WP_03(idx, 1:2) = [ PTS_CLEANED_ALL_cell{idx_nums_03(idx), 1:2} ];
end

for idx = 1:size(idx_nums_04)
    WP_04(idx, 1:2) = [ PTS_FILL_sect_ALL_cell{idx_nums_04(idx), 1:2} ];
end

for idx = 1:size(idx_nums_05)
    WP_05(idx, 1:2) = [ PTS_CLEANED_ALL_cell{idx_nums_05(idx), 1:2} ];
end

for idx = 1:size(idx_nums_06)
    WP_06(idx, 1:2) = [ PTS_FILL_sect_ALL_cell{idx_nums_06(idx), 1:2} ];
end

for idx = 1:size(idx_nums_07)
    WP_07(idx, 1:2) = [ PTS_CLEANED_ALL_cell{idx_nums_07(idx), 1:2} ];
end

for idx = 1:size(idx_nums_08)
    WP_08(idx, 1:2) = [ PTS_FILL_sect_ALL_cell{idx_nums_08(idx), 1:2} ];
end

for idx = 1:size(idx_nums_09)
    WP_09(idx, 1:2) = [ PTS_CLEANED_ALL_cell{idx_nums_09(idx), 1:2} ];
end

for idx = 1:size(idx_nums_10)
    WP_10(idx, 1:2) = [ PTS_FILL_sect_ALL_cell{idx_nums_10(idx), 1:2} ];
end

for idx = 1:size(idx_nums_11)
    WP_11(idx, 1:2) = [ PTS_CLEANED_ALL_cell{idx_nums_11(idx), 1:2} ];
end

heading_01 = azimuth('rh', WP_01(1,1), WP_01(1,2), WP_01(2,1), WP_01(2,2));

WP_2021 = [ WP_01; WP_02; WP_03; WP_04; WP_05; ...
            WP_06; WP_07; WP_08; WP_09; WP_10; ...
            WP_11
          ];
[row, col] = size(WP_2021);

for i = 1:row-1
    heading_angle(i) = azimuth('rh', WP_2021(i,1), WP_2021(i,2), WP_2021(i+1,1), WP_2021(i+1,2));
    if heading_angle(i) > 180.0
        heading_angle(i) = heading_angle(i) - 360;
    end
end
heading_angle(row) = 0.0;
heading_angle = heading_angle';

geoplot_with_index(WP_2021, 'g*-', 2, 'Waypoints 2021' )

WP_2021 = [WP_2021 heading_angle];

%% WRITE CSV FILE

writematrix(WP_2021, 'data/WAYPOINTS_2021.csv')