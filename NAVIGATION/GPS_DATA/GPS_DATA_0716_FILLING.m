%------------------------------------------------------------------%
% HADA 2022
%------------------------------------------------------------------%
% About      : 'Filling the hole' of GPS Data
% Created    : 2022.07.19
% Modified   : 2022.07.19
% Editted by : Wooju So
%------------------------------------------------------------------%

clear all; close all; clc;

%% CLEANED DATA (COMPLETE)

clear all; close all; clc;

load('data/GPS_DATA_0716_01_CLEANED_AND_MERGED.mat')

PTS_CLEANED_01_cell = num2cell(PTS_CLEANED_01);
[ row, col ] = size(PTS_CLEANED_01_cell);
for i = 1:row
    PTS_CLEANED_01_cell{i, 3} = {'sect-01'};
end

PTS_CLEANED_02_cell = num2cell(PTS_CLEANED_02);
[ row, col ] = size(PTS_CLEANED_02_cell);
for i = 1:row
    PTS_CLEANED_02_cell{i, 3} = {'sect-02'};
end

PTS_CLEANED_03_cell = num2cell(PTS_CLEANED_03);
[ row, col ] = size(PTS_CLEANED_03_cell);
for i = 1:row
    PTS_CLEANED_03_cell{i, 3} = {'sect-03'};
end

PTS_CLEANED_04_cell = num2cell(PTS_CLEANED_04);
[ row, col ] = size(PTS_CLEANED_04_cell);
for i = 1:row
    PTS_CLEANED_04_cell{i, 3} = {'sect-04'};
end

PTS_CLEANED_05_cell = num2cell(PTS_CLEANED_05);
[ row, col ] = size(PTS_CLEANED_05_cell);
for i = 1:row
    PTS_CLEANED_05_cell{i, 3} = {'sect-05'};
end

PTS_CLEANED_06_cell = num2cell(PTS_CLEANED_06);
[ row, col ] = size(PTS_CLEANED_06_cell);
for i = 1:row
    PTS_CLEANED_06_cell{i, 3} = {'sect-06'};
end

PTS_CLEANED_07_cell = num2cell(PTS_CLEANED_07);
[ row, col ] = size(PTS_CLEANED_07_cell);
for i = 1:row
    PTS_CLEANED_07_cell{i, 3} = {'sect-07'};
end

PTS_CLEANED_08_cell = num2cell(PTS_CLEANED_08);
[ row, col ] = size(PTS_CLEANED_08_cell);
for i = 1:row
    PTS_CLEANED_08_cell{i, 3} = {'sect-08'};
end

PTS_CLEANED_09_cell = num2cell(PTS_CLEANED_09);
[ row, col ] = size(PTS_CLEANED_09_cell);
for i = 1:row
    PTS_CLEANED_09_cell{i, 3} = {'sect-09'};
end

PTS_CLEANED_10_cell = num2cell(PTS_CLEANED_10);
[ row, col ] = size(PTS_CLEANED_10_cell);
for i = 1:row
    PTS_CLEANED_10_cell{i, 3} = {'sect-10'};
end

PTS_CLEANED_11_cell = num2cell(PTS_CLEANED_11);
[ row, col ] = size(PTS_CLEANED_11_cell);
for i = 1:row
    PTS_CLEANED_11_cell{i, 3} = {'sect-11'};
end

PTS_CLEANED_12_cell = num2cell(PTS_CLEANED_12);
[ row, col ] = size(PTS_CLEANED_12_cell);
for i = 1:row
    PTS_CLEANED_12_cell{i, 3} = {'sect-12'};
end

PTS_CLEANED_13_cell = num2cell(PTS_CLEANED_13);
[ row, col ] = size(PTS_CLEANED_13_cell);
for i = 1:row
    PTS_CLEANED_13_cell{i, 3} = {'sect-13'};
end

PTS_CLEANED_14_cell = num2cell(PTS_CLEANED_14);
[ row, col ] = size(PTS_CLEANED_14_cell);
for i = 1:row
    PTS_CLEANED_14_cell{i, 3} = {'sect-14'};
end

PTS_CLEANED_15_cell = num2cell(PTS_CLEANED_15);
[ row, col ] = size(PTS_CLEANED_15_cell);
for i = 1:row
    PTS_CLEANED_15_cell{i, 3} = {'sect-15'};
end

PTS_CLEANED_16_cell = num2cell(PTS_CLEANED_16);
[ row, col ] = size(PTS_CLEANED_16_cell);
for i = 1:row
    PTS_CLEANED_16_cell{i, 3} = {'sect-16'};
end

PTS_CLEANED_17_cell = num2cell(PTS_CLEANED_17);
[ row, col ] = size(PTS_CLEANED_17_cell);
for i = 1:row
    PTS_CLEANED_17_cell{i, 3} = {'sect-17'};
end

PTS_CLEANED_18_cell = num2cell(PTS_CLEANED_18);
[ row, col ] = size(PTS_CLEANED_18_cell);
for i = 1:row
    PTS_CLEANED_18_cell{i, 3} = {'sect-18'};
end

PTS_CLEANED_19_cell = num2cell(PTS_CLEANED_19);
[ row, col ] = size(PTS_CLEANED_19_cell);
for i = 1:row
    PTS_CLEANED_19_cell{i, 3} = {'sect-19'};
end

PTS_CLEANED_20_cell = num2cell(PTS_CLEANED_20);
[ row, col ] = size(PTS_CLEANED_20_cell);
for i = 1:row
    PTS_CLEANED_20_cell{i, 3} = {'sect-20'};
end

PTS_CLEANED_21_cell = num2cell(PTS_CLEANED_21);
[ row, col ] = size(PTS_CLEANED_21_cell);
for i = 1:row
    PTS_CLEANED_21_cell{i, 3} = {'sect-21'};
end

PTS_CLEANED_22_cell = num2cell(PTS_CLEANED_22);
[ row, col ] = size(PTS_CLEANED_22_cell);
for i = 1:row
    PTS_CLEANED_22_cell{i, 3} = {'sect-22'};
end

PTS_CLEANED_23_cell = num2cell(PTS_CLEANED_23);
[ row, col ] = size(PTS_CLEANED_23_cell);
for i = 1:row
    PTS_CLEANED_23_cell{i, 3} = {'sect-23'};
end

PTS_CLEANED_24_cell = num2cell(PTS_CLEANED_24);
[ row, col ] = size(PTS_CLEANED_24_cell);
for i = 1:row
    PTS_CLEANED_24_cell{i, 3} = {'sect-24'};
end

PTS_CLEANED_25_cell = num2cell(PTS_CLEANED_25);
[ row, col ] = size(PTS_CLEANED_25_cell);
for i = 1:row
    PTS_CLEANED_25_cell{i, 3} = {'sect-25'};
end

PTS_CLEANED_26_cell = num2cell(PTS_CLEANED_26);
[ row, col ] = size(PTS_CLEANED_26_cell);
for i = 1:row
    PTS_CLEANED_26_cell{i, 3} = {'sect-26'};
end

PTS_CLEANED_27_cell = num2cell(PTS_CLEANED_27);
[ row, col ] = size(PTS_CLEANED_27_cell);
for i = 1:row
    PTS_CLEANED_27_cell{i, 3} = {'sect-27'};
end

PTS_CLEANED_28_cell = num2cell(PTS_CLEANED_28);
[ row, col ] = size(PTS_CLEANED_28_cell);
for i = 1:row
    PTS_CLEANED_28_cell{i, 3} = {'sect-28'};
end

PTS_CLEANED_29_cell = num2cell(PTS_CLEANED_29);
[ row, col ] = size(PTS_CLEANED_29_cell);
for i = 1:row
    PTS_CLEANED_29_cell{i, 3} = {'sect-29'};
end

PTS_CLEANED_30_cell = num2cell(PTS_CLEANED_30);
[ row, col ] = size(PTS_CLEANED_30_cell);
for i = 1:row
    PTS_CLEANED_30_cell{i, 3} = {'sect-30'};
end

PTS_CLEANED_31_cell = num2cell(PTS_CLEANED_31);
[ row, col ] = size(PTS_CLEANED_31_cell);
for i = 1:row
    PTS_CLEANED_31_cell{i, 3} = {'sect-31'};
end

PTS_CLEANED_32_cell = num2cell(PTS_CLEANED_32);
[ row, col ] = size(PTS_CLEANED_32_cell);
for i = 1:row
    PTS_CLEANED_32_cell{i, 3} = {'sect-32'};
end

PTS_CLEANED_33_cell = num2cell(PTS_CLEANED_33);
[ row, col ] = size(PTS_CLEANED_33_cell);
for i = 1:row
    PTS_CLEANED_33_cell{i, 3} = {'sect-33'};
end

PTS_CLEANED_34_cell = num2cell(PTS_CLEANED_34);
[ row, col ] = size(PTS_CLEANED_34_cell);
for i = 1:row
    PTS_CLEANED_34_cell{i, 3} = {'sect-34'};
end

PTS_CLEANED_35_cell = num2cell(PTS_CLEANED_35);
[ row, col ] = size(PTS_CLEANED_35_cell);
for i = 1:row
    PTS_CLEANED_35_cell{i, 3} = {'sect-35'};
end

PTS_CLEANED_36_cell = num2cell(PTS_CLEANED_36);
[ row, col ] = size(PTS_CLEANED_36_cell);
for i = 1:row
    PTS_CLEANED_36_cell{i, 3} = {'sect-36'};
end

PTS_CLEANED_37_cell = num2cell(PTS_CLEANED_37);
[ row, col ] = size(PTS_CLEANED_37_cell);
for i = 1:row
    PTS_CLEANED_37_cell{i, 3} = {'sect-37'};
end

PTS_CLEANED_38_cell = num2cell(PTS_CLEANED_38);
[ row, col ] = size(PTS_CLEANED_38_cell);
for i = 1:row
    PTS_CLEANED_38_cell{i, 3} = {'sect-38'};
end

PTS_CLEANED_39_cell = num2cell(PTS_CLEANED_39);
[ row, col ] = size(PTS_CLEANED_39_cell);
for i = 1:row
    PTS_CLEANED_39_cell{i, 3} = {'sect-39'};
end

PTS_CLEANED_40_cell = num2cell(PTS_CLEANED_40);
[ row, col ] = size(PTS_CLEANED_40_cell);
for i = 1:row
    PTS_CLEANED_40_cell{i, 3} = {'sect-40'};
end

PTS_CLEANED_41_cell = num2cell(PTS_CLEANED_41);
[ row, col ] = size(PTS_CLEANED_41_cell);
for i = 1:row
    PTS_CLEANED_41_cell{i, 3} = {'sect-41'};
end

PTS_CLEANED_42_cell = num2cell(PTS_CLEANED_42);
[ row, col ] = size(PTS_CLEANED_42_cell);
for i = 1:row
    PTS_CLEANED_42_cell{i, 3} = {'sect-42'};
end

PTS_CLEANED_43_cell = num2cell(PTS_CLEANED_43);
[ row, col ] = size(PTS_CLEANED_43_cell);
for i = 1:row
    PTS_CLEANED_43_cell{i, 3} = {'sect-43'};
end

PTS_CLEANED_44_cell = num2cell(PTS_CLEANED_44);
[ row, col ] = size(PTS_CLEANED_44_cell);
for i = 1:row
    PTS_CLEANED_44_cell{i, 3} = {'sect-44'};
end

PTS_CLEANED_45_cell = num2cell(PTS_CLEANED_45);
[ row, col ] = size(PTS_CLEANED_45_cell);
for i = 1:row
    PTS_CLEANED_45_cell{i, 3} = {'sect-45'};
end

PTS_CLEANED_46_cell = num2cell(PTS_CLEANED_46);
[ row, col ] = size(PTS_CLEANED_46_cell);
for i = 1:row
    PTS_CLEANED_46_cell{i, 3} = {'sect-46'};
end

PTS_CLEANED_47_cell = num2cell(PTS_CLEANED_47);
[ row, col ] = size(PTS_CLEANED_47_cell);
for i = 1:row
    PTS_CLEANED_47_cell{i, 3} = {'sect-47'};
end

PTS_CLEANED_48_cell = num2cell(PTS_CLEANED_48);
[ row, col ] = size(PTS_CLEANED_48_cell);
for i = 1:row
    PTS_CLEANED_48_cell{i, 3} = {'sect-48'};
end

PTS_CLEANED_49_cell = num2cell(PTS_CLEANED_49);
[ row, col ] = size(PTS_CLEANED_49_cell);
for i = 1:row
    PTS_CLEANED_49_cell{i, 3} = {'sect-49'};
end

PTS_CLEANED_50_cell = num2cell(PTS_CLEANED_50);
[ row, col ] = size(PTS_CLEANED_50_cell);
for i = 1:row
    PTS_CLEANED_50_cell{i, 3} = {'sect-50'};
end

PTS_CLEANED_51_cell = num2cell(PTS_CLEANED_51);
[ row, col ] = size(PTS_CLEANED_51_cell);
for i = 1:row
    PTS_CLEANED_51_cell{i, 3} = {'sect-51'};
end

PTS_CLEANED_52_cell = num2cell(PTS_CLEANED_52);
[ row, col ] = size(PTS_CLEANED_52_cell);
for i = 1:row
    PTS_CLEANED_52_cell{i, 3} = {'sect-52'};
end

PTS_CLEANED_53_cell = num2cell(PTS_CLEANED_53);
[ row, col ] = size(PTS_CLEANED_53_cell);
for i = 1:row
    PTS_CLEANED_53_cell{i, 3} = {'sect-53'};
end

PTS_CLEANED_54_cell = num2cell(PTS_CLEANED_54);
[ row, col ] = size(PTS_CLEANED_54_cell);
for i = 1:row
    PTS_CLEANED_54_cell{i, 3} = {'sect-54'};
end

PTS_CLEANED_55_cell = num2cell(PTS_CLEANED_55);
[ row, col ] = size(PTS_CLEANED_55_cell);
for i = 1:row
    PTS_CLEANED_55_cell{i, 3} = {'sect-55'};
end

PTS_CLEANED_56_cell = num2cell(PTS_CLEANED_56);
[ row, col ] = size(PTS_CLEANED_56_cell);
for i = 1:row
    PTS_CLEANED_56_cell{i, 3} = {'sect-56'};
end

PTS_CLEANED_57_cell = num2cell(PTS_CLEANED_57);
[ row, col ] = size(PTS_CLEANED_57_cell);
for i = 1:row
    PTS_CLEANED_57_cell{i, 3} = {'sect-57'};
end

PTS_CLEANED_58_cell = num2cell(PTS_CLEANED_58);
[ row, col ] = size(PTS_CLEANED_58_cell);
for i = 1:row
    PTS_CLEANED_58_cell{i, 3} = {'sect-58'};
end

PTS_CLEANED_59_cell = num2cell(PTS_CLEANED_59);
[ row, col ] = size(PTS_CLEANED_59_cell);
for i = 1:row
    PTS_CLEANED_59_cell{i, 3} = {'sect-59'};
end


PTS_CLEANED_ALL_cell = [ PTS_CLEANED_01_cell; PTS_CLEANED_02_cell; ...
                         PTS_CLEANED_03_cell; PTS_CLEANED_04_cell; ...
                         PTS_CLEANED_05_cell; PTS_CLEANED_06_cell; ...
                         PTS_CLEANED_07_cell; PTS_CLEANED_08_cell; ...
                         PTS_CLEANED_09_cell; PTS_CLEANED_10_cell; ...
                         PTS_CLEANED_11_cell; PTS_CLEANED_12_cell; ...
                         PTS_CLEANED_13_cell; PTS_CLEANED_14_cell; ...
                         PTS_CLEANED_15_cell; PTS_CLEANED_16_cell; ...
                         PTS_CLEANED_17_cell; PTS_CLEANED_18_cell; ...
                         PTS_CLEANED_19_cell; PTS_CLEANED_20_cell; ...
                         PTS_CLEANED_21_cell; PTS_CLEANED_22_cell; ...
                         PTS_CLEANED_23_cell; PTS_CLEANED_24_cell; ...
                         PTS_CLEANED_25_cell; PTS_CLEANED_26_cell; ...
                         PTS_CLEANED_27_cell; PTS_CLEANED_28_cell; ...
                         PTS_CLEANED_29_cell; PTS_CLEANED_30_cell; ...
                         PTS_CLEANED_31_cell; PTS_CLEANED_32_cell; ...
                         PTS_CLEANED_33_cell; PTS_CLEANED_34_cell; ...
                         PTS_CLEANED_35_cell; PTS_CLEANED_36_cell; ...
                         PTS_CLEANED_37_cell; PTS_CLEANED_38_cell; ...
                         PTS_CLEANED_39_cell; PTS_CLEANED_40_cell; ...
                         PTS_CLEANED_41_cell; PTS_CLEANED_42_cell; ...
                         PTS_CLEANED_43_cell; PTS_CLEANED_44_cell; ...
                         PTS_CLEANED_45_cell; PTS_CLEANED_46_cell; ...
                         PTS_CLEANED_47_cell; PTS_CLEANED_48_cell; ...
                         PTS_CLEANED_49_cell; PTS_CLEANED_50_cell; ...
                         PTS_CLEANED_51_cell; PTS_CLEANED_52_cell; ...
                         PTS_CLEANED_53_cell; PTS_CLEANED_54_cell; ...
                         PTS_CLEANED_55_cell; PTS_CLEANED_56_cell; ...
                         PTS_CLEANED_57_cell; PTS_CLEANED_58_cell; ...
                         PTS_CLEANED_59_cell;
                       ];

geoplot_with_index_section(PTS_CLEANED_ALL_cell, 'g.', 1, 'Whole Lines' )

% Plot
geoplot_with_index_section(PTS_CLEANED_01_cell, 'r.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_02_cell, 'g.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_03_cell, 'b.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_04_cell, 'w.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_05_cell, 'k.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_06_cell, 'y.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_07_cell, 'r.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_08_cell, 'g.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_09_cell, 'b.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_10_cell, 'w.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_11_cell, 'k.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_12_cell, 'y.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_13_cell, 'r.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_14_cell, 'g.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_15_cell, 'b.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_16_cell, 'w.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_17_cell, 'k.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_18_cell, 'y.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_19_cell, 'r.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_20_cell, 'g.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_21_cell, 'b.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_22_cell, 'w.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_23_cell, 'k.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_24_cell, 'y.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_25_cell, 'r.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_26_cell, 'g.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_27_cell, 'b.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_28_cell, 'w.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_29_cell, 'k.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_30_cell, 'y.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_31_cell, 'r.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_32_cell, 'g.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_33_cell, 'b.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_34_cell, 'w.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_35_cell, 'k.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_36_cell, 'y.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_37_cell, 'r.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_38_cell, 'g.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_39_cell, 'b.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_40_cell, 'w.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_41_cell, 'k.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_42_cell, 'y.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_43_cell, 'r.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_44_cell, 'g.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_45_cell, 'b.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_46_cell, 'w.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_47_cell, 'k.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_48_cell, 'y.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_49_cell, 'r.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_50_cell, 'g.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_51_cell, 'b.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_52_cell, 'w.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_53_cell, 'k.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_54_cell, 'y.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_55_cell, 'r.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_56_cell, 'g.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_57_cell, 'b.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_58_cell, 'w.', 1, 'Whole Lines' )
hold on;
geoplot_with_index_section(PTS_CLEANED_59_cell, 'k.', 1, 'Whole Lines' )



% geoplot_with_index(PTS_CLEANED_ALL, 'g.', 1, 'Whole Lines' )


%% CLEANED DATA (COMPLETE)

clear all; close all; clc;

load('data/GPS_DATA_0716_01_CLEANED_CELL.mat')

geoplot_with_index_section(PTS_CLEANED_ALL_cell, 'g.', 1, 'Whole Lines' )


%% FILLING

% Section fill 01
PTS_FILL_sect_01{1, 1} = 37.24171032;
PTS_FILL_sect_01{1, 2} = 126.77465978;
PTS_FILL_sect_01{1, 3} = {'sect-fill-01'};

for i = 2:271
   PTS_FILL_sect_01{i, 1} = PTS_FILL_sect_01{i-1, 1} - 0.000000015;
   PTS_FILL_sect_01{i, 2} = PTS_FILL_sect_01{i-1, 2} - 0.00000100;
   PTS_FILL_sect_01{i, 3} = PTS_FILL_sect_01{i-1, 3};
end

hold on;
geoplot_with_index_section(PTS_FILL_sect_01, 'b.', 1, 'Whole Lines' )

% Section fill 02
PTS_FILL_sect_02{1, 1} = 37.24175931;
PTS_FILL_sect_02{1, 2} = 126.77451434;
PTS_FILL_sect_02{1, 3} = {'sect-fill-02'};

for i = 2:320
   PTS_FILL_sect_02{i, 1} = PTS_FILL_sect_02{i-1, 1} - (0.00075931 - 0.00060168)/320;
   PTS_FILL_sect_02{i, 2} = PTS_FILL_sect_02{i-1, 2} + 0.00000001;
   PTS_FILL_sect_02{i, 3} = PTS_FILL_sect_02{i-1, 3};
end

hold on;
geoplot_with_index_section(PTS_FILL_sect_02, 'b.', 1, 'Whole Lines' )

% Section fill 03
PTS_FILL_sect_03{1, 1} = 37.24167851;
PTS_FILL_sect_03{1, 2} = 126.77458407;
PTS_FILL_sect_03{1, 3} = {'sect-fill-03'};

for i = 2:127
   PTS_FILL_sect_03{i, 1} = PTS_FILL_sect_03{i-1, 1} + 0.00000001;
   PTS_FILL_sect_03{i, 2} = PTS_FILL_sect_03{i-1, 2} + 0.00000100;
   PTS_FILL_sect_03{i, 3} = PTS_FILL_sect_03{i-1, 3};
end

hold on;
geoplot_with_index_section(PTS_FILL_sect_03, 'b.', 1, 'Whole Lines' )

% Section fill 04
circle_radius_01 = 0.00007377;
circle_center_01 = [37.24265671 126.77485255];
circle_theta_01 = linspace(0, 1/2*pi);
circle_latitude_01 = circle_center_01(1) + circle_radius_01 * sin(circle_theta_01);
circle_Longitude_01 = circle_center_01(2) + circle_radius_01 * cos(circle_theta_01);
circle_coord_01 = [circle_latitude_01' circle_Longitude_01'];
circle_cell_01 = num2cell(circle_coord_01);
circle_cell_01{1,3} = {'sect-fill-04'};
for i = 2:100
    circle_cell_01{i,3} = circle_cell_01{i-1,3};
end

for i = 1:100
    circle_cell_01{i,2} = circle_cell_01{i,2} + 0.00002863 - (0.00002863/100)*i;
end

PTS_FILL_sect_04 = circle_cell_01;

hold on;
geoplot_with_index_section(PTS_FILL_sect_04, 'b.', 1, 'Whole Lines');

% Section fill 05
circle_radius_02 = 0.00004956;
circle_center_02 = [37.24379215 126.77451573];
circle_theta_02 = linspace(1/2*pi, pi);
circle_latitude_02 = circle_center_02(1) + circle_radius_02 * sin(circle_theta_02);
circle_Longitude_02 = circle_center_02(2) + circle_radius_02 * cos(circle_theta_02);
circle_coord_02 = [circle_latitude_02' circle_Longitude_02'];
circle_cell_02 = num2cell(circle_coord_02);
circle_cell_02{1,3} = {'sect-fill-05'};
for i = 2:100
    circle_cell_02{i,3} = circle_cell_02{i-1,3};
end

for i = 1:100
    circle_cell_02{i,2} = circle_cell_02{i,2} - (0.00001221/100)*i;
end

PTS_FILL_sect_05 = circle_cell_02;

hold on;
geoplot_with_index_section(PTS_FILL_sect_05, 'b.', 1, 'Whole Lines');

% Section fill 06
circle_radius_03 = 0.00009848;
circle_center_03 = [37.24377085 126.77447857];
circle_theta_03 = linspace(1/2*pi, pi);
circle_latitude_03 = circle_center_03(1) + circle_radius_03 * sin(circle_theta_03);
circle_Longitude_03 = circle_center_03(2) + circle_radius_03 * cos(circle_theta_03);
circle_coord_03 = [circle_latitude_03' circle_Longitude_03'];
circle_cell_03 = num2cell(circle_coord_03);
circle_cell_03{1,3} = {'sect-fill-06'};
for i = 2:100
    circle_cell_03{i,3} = circle_cell_03{i-1,3};
end

for i = 1:100
    circle_cell_03{i,2} = circle_cell_03{i,2} - (0.00000350/100)*i;
end

PTS_FILL_sect_06 = circle_cell_03;

for i = 101:120
   PTS_FILL_sect_06{i, 1} = PTS_FILL_sect_06{i-1, 1} - 0.00000150;
   PTS_FILL_sect_06{i, 2} = PTS_FILL_sect_06{i-1, 2};
   PTS_FILL_sect_06{i, 3} = PTS_FILL_sect_06{i-1, 3};
end

hold on;
geoplot_with_index_section(PTS_FILL_sect_06, 'b.', 1, 'Whole Lines');


% Section fill 07
circle_radius_04 = 0.00008766;
circle_center_04 = [37.24292626 126.77483736];
circle_theta_04 = linspace(0, -1/2*pi);
circle_latitude_04 = circle_center_04(1) + circle_radius_04 * sin(circle_theta_04);
circle_Longitude_04 = circle_center_04(2) + circle_radius_04 * cos(circle_theta_04);
circle_coord_04 = [circle_latitude_04' circle_Longitude_04'];
circle_cell_04 = num2cell(circle_coord_04);
circle_cell_04{1,3} = {'sect-fill-07'};
for i = 2:100
    circle_cell_04{i,3} = circle_cell_04{i-1,3};
end

for i = 1:100
    circle_cell_04{i,2} = circle_cell_04{i,2} + 0.00002170 - (0.00002170/100)*i;
end

PTS_FILL_sect_07 = circle_cell_04;

hold on;
geoplot_with_index_section(PTS_FILL_sect_07, 'b.', 1, 'Whole Lines');

% Section fill 08
circle_radius_05 = 0.00005019;
circle_center_05 = [37.24175931 126.77457978];
circle_theta_05 = linspace(pi, 3/2*pi);
circle_latitude_05 = circle_center_05(1) + circle_radius_05 * sin(circle_theta_05);
circle_Longitude_05 = circle_center_05(2) + circle_radius_05 * cos(circle_theta_05);
circle_coord_05 = [circle_latitude_05' circle_Longitude_05'];
circle_cell_05 = num2cell(circle_coord_05);
circle_cell_05{1,3} = {'sect-fill-07'};
for i = 2:100
    circle_cell_05{i,3} = circle_cell_05{i-1,3};
end

for i = 1:100
    circle_cell_05{i,2} = circle_cell_05{i,2} - 0.00001525 + (0.00001525/100)*i;
end

PTS_FILL_sect_08 = circle_cell_05;

hold on;
geoplot_with_index_section(PTS_FILL_sect_08, 'b.', 1, 'Whole Lines');

% Section fill 09
circle_radius_06 = 0.00004174;
circle_center_06 = [37.24174756	126.77434661];
circle_theta_06 = linspace(0, -1/2*pi);
circle_latitude_06 = circle_center_06(1) + circle_radius_06 * sin(circle_theta_06);
circle_Longitude_06 = circle_center_06(2) + circle_radius_06 * cos(circle_theta_06);
circle_coord_06 = [circle_latitude_06' circle_Longitude_06'];
circle_cell_06 = num2cell(circle_coord_06);
circle_cell_06{1,3} = {'sect-fill-09'};
for i = 2:100
    circle_cell_06{i,3} = circle_cell_06{i-1,3};
end

for i = 1:100
    circle_cell_06{i,2} = circle_cell_06{i,2} + 0.00000791 - (0.00000791/100)*i;
end

PTS_FILL_sect_09 = circle_cell_06;

hold on;
geoplot_with_index_section(PTS_FILL_sect_09, 'b.', 1, 'Whole Lines');

% Section fill 10
circle_radius_07 = 0.00007532;
circle_center_07 = [37.24159577	126.77430713];
circle_theta_07 = linspace(0, 1/2*pi);
circle_latitude_07 = circle_center_07(1) + circle_radius_07 * sin(circle_theta_07);
circle_Longitude_07 = circle_center_07(2) + circle_radius_07 * cos(circle_theta_07);
circle_coord_07 = [circle_latitude_07' circle_Longitude_07'];
circle_cell_07 = num2cell(circle_coord_07);
circle_cell_07{1,3} = {'sect-fill-10'};
for i = 2:100
    circle_cell_07{i,3} = circle_cell_07{i-1,3};
end

for i = 1:100
    circle_cell_07{i,2} = circle_cell_07{i,2} + 0.00001340 - (0.00001340/100)*i;
end

PTS_FILL_sect_10 = circle_cell_07;

hold on;
geoplot_with_index_section(PTS_FILL_sect_10, 'b.', 1, 'Whole Lines');

% Section fill 11
circle_radius_08    = 0.00013552;
circle_center_08    = [37.24156907 126.77429253];
circle_theta_08     = linspace(0, 1/2*pi);
circle_latitude_08  = circle_center_08(1) + circle_radius_08 * sin(circle_theta_08);
circle_Longitude_08 = circle_center_08(2) + circle_radius_08 * cos(circle_theta_08);
circle_coord_08     = [circle_latitude_08' circle_Longitude_08'];
circle_cell_08      = num2cell(circle_coord_08);
circle_cell_08{1,3} = {'sect-fill-11'};
for i = 2:100
    circle_cell_08{i,3} = circle_cell_08{i-1,3};
end

for i = 1:100
    circle_cell_08{i,2} = circle_cell_08{i,2} + 0.00005121 - (0.00005121/100)*i;
end

PTS_FILL_sect_11 = circle_cell_08;

hold on;
geoplot_with_index_section(PTS_FILL_sect_11, 'b.', 1, 'Whole Lines');

% Section fill 12
circle_radius_09    = 0.00012040;
circle_center_09    = [37.24260609 126.77468420];
circle_theta_09     = linspace(1/2*pi, pi);
circle_latitude_09  = circle_center_09(1) + circle_radius_09 * sin(circle_theta_09);
circle_Longitude_09 = circle_center_09(2) + circle_radius_09 * cos(circle_theta_09);
circle_coord_09     = [circle_latitude_09' circle_Longitude_09'];
circle_cell_09      = num2cell(circle_coord_09);
circle_cell_09{1,3} = {'sect-fill-12'};
for i = 2:100
    circle_cell_09{i,3} = circle_cell_09{i-1,3};
end

for i = 1:100
    circle_cell_09{i,2} = circle_cell_09{i,2} - (0.00003213/100)*i;
end

PTS_FILL_sect_12 = circle_cell_09;

hold on;
geoplot_with_index_section(PTS_FILL_sect_12, 'b.', 1, 'Whole Lines');

% Section fill 13
circle_radius_10    = 0.00006197;
circle_center_10    = [37.24265574 126.77427598];
circle_theta_10     = linspace(0, 1/2*pi);
circle_latitude_10  = circle_center_10(1) + circle_radius_10 * sin(circle_theta_10);
circle_Longitude_10 = circle_center_10(2) + circle_radius_10 * cos(circle_theta_10);
circle_coord_10     = [circle_latitude_10' circle_Longitude_10'];
circle_cell_10      = num2cell(circle_coord_10);
circle_cell_10{1,3} = {'sect-fill-13'};
for i = 2:100
    circle_cell_10{i,3} = circle_cell_10{i-1,3};
end

for i = 1:100
    circle_cell_10{i,2} = circle_cell_10{i,2} + 0.00002444 - (0.00002444/100)*i;
end

PTS_FILL_sect_13 = circle_cell_10;

hold on;
geoplot_with_index_section(PTS_FILL_sect_13, 'b.', 1, 'Whole Lines');

% Section fill 14
circle_radius_11    = 0.00031522;
circle_center_11    = [37.24302368 126.77475006];
circle_theta_11     = linspace(pi, (1+1/3)*pi);
circle_latitude_11  = circle_center_11(1) + circle_radius_11 * sin(circle_theta_11);
circle_Longitude_11 = circle_center_11(2) + circle_radius_11 * cos(circle_theta_11);
circle_coord_11     = [circle_latitude_11' circle_Longitude_11'];
circle_cell_11      = num2cell(circle_coord_11);
circle_cell_11{1,3} = {'sect-fill-14'};
for i = 2:100
    circle_cell_11{i,3} = circle_cell_11{i-1,3};
end

circle_cell_11{91,2} = circle_cell_11{91,2} + 0.00000100;
circle_cell_11{92,2} = circle_cell_11{92,2} + 0.00000200;
circle_cell_11{93,2} = circle_cell_11{93,2} + 0.00000350;
circle_cell_11{94,2} = circle_cell_11{94,2} + 0.00000500;

PTS_FILL_sect_14 = circle_cell_11([1:94], :);

hold on;
geoplot_with_index_section(PTS_FILL_sect_14, 'b.', 1, 'Whole Lines');

% Section fill 15
circle_radius_12    = 0.00010154;
circle_center_12    = [37.24266694 126.77486681];
circle_theta_12     = linspace(0, 1/2*pi);
circle_latitude_12  = circle_center_12(1) + circle_radius_12 * sin(circle_theta_12);
circle_Longitude_12 = circle_center_12(2) + circle_radius_12 * cos(circle_theta_12);
circle_coord_12     = [circle_latitude_12' circle_Longitude_12'];
circle_cell_12      = num2cell(circle_coord_12);
circle_cell_12{1,3} = {'sect-fill-15'};
for i = 2:100
    circle_cell_12{i,3} = circle_cell_12{i-1,3};
end

for i = 1:100
    circle_cell_12{i,2} = circle_cell_12{i,2} - 0.00001448 + (0.00001448/100)*i;
end

PTS_FILL_sect_15 = circle_cell_12([15:100], :);


hold on;
geoplot_with_index_section(PTS_FILL_sect_15, 'b.', 1, 'Whole Lines');

% Section fill 16
circle_radius_13    = 0.00010008;
circle_center_13    = [37.24293118 126.77422816];
circle_theta_13     = linspace(0, -1/2*pi);
circle_latitude_13  = circle_center_13(1) + circle_radius_13 * sin(circle_theta_13);
circle_Longitude_13 = circle_center_13(2) + circle_radius_13 * cos(circle_theta_13);
circle_coord_13     = [circle_latitude_13' circle_Longitude_13'];
circle_cell_13      = num2cell(circle_coord_13);
circle_cell_13{1,3} = {'sect-fill-16'};
for i = 2:100
    circle_cell_13{i,3} = circle_cell_13{i-1,3};
end

for i = 1:100
    circle_cell_13{i,2} = circle_cell_13{i,2} + 0.00002235 - (0.00002235/100)*i;
end

PTS_FILL_sect_16 = circle_cell_13;

hold on;
geoplot_with_index_section(PTS_FILL_sect_16, 'b.', 1, 'Whole Lines');

% Section fill 17
PTS_FILL_sect_17{1, 1} = 37.24386938;
PTS_FILL_sect_17{1, 2} = 126.77447947;
PTS_FILL_sect_17{1, 3} = {'sect-fill-17'};

for i = 2:50
   PTS_FILL_sect_17{i, 1} = PTS_FILL_sect_17{i-1, 1} + (37.24387043 - 37.24386938) / 50;
   PTS_FILL_sect_17{i, 2} = PTS_FILL_sect_17{i-1, 2} - (126.77447947 - 126.77441478) / 50;
   PTS_FILL_sect_17{i, 3} = PTS_FILL_sect_17{i-1, 3};
end

hold on;
geoplot_with_index_section(PTS_FILL_sect_17, 'b.', 1, 'Whole Lines' )

% Section fill 18
circle_radius_14    = 0.00011576;
circle_center_14    = [37.24268943 126.77484785];
circle_theta_14     = linspace(0, 1/2*pi);
circle_latitude_14  = circle_center_14(1) + circle_radius_14 * sin(circle_theta_14);
circle_Longitude_14 = circle_center_14(2) + circle_radius_14 * cos(circle_theta_14);
circle_coord_14     = [circle_latitude_14' circle_Longitude_14'];
circle_cell_14      = num2cell(circle_coord_14);
circle_cell_14{1,3} = {'sect-fill-18'};
for i = 2:100
    circle_cell_14{i,3} = circle_cell_14{i-1,3};
end

for i = 1:100
    circle_cell_14{i,2} = circle_cell_14{i,2} + 0.00003048 - (0.00003048/100)*i;
end

PTS_FILL_sect_18 = circle_cell_14;

hold on;
geoplot_with_index_section(PTS_FILL_sect_18, 'b.', 1, 'Whole Lines');

% Section fill 19
circle_radius_15    = 0.00014917;
circle_center_15    = [37.24268943 126.77483736];
circle_theta_15     = linspace(0, 1/2*pi);
circle_latitude_15  = circle_center_15(1) + circle_radius_15 * sin(circle_theta_15);
circle_Longitude_15 = circle_center_15(2) + circle_radius_15 * cos(circle_theta_15);
circle_coord_15     = [circle_latitude_15' circle_Longitude_15'];
circle_cell_15      = num2cell(circle_coord_15);
circle_cell_15{1,3} = {'sect-fill-19'};
for i = 2:100
    circle_cell_15{i,3} = circle_cell_15{i-1,3};
end

for i = 1:100
    circle_cell_15{i,2} = circle_cell_15{i,2} + 0.00000756 - (0.00000756/100)*i;
end

PTS_FILL_sect_19 = circle_cell_15;

hold on;
geoplot_with_index_section(PTS_FILL_sect_19, 'b.', 1, 'Whole Lines');

% Section fill 20
circle_radius_16    = 0.00008718;
circle_center_16    = [37.24285566 126.77486681];
circle_theta_16     = linspace(-1/2*pi, 0);
circle_latitude_16  = circle_center_16(1) + circle_radius_16 * sin(circle_theta_16);
circle_Longitude_16 = circle_center_16(2) + circle_radius_16 * cos(circle_theta_16);
circle_coord_16     = [circle_latitude_16' circle_Longitude_16'];
circle_cell_16      = num2cell(circle_coord_16);
circle_cell_16{1,3} = {'sect-fill-20'};
for i = 2:100
    circle_cell_16{i,3} = circle_cell_16{i-1,3};
end

for i = 1:100
    circle_cell_16{i,2} = circle_cell_16{i,2} + (0.00003338/100)*i;
end

PTS_FILL_sect_20 = circle_cell_16;

hold on;
geoplot_with_index_section(PTS_FILL_sect_20, 'b.', 1, 'Whole Lines');

% Section fill 21
circle_radius_17    = 0.0000404649995;
circle_center_17    = [37.24174756 126.774444780001];
circle_theta_17     = linspace(pi, 3/2*pi);
circle_latitude_17  = circle_center_17(1) + circle_radius_17 * sin(circle_theta_17);
circle_Longitude_17 = circle_center_17(2) + circle_radius_17 * cos(circle_theta_17);
circle_coord_17     = [circle_latitude_17' circle_Longitude_17'];
circle_cell_17      = num2cell(circle_coord_17);
circle_cell_17{1,3} = {'sect-fill-21'};
for i = 2:100
    circle_cell_17{i,3} = circle_cell_17{i-1,3};
end

for i = 1:100
    circle_cell_17{i,2} = circle_cell_17{i,2} - 0.000008055002 + (0.000008055002/100)*i;
end

PTS_FILL_sect_21 = circle_cell_17;

hold on;
geoplot_with_index_section(PTS_FILL_sect_21, 'b.', 1, 'Whole Lines');

% Section fill 22
PTS_FILL_sect_22{1, 1} = 37.24170468;
PTS_FILL_sect_22{1, 2} = 126.77429391;
PTS_FILL_sect_22{1, 3} = {'sect-fill-22'};

for i = 2:300
   PTS_FILL_sect_22{i, 1} = PTS_FILL_sect_22{i-1, 1} - (37.24170468 - 37.24169480) / 300;
   PTS_FILL_sect_22{i, 2} = PTS_FILL_sect_22{i-1, 2} - (126.77429391 - 126.77390918) / 300;
   PTS_FILL_sect_22{i, 3} = PTS_FILL_sect_22{i-1, 3};
end

hold on;
geoplot_with_index_section(PTS_FILL_sect_22, 'b.', 1, 'Whole Lines' )

% Section fill 23
PTS_FILL_sect_23{1, 1} = 37.2426676639642;
PTS_FILL_sect_23{1, 2} = 126.774454729372;
PTS_FILL_sect_23{1, 3} = {'sect-fill-23'};

for i = 2:300
   PTS_FILL_sect_23{i, 1} = PTS_FILL_sect_23{i-1, 1} - (37.2426676639642 - 37.24250110) / 300;
   PTS_FILL_sect_23{i, 2} = PTS_FILL_sect_23{i-1, 2} - (126.774454729372 - 126.77445656) / 300;
   PTS_FILL_sect_23{i, 3} = PTS_FILL_sect_23{i-1, 3};
end

PTS_FILL_sect_23 = flip(PTS_FILL_sect_23);

hold on;
geoplot_with_index_section(PTS_FILL_sect_23, 'b.', 1, 'Whole Lines' )

% % Section fill 24 - TEST
% circle_radius_18    = 2.2657e-04;
% circle_center_18    = [37.2426676639642 126.77422816];
% circle_theta_18     = linspace(0, 1/2*pi);
% circle_latitude_18  = circle_center_18(1) + circle_radius_18 * sin(circle_theta_18);
% circle_Longitude_18 = circle_center_18(2) + circle_radius_18 * cos(circle_theta_18);
% circle_coord_18     = [circle_latitude_18' circle_Longitude_18'];
% circle_cell_18      = num2cell(circle_coord_18);
% circle_cell_18{1,3} = {'sect-fill-24'};
% for i = 2:100
%     circle_cell_18{i,3} = circle_cell_18{i-1,3};
% end
% 
% for i = 1:100
%     circle_cell_18{i,2} = circle_cell_18{i,2} + 6.3129e-05 - (6.3129e-05/100)*i;
% end
% 
% PTS_FILL_sect_24 = circle_cell_18;
% 
% hold on;
% geoplot_with_index_section(PTS_FILL_sect_24, 'b.', 1, 'Whole Lines');

% Section fill 24
load('data/emergency.mat')
circle_latitude_18  = x;
circle_Longitude_18 = y;
circle_coord_18     = [x y];
circle_cell_18      = num2cell(circle_coord_18);
circle_cell_18{1,3} = {'sect-fill-24'};
for i = 2:100
    circle_cell_18{i,3} = circle_cell_18{i-1,3};
end

PTS_FILL_sect_24 = circle_cell_18;
PTS_FILL_sect_24{10,2} = PTS_FILL_sect_24{10,2} + 0.000002;
PTS_FILL_sect_24{11,2} = PTS_FILL_sect_24{11,2} + 0.000002;
PTS_FILL_sect_24{12,2} = PTS_FILL_sect_24{12,2} + 0.000003;
PTS_FILL_sect_24{13,2} = PTS_FILL_sect_24{13,2} + 0.000002;
PTS_FILL_sect_24{14,2} = PTS_FILL_sect_24{14,2} + 0.000002;
PTS_FILL_sect_24{21,1} = PTS_FILL_sect_24{21,1} - 0.000002;
PTS_FILL_sect_24{23,2} = PTS_FILL_sect_24{23,2} + 0.000005;
PTS_FILL_sect_24{26,1} = PTS_FILL_sect_24{26,1} - 0.000002;
PTS_FILL_sect_24{27,2} = PTS_FILL_sect_24{27,2} - 0.000005;



hold on;
geoplot_with_index_section(PTS_FILL_sect_24, 'b.', 1, 'Whole Lines');

% Section fill 25
load('data/emergency2.mat')
PTS_FILL_sect_25      = num2cell(WP_LC);
PTS_FILL_sect_25{1,3} = {'sect-fill-25'};
for i = 2:7
    PTS_FILL_sect_25{i,3} = PTS_FILL_sect_25{i-1,3};
end

hold on;
geoplot_with_index_section(PTS_FILL_sect_25, 'b.', 1, 'Whole Lines');

% Section fill 26 - 예선
load('data/emergency3.mat')
PTS_FILL_sect_26      = num2cell(WP_UTURN);
PTS_FILL_sect_26{1,3} = {'sect-fill-26'};
for i = 2:8
    PTS_FILL_sect_26{i,3} = PTS_FILL_sect_26{i-1,3};
end

hold on;
geoplot_with_index_section(PTS_FILL_sect_26, 'b.', 1, 'Whole Lines');

% Section fill 27 - 예선
load('data/emergency4.mat')
for i = 1:20
    WP_YSS(i, :) = WP_YS(i, :);
end
WP_YSS(5, :) = [];
PTS_FILL_sect_27      = num2cell(WP_YSS);
PTS_FILL_sect_27{1,3} = {'sect-fill-27'};
for i = 2:20
    PTS_FILL_sect_27{i,3} = PTS_FILL_sect_27{i-1,3};
end

hold on;
geoplot_with_index_section(PTS_FILL_sect_27, 'b.', 1, 'Whole Lines');

% Section fill 28 - 예선
load('data/emergency5.mat')
WP_YSSS(6,1) =  37.23948837;
WP_YSSS(6,2) = 126.77326825;
WP_YSSS(7,1) =  37.23931424;
WP_YSSS(7,2) = 126.77315447;
WP_YSSS(8,1) =  37.23913575;
WP_YSSS(8,2) = 126.77304287;
WP_YSSS(9,1) =  37.23893963;
WP_YSSS(9,2) = 126.77291107;
WP_YSSS(10,1) =  37.23880586;
WP_YSSS(10,2) = 126.77278961;


PTS_FILL_sect_28      = num2cell(WP_YSSS);
PTS_FILL_sect_28{1,3} = {'sect-fill-28'};
for i = 2:10
    PTS_FILL_sect_28{i,3} = PTS_FILL_sect_28{i-1,3};
end

hold on;
geoplot_with_index_section(PTS_FILL_sect_28, 'b.', 1, 'Whole Lines');

% Section fill 29 - 예선
WP_YSSSS = [37.23973193 126.77348690;
            37.23994087 126.77362503];

PTS_FILL_sect_29      = num2cell(WP_YSSSS);
PTS_FILL_sect_29{1,3} = {'sect-fill-29'};
PTS_FILL_sect_29{2,3} = {'sect-fill-29'};

hold on;
geoplot_with_index_section(PTS_FILL_sect_29, 'b.', 1, 'Whole Lines');


PTS_FILL_sect_ALL_cell = [ PTS_FILL_sect_01; PTS_FILL_sect_02; ...
                           PTS_FILL_sect_03; PTS_FILL_sect_04; ...
                           PTS_FILL_sect_05; PTS_FILL_sect_06; ...
                           PTS_FILL_sect_07; PTS_FILL_sect_08; ...
                           PTS_FILL_sect_09; PTS_FILL_sect_10; ...
                           PTS_FILL_sect_11; PTS_FILL_sect_12; ...
                           PTS_FILL_sect_13; PTS_FILL_sect_14; ...
                           PTS_FILL_sect_15; PTS_FILL_sect_16; ...
                           PTS_FILL_sect_17; PTS_FILL_sect_18; ...
                           PTS_FILL_sect_19; PTS_FILL_sect_20; ...
                           PTS_FILL_sect_21; PTS_FILL_sect_22; ...
                           PTS_FILL_sect_23; PTS_FILL_sect_24; ...
                           PTS_FILL_sect_25; PTS_FILL_sect_26; ...
                           PTS_FILL_sect_27; PTS_FILL_sect_28; ...
                           PTS_FILL_sect_29
                         ];


