%------------------------------------------------------------------%
% HADA 2022
%------------------------------------------------------------------%
% About      : Processing GPS Data
% Created    : 2022.07.18
% Modified   : 2022.07.18
% Editted by : Wooju So
%------------------------------------------------------------------%

clear all; close all; clc;

load('data/GPS_DATA_0716.mat');

% indexes of original data
N_idx_original = length(l);

% initial index value setting
idx = 1;
idx_new = 1;
array_idx_original(idx) = 1;
array_idx_new(idx_new) = 1;

% initial data value assign
l_new(idx_new) = l(idx);
L_new(idx_new) = L(idx);

% start from second index because of (idx-1)
for idx = 2:N_idx_original
    
    array_idx_original(idx) = idx; % to plot original data
    
    if (l(idx) ~= l(idx-1) || L(idx) ~= L(idx-1))
        
        idx_new = idx_new + 1; % index update
        array_idx_new(idx_new) = idx_new;
        % to put 'index' row into datatip box, making index array is needed.
        
        l_new(idx_new) = l(idx);
        L_new(idx_new) = L(idx);
        
    end
end

l_new = l_new'; % output latitude array
L_new = L_new'; % output Longitude array
location = [ L_new l_new ];

% Original Data
figure(1)
p1 = geoplot(L, l, 'g.');
index_row1 = dataTipTextRow('Index', array_idx_original, '%d');
p1.DataTipTemplate.DataTipRows(end+1) = index_row1;
geobasemap('satellite');
title('Original Data');

% Data which removed duplicates
figure(2)
p2 = geoplot(L_new, l_new, 'g.');
index_row2 = dataTipTextRow('Index', array_idx_new, '%d');
p2.DataTipTemplate.DataTipRows(end+1) = index_row2;
geobasemap('satellite');
title('Data Without Duplicates');

% Auto-Save processed raw data
dt = datestr(now,'mmdd_HHMM');
filename = strcat('data/RAW_DATA_', dt, '.csv');
writematrix(location, filename)

dispstr = strcat('Trajectory points array saved as [', ' ', filename, ']');
disp(dispstr)


%% leave necessary section

L_pre_left = L_new;
l_pre_left = l_new;

% Section 1
idx_left_sect01_start = 1;
idx_left_sect01_end   = 15650;
idx_left_sect01_size  = idx_left_sect01_end - idx_left_sect01_start + 1;

for idx_left = idx_left_sect01_start : idx_left_sect01_end
    L_post_left01(idx_left - idx_left_sect01_start + 1) = L_pre_left(idx_left);
    l_post_left01(idx_left - idx_left_sect01_start + 1) = l_pre_left(idx_left);
end

% Section 2
idx_left_sect02_start = 15945;
idx_left_sect02_end   = 16574;
idx_left_sect02_size  = idx_left_sect02_end - idx_left_sect02_start + 1;

for idx_left = idx_left_sect02_start : idx_left_sect02_end
    L_post_left02(idx_left - idx_left_sect02_start + 1) = L_pre_left(idx_left);
    l_post_left02(idx_left - idx_left_sect02_start + 1) = l_pre_left(idx_left);
end

% Section 3
idx_left_sect03_start = 16950;
idx_left_sect03_end   = 18387;
idx_left_sect03_size  = idx_left_sect03_end - idx_left_sect03_start + 1;

for idx_left = idx_left_sect03_start : idx_left_sect03_end
    L_post_left03(idx_left - idx_left_sect03_start + 1) = L_pre_left(idx_left);
    l_post_left03(idx_left - idx_left_sect03_start + 1) = l_pre_left(idx_left);
end

% Section 4 : parking 1-1
idx_left_sect04_start = 22314;
idx_left_sect04_end   = 22455;
idx_left_sect04_size  = idx_left_sect04_end - idx_left_sect04_start + 1;

for idx_left = idx_left_sect04_start : idx_left_sect04_end
    L_post_left04(idx_left - idx_left_sect04_start + 1) = L_pre_left(idx_left);
    l_post_left04(idx_left - idx_left_sect04_start + 1) = l_pre_left(idx_left);
end

% Section 5 : parking 1-2
idx_left_sect05_start = 22829;
idx_left_sect05_end   = 23001;
idx_left_sect05_size  = idx_left_sect05_end - idx_left_sect05_start + 1;

for idx_left = idx_left_sect05_start : idx_left_sect05_end
    L_post_left05(idx_left - idx_left_sect05_start + 1) = L_pre_left(idx_left);
    l_post_left05(idx_left - idx_left_sect05_start + 1) = l_pre_left(idx_left);
end

% Section 6 : parking 1-3
idx_left_sect06_start = 23349;
idx_left_sect06_end   = 23460;
idx_left_sect06_size  = idx_left_sect06_end - idx_left_sect06_start + 1;

for idx_left = idx_left_sect06_start : idx_left_sect06_end
    L_post_left06(idx_left - idx_left_sect06_start + 1) = L_pre_left(idx_left);
    l_post_left06(idx_left - idx_left_sect06_start + 1) = l_pre_left(idx_left);
end

% Section 7 : parking 2-1
idx_left_sect07_start = 23951;
idx_left_sect07_end   = 24088;
idx_left_sect07_size  = idx_left_sect07_end - idx_left_sect07_start + 1;

for idx_left = idx_left_sect07_start : idx_left_sect07_end
    L_post_left07(idx_left - idx_left_sect07_start + 1) = L_pre_left(idx_left);
    l_post_left07(idx_left - idx_left_sect07_start + 1) = l_pre_left(idx_left);
end

% Section 8 : parking 2-2
idx_left_sect08_start = 24511;
idx_left_sect08_end   = 24607;
idx_left_sect08_size  = idx_left_sect08_end - idx_left_sect08_start + 1;

for idx_left = idx_left_sect08_start : idx_left_sect08_end
    L_post_left08(idx_left - idx_left_sect08_start + 1) = L_pre_left(idx_left);
    l_post_left08(idx_left - idx_left_sect08_start + 1) = l_pre_left(idx_left);
end

% Section 9 : parking 2-3
idx_left_sect09_start = 24967;
idx_left_sect09_end   = 25073;
idx_left_sect09_size  = idx_left_sect09_end - idx_left_sect09_start + 1;

for idx_left = idx_left_sect09_start : idx_left_sect09_end
    L_post_left09(idx_left - idx_left_sect09_start + 1) = L_pre_left(idx_left);
    l_post_left09(idx_left - idx_left_sect09_start + 1) = l_pre_left(idx_left);
end

% Section 10 : parking 2-4
idx_left_sect10_start = 25486;
idx_left_sect10_end   = 25591;
idx_left_sect10_size  = idx_left_sect10_end - idx_left_sect10_start + 1;

for idx_left = idx_left_sect10_start : idx_left_sect10_end
    L_post_left10(idx_left - idx_left_sect10_start + 1) = L_pre_left(idx_left);
    l_post_left10(idx_left - idx_left_sect10_start + 1) = l_pre_left(idx_left);
end

% Section 11 : parking 3-1
idx_left_sect11_start = 27139;
idx_left_sect11_end   = 27266;
idx_left_sect11_size  = idx_left_sect11_end - idx_left_sect11_start + 1;

for idx_left = idx_left_sect11_start : idx_left_sect11_end
    L_post_left11(idx_left - idx_left_sect11_start + 1) = L_pre_left(idx_left);
    l_post_left11(idx_left - idx_left_sect11_start + 1) = l_pre_left(idx_left);
end

% Section 12 : parking 3-2
idx_left_sect12_start = 27488;
idx_left_sect12_end   = 27560;
idx_left_sect12_size  = idx_left_sect12_end - idx_left_sect12_start + 1;

for idx_left = idx_left_sect12_start : idx_left_sect12_end
    L_post_left12(idx_left - idx_left_sect12_start + 1) = L_pre_left(idx_left);
    l_post_left12(idx_left - idx_left_sect12_start + 1) = l_pre_left(idx_left);
end

% Section 13 : parking 3-3
idx_left_sect13_start = 27793;
idx_left_sect13_end   = 27873;
idx_left_sect13_size  = idx_left_sect13_end - idx_left_sect13_start + 1;

for idx_left = idx_left_sect13_start : idx_left_sect13_end
    L_post_left13(idx_left - idx_left_sect13_start + 1) = L_pre_left(idx_left);
    l_post_left13(idx_left - idx_left_sect13_start + 1) = l_pre_left(idx_left);
end

% Section 14 : parking 3-4
idx_left_sect14_start = 28224;
idx_left_sect14_end   = 28327;
idx_left_sect14_size  = idx_left_sect14_end - idx_left_sect14_start + 1;

for idx_left = idx_left_sect14_start : idx_left_sect14_end
    L_post_left14(idx_left - idx_left_sect14_start + 1) = L_pre_left(idx_left);
    l_post_left14(idx_left - idx_left_sect14_start + 1) = l_pre_left(idx_left);
end

% Section 15 : parking 3-5
idx_left_sect15_start = 28655;
idx_left_sect15_end   = 28737;
idx_left_sect15_size  = idx_left_sect15_end - idx_left_sect15_start + 1;

for idx_left = idx_left_sect15_start : idx_left_sect15_end
    L_post_left15(idx_left - idx_left_sect15_start + 1) = L_pre_left(idx_left);
    l_post_left15(idx_left - idx_left_sect15_start + 1) = l_pre_left(idx_left);
end

% Section 16 : parking 3-6
idx_left_sect16_start = 29084;
idx_left_sect16_end   = 29166;
idx_left_sect16_size  = idx_left_sect16_end - idx_left_sect16_start + 1;

for idx_left = idx_left_sect16_start : idx_left_sect16_end
    L_post_left16(idx_left - idx_left_sect16_start + 1) = L_pre_left(idx_left);
    l_post_left16(idx_left - idx_left_sect16_start + 1) = l_pre_left(idx_left);
end

% Section 17
idx_left_sect17_start = 29613;
idx_left_sect17_end   = 34000;
idx_left_sect17_size  = idx_left_sect17_end - idx_left_sect17_start + 1;

for idx_left = idx_left_sect17_start : idx_left_sect17_end
    L_post_left17(idx_left - idx_left_sect17_start + 1) = L_pre_left(idx_left);
    l_post_left17(idx_left - idx_left_sect17_start + 1) = l_pre_left(idx_left);
end

% Section 18
idx_left_sect18_start = 34263;
idx_left_sect18_end   = 34758;
idx_left_sect18_size  = idx_left_sect18_end - idx_left_sect18_start + 1;

for idx_left = idx_left_sect18_start : idx_left_sect18_end
    L_post_left18(idx_left - idx_left_sect18_start + 1) = L_pre_left(idx_left);
    l_post_left18(idx_left - idx_left_sect18_start + 1) = l_pre_left(idx_left);
end

% Section 19
idx_left_sect19_start = 35298;
idx_left_sect19_end   = 46089;
idx_left_sect19_size  = idx_left_sect19_end - idx_left_sect19_start + 1;

for idx_left = idx_left_sect19_start : idx_left_sect19_end
    L_post_left19(idx_left - idx_left_sect19_start + 1) = L_pre_left(idx_left);
    l_post_left19(idx_left - idx_left_sect19_start + 1) = l_pre_left(idx_left);
end

% Section 20
idx_left_sect20_start = 35298;
idx_left_sect20_end   = 46089;
idx_left_sect20_size  = idx_left_sect20_end - idx_left_sect20_start + 1;

for idx_left = idx_left_sect20_start : idx_left_sect20_end
    L_post_left20(idx_left - idx_left_sect20_start + 1) = L_pre_left(idx_left);
    l_post_left20(idx_left - idx_left_sect20_start + 1) = l_pre_left(idx_left);
end

% Section 21 : stop line 1
idx_left_sect21_start = 46344;
idx_left_sect21_end   = 46539;
idx_left_sect21_size  = idx_left_sect21_end - idx_left_sect21_start + 1;

for idx_left = idx_left_sect21_start : idx_left_sect21_end
    L_post_left21(idx_left - idx_left_sect21_start + 1) = L_pre_left(idx_left);
    l_post_left21(idx_left - idx_left_sect21_start + 1) = l_pre_left(idx_left);
end

% Section 22
idx_left_sect22_start = 46779;
idx_left_sect22_end   = 52087;
idx_left_sect22_size  = idx_left_sect22_end - idx_left_sect22_start + 1;

for idx_left = idx_left_sect22_start : idx_left_sect22_end
    L_post_left22(idx_left - idx_left_sect22_start + 1) = L_pre_left(idx_left);
    l_post_left22(idx_left - idx_left_sect22_start + 1) = l_pre_left(idx_left);
end

% Section 23
idx_left_sect23_start = 52211;
idx_left_sect23_end   = 52641;
idx_left_sect23_size  = idx_left_sect23_end - idx_left_sect23_start + 1;

for idx_left = idx_left_sect23_start : idx_left_sect23_end
    L_post_left23(idx_left - idx_left_sect23_start + 1) = L_pre_left(idx_left);
    l_post_left23(idx_left - idx_left_sect23_start + 1) = l_pre_left(idx_left);
end

% Section 24
idx_left_sect24_start = 52211;
idx_left_sect24_end   = 52641;
idx_left_sect24_size  = idx_left_sect24_end - idx_left_sect24_start + 1;

for idx_left = idx_left_sect24_start : idx_left_sect24_end
    L_post_left24(idx_left - idx_left_sect24_start + 1) = L_pre_left(idx_left);
    l_post_left24(idx_left - idx_left_sect24_start + 1) = l_pre_left(idx_left);
end

% Section 25
idx_left_sect25_start = 53167;
idx_left_sect25_end   = 55470;
idx_left_sect25_size  = idx_left_sect25_end - idx_left_sect25_start + 1;

for idx_left = idx_left_sect25_start : idx_left_sect25_end
    L_post_left25(idx_left - idx_left_sect25_start + 1) = L_pre_left(idx_left);
    l_post_left25(idx_left - idx_left_sect25_start + 1) = l_pre_left(idx_left);
end

% Section 26 : stop line 2
idx_left_sect26_start = 56360;
idx_left_sect26_end   = 56458;
idx_left_sect26_size  = idx_left_sect26_end - idx_left_sect26_start + 1;

for idx_left = idx_left_sect26_start : idx_left_sect26_end
    L_post_left26(idx_left - idx_left_sect26_start + 1) = L_pre_left(idx_left);
    l_post_left26(idx_left - idx_left_sect26_start + 1) = l_pre_left(idx_left);
end

% Section 27
idx_left_sect27_start = 57372;
idx_left_sect27_end   = 59867;
idx_left_sect27_size  = idx_left_sect27_end - idx_left_sect27_start + 1;

for idx_left = idx_left_sect27_start : idx_left_sect27_end
    L_post_left27(idx_left - idx_left_sect27_start + 1) = L_pre_left(idx_left);
    l_post_left27(idx_left - idx_left_sect27_start + 1) = l_pre_left(idx_left);
end

% Section 28
idx_left_sect28_start = 57372;
idx_left_sect28_end   = 59867;
idx_left_sect28_size  = idx_left_sect28_end - idx_left_sect28_start + 1;

for idx_left = idx_left_sect28_start : idx_left_sect28_end
    L_post_left28(idx_left - idx_left_sect28_start + 1) = L_pre_left(idx_left);
    l_post_left28(idx_left - idx_left_sect28_start + 1) = l_pre_left(idx_left);
end

% Section 29 : stop line 3
idx_left_sect29_start = 59998;
idx_left_sect29_end   = 60079;
idx_left_sect29_size  = idx_left_sect29_end - idx_left_sect29_start + 1;

for idx_left = idx_left_sect29_start : idx_left_sect29_end
    L_post_left29(idx_left - idx_left_sect29_start + 1) = L_pre_left(idx_left);
    l_post_left29(idx_left - idx_left_sect29_start + 1) = l_pre_left(idx_left);
end

% Section 30
idx_left_sect30_start = 60422;
idx_left_sect30_end   = 60793;
idx_left_sect30_size  = idx_left_sect30_end - idx_left_sect30_start + 1;

for idx_left = idx_left_sect30_start : idx_left_sect30_end
    L_post_left30(idx_left - idx_left_sect30_start + 1) = L_pre_left(idx_left);
    l_post_left30(idx_left - idx_left_sect30_start + 1) = l_pre_left(idx_left);
end

% Section 31 : stop line 4
idx_left_sect31_start = 61250;
idx_left_sect31_end   = 61343;
idx_left_sect31_size  = idx_left_sect31_end - idx_left_sect31_start + 1;

for idx_left = idx_left_sect31_start : idx_left_sect31_end
    L_post_left31(idx_left - idx_left_sect31_start + 1) = L_pre_left(idx_left);
    l_post_left31(idx_left - idx_left_sect31_start + 1) = l_pre_left(idx_left);
end

% Section 32 : stop line 5
idx_left_sect32_start = 61541;
idx_left_sect32_end   = 61613;
idx_left_sect32_size  = idx_left_sect32_end - idx_left_sect32_start + 1;

for idx_left = idx_left_sect32_start : idx_left_sect32_end
    L_post_left32(idx_left - idx_left_sect32_start + 1) = L_pre_left(idx_left);
    l_post_left32(idx_left - idx_left_sect32_start + 1) = l_pre_left(idx_left);
end

% Section 33 : stop line 6
idx_left_sect33_start = 62152;
idx_left_sect33_end   = 62263;
idx_left_sect33_size  = idx_left_sect33_end - idx_left_sect33_start + 1;

for idx_left = idx_left_sect33_start : idx_left_sect33_end
    L_post_left33(idx_left - idx_left_sect33_start + 1) = L_pre_left(idx_left);
    l_post_left33(idx_left - idx_left_sect33_start + 1) = l_pre_left(idx_left);
end

% Section 34
idx_left_sect34_start = 62152;
idx_left_sect34_end   = 63672;
idx_left_sect34_size  = idx_left_sect34_end - idx_left_sect34_start + 1;

for idx_left = idx_left_sect34_start : idx_left_sect34_end
    L_post_left34(idx_left - idx_left_sect34_start + 1) = L_pre_left(idx_left);
    l_post_left34(idx_left - idx_left_sect34_start + 1) = l_pre_left(idx_left);
end

% Section 35
idx_left_sect35_start = 64638;
idx_left_sect35_end   = 65203;
idx_left_sect35_size  = idx_left_sect35_end - idx_left_sect35_start + 1;

for idx_left = idx_left_sect35_start : idx_left_sect35_end
    L_post_left35(idx_left - idx_left_sect35_start + 1) = L_pre_left(idx_left);
    l_post_left35(idx_left - idx_left_sect35_start + 1) = l_pre_left(idx_left);
end

% Section 36 : stop line 7
idx_left_sect36_start = 65296;
idx_left_sect36_end   = 65529;
idx_left_sect36_size  = idx_left_sect36_end - idx_left_sect36_start + 1;

for idx_left = idx_left_sect36_start : idx_left_sect36_end
    L_post_left36(idx_left - idx_left_sect36_start + 1) = L_pre_left(idx_left);
    l_post_left36(idx_left - idx_left_sect36_start + 1) = l_pre_left(idx_left);
end

% Section 37
idx_left_sect37_start = 65585;
idx_left_sect37_end   = 66622;
idx_left_sect37_size  = idx_left_sect37_end - idx_left_sect37_start + 1;

for idx_left = idx_left_sect37_start : idx_left_sect37_end
    L_post_left37(idx_left - idx_left_sect37_start + 1) = L_pre_left(idx_left);
    l_post_left37(idx_left - idx_left_sect37_start + 1) = l_pre_left(idx_left);
end

% Section 38
idx_left_sect38_start = 67315;
idx_left_sect38_end   = 69157;
idx_left_sect38_size  = idx_left_sect38_end - idx_left_sect38_start + 1;

for idx_left = idx_left_sect38_start : idx_left_sect38_end
    L_post_left38(idx_left - idx_left_sect38_start + 1) = L_pre_left(idx_left);
    l_post_left38(idx_left - idx_left_sect38_start + 1) = l_pre_left(idx_left);
end

% Section 39 : stop line 8
idx_left_sect39_start = 69280;
idx_left_sect39_end   = 69365;
idx_left_sect39_size  = idx_left_sect39_end - idx_left_sect39_start + 1;

for idx_left = idx_left_sect39_start : idx_left_sect39_end
    L_post_left39(idx_left - idx_left_sect39_start + 1) = L_pre_left(idx_left);
    l_post_left39(idx_left - idx_left_sect39_start + 1) = l_pre_left(idx_left);
end

% Section 40
idx_left_sect40_start = 69497;
idx_left_sect40_end   = 69719;
idx_left_sect40_size  = idx_left_sect40_end - idx_left_sect40_start + 1;

for idx_left = idx_left_sect40_start : idx_left_sect40_end
    L_post_left40(idx_left - idx_left_sect40_start + 1) = L_pre_left(idx_left);
    l_post_left40(idx_left - idx_left_sect40_start + 1) = l_pre_left(idx_left);
end

% Section 41
idx_left_sect41_start = 69821;
idx_left_sect41_end   = 71385;
idx_left_sect41_size  = idx_left_sect41_end - idx_left_sect41_start + 1;

for idx_left = idx_left_sect41_start : idx_left_sect41_end
    L_post_left41(idx_left - idx_left_sect41_start + 1) = L_pre_left(idx_left);
    l_post_left41(idx_left - idx_left_sect41_start + 1) = l_pre_left(idx_left);
end

% Section 42
idx_left_sect42_start = 71669;
idx_left_sect42_end   = 76568;
idx_left_sect42_size  = idx_left_sect42_end - idx_left_sect42_start + 1;

for idx_left = idx_left_sect42_start : idx_left_sect42_end
    L_post_left42(idx_left - idx_left_sect42_start + 1) = L_pre_left(idx_left);
    l_post_left42(idx_left - idx_left_sect42_start + 1) = l_pre_left(idx_left);
end

% Section 43
idx_left_sect43_start = 76569;
idx_left_sect43_end   = 77323;
idx_left_sect43_size  = idx_left_sect43_end - idx_left_sect43_start + 1;

for idx_left = idx_left_sect43_start : idx_left_sect43_end
    L_post_left43(idx_left - idx_left_sect43_start + 1) = L_pre_left(idx_left);
    l_post_left43(idx_left - idx_left_sect43_start + 1) = l_pre_left(idx_left);
end

% Section 44 : stop line 9
idx_left_sect44_start = 77612;
idx_left_sect44_end   = 77850;
idx_left_sect44_size  = idx_left_sect44_end - idx_left_sect44_start + 1;

for idx_left = idx_left_sect44_start : idx_left_sect44_end
    L_post_left44(idx_left - idx_left_sect44_start + 1) = L_pre_left(idx_left);
    l_post_left44(idx_left - idx_left_sect44_start + 1) = l_pre_left(idx_left);
end

% Section 45
idx_left_sect45_start = 78019;
idx_left_sect45_end   = 80409;
idx_left_sect45_size  = idx_left_sect45_end - idx_left_sect45_start + 1;

for idx_left = idx_left_sect45_start : idx_left_sect45_end
    L_post_left45(idx_left - idx_left_sect45_start + 1) = L_pre_left(idx_left);
    l_post_left45(idx_left - idx_left_sect45_start + 1) = l_pre_left(idx_left);
end

% Section 46 : stop line 10
idx_left_sect46_start = 80537;
idx_left_sect46_end   = 80646;
idx_left_sect46_size  = idx_left_sect46_end - idx_left_sect46_start + 1;

for idx_left = idx_left_sect46_start : idx_left_sect46_end
    L_post_left46(idx_left - idx_left_sect46_start + 1) = L_pre_left(idx_left);
    l_post_left46(idx_left - idx_left_sect46_start + 1) = l_pre_left(idx_left);
end

% Section 47
idx_left_sect47_start = 81361;
idx_left_sect47_end   = 81852;
idx_left_sect47_size  = idx_left_sect47_end - idx_left_sect47_start + 1;

for idx_left = idx_left_sect47_start : idx_left_sect47_end
    L_post_left47(idx_left - idx_left_sect47_start + 1) = L_pre_left(idx_left);
    l_post_left47(idx_left - idx_left_sect47_start + 1) = l_pre_left(idx_left);
end

% Section 48
idx_left_sect48_start = 81361;
idx_left_sect48_end   = 81852;
idx_left_sect48_size  = idx_left_sect48_end - idx_left_sect48_start + 1;

for idx_left = idx_left_sect48_start : idx_left_sect48_end
    L_post_left48(idx_left - idx_left_sect48_start + 1) = L_pre_left(idx_left);
    l_post_left48(idx_left - idx_left_sect48_start + 1) = l_pre_left(idx_left);
end

% Section 49
idx_left_sect49_start = 81975;
idx_left_sect49_end   = 83414;
idx_left_sect49_size  = idx_left_sect49_end - idx_left_sect49_start + 1;

for idx_left = idx_left_sect49_start : idx_left_sect49_end
    L_post_left49(idx_left - idx_left_sect49_start + 1) = L_pre_left(idx_left);
    l_post_left49(idx_left - idx_left_sect49_start + 1) = l_pre_left(idx_left);
end

% Section 50 : stop line 11
idx_left_sect50_start = 83540;
idx_left_sect50_end   = 83833;
idx_left_sect50_size  = idx_left_sect50_end - idx_left_sect50_start + 1;

for idx_left = idx_left_sect50_start : idx_left_sect50_end
    L_post_left50(idx_left - idx_left_sect50_start + 1) = L_pre_left(idx_left);
    l_post_left50(idx_left - idx_left_sect50_start + 1) = l_pre_left(idx_left);
end

% Section 51
idx_left_sect51_start = 84070;
idx_left_sect51_end   = 84782;
idx_left_sect51_size  = idx_left_sect51_end - idx_left_sect51_start + 1;

for idx_left = idx_left_sect51_start : idx_left_sect51_end
    L_post_left51(idx_left - idx_left_sect51_start + 1) = L_pre_left(idx_left);
    l_post_left51(idx_left - idx_left_sect51_start + 1) = l_pre_left(idx_left);
end

% Section 52
idx_left_sect52_start = 84971;
idx_left_sect52_end   = 87652;
idx_left_sect52_size  = idx_left_sect52_end - idx_left_sect52_start + 1;

for idx_left = idx_left_sect52_start : idx_left_sect52_end
    L_post_left52(idx_left - idx_left_sect52_start + 1) = L_pre_left(idx_left);
    l_post_left52(idx_left - idx_left_sect52_start + 1) = l_pre_left(idx_left);
end

% Section 53
idx_left_sect53_start = 88059;
idx_left_sect53_end   = 89083;
idx_left_sect53_size  = idx_left_sect53_end - idx_left_sect53_start + 1;

for idx_left = idx_left_sect53_start : idx_left_sect53_end
    L_post_left53(idx_left - idx_left_sect53_start + 1) = L_pre_left(idx_left);
    l_post_left53(idx_left - idx_left_sect53_start + 1) = l_pre_left(idx_left);
end

% Section 54
idx_left_sect54_start = 90260;
idx_left_sect54_end   = 90560;
idx_left_sect54_size  = idx_left_sect54_end - idx_left_sect54_start + 1;

for idx_left = idx_left_sect54_start : idx_left_sect54_end
    L_post_left54(idx_left - idx_left_sect54_start + 1) = L_pre_left(idx_left);
    l_post_left54(idx_left - idx_left_sect54_start + 1) = l_pre_left(idx_left);
end

% Section 55
idx_left_sect55_start = 91151;
idx_left_sect55_end   = 92961;
idx_left_sect55_size  = idx_left_sect55_end - idx_left_sect55_start + 1;

for idx_left = idx_left_sect55_start : idx_left_sect55_end
    L_post_left55(idx_left - idx_left_sect55_start + 1) = L_pre_left(idx_left);
    l_post_left55(idx_left - idx_left_sect55_start + 1) = l_pre_left(idx_left);
end

% Section 56
idx_left_sect56_start = 93288;
idx_left_sect56_end   = 96038;
idx_left_sect56_size  = idx_left_sect56_end - idx_left_sect56_start + 1;

for idx_left = idx_left_sect56_start : idx_left_sect56_end
    L_post_left56(idx_left - idx_left_sect56_start + 1) = L_pre_left(idx_left);
    l_post_left56(idx_left - idx_left_sect56_start + 1) = l_pre_left(idx_left);
end

% Section 57
idx_left_sect57_start = 96351;
idx_left_sect57_end   = 98926;
idx_left_sect57_size  = idx_left_sect57_end - idx_left_sect57_start + 1;

for idx_left = idx_left_sect57_start : idx_left_sect57_end
    L_post_left57(idx_left - idx_left_sect57_start + 1) = L_pre_left(idx_left);
    l_post_left57(idx_left - idx_left_sect57_start + 1) = l_pre_left(idx_left);
end

% Section 58 : stop line 12
idx_left_sect58_start = 99144;
idx_left_sect58_end   = 99304;
idx_left_sect58_size  = idx_left_sect58_end - idx_left_sect58_start + 1;

for idx_left = idx_left_sect58_start : idx_left_sect58_end
    L_post_left58(idx_left - idx_left_sect58_start + 1) = L_pre_left(idx_left);
    l_post_left58(idx_left - idx_left_sect58_start + 1) = l_pre_left(idx_left);
end

% Section 59
idx_left_sect59_start = 99578;
idx_left_sect59_end   = 104166;
idx_left_sect59_size  = idx_left_sect59_end - idx_left_sect59_start + 1;

for idx_left = idx_left_sect59_start : idx_left_sect59_end
    L_post_left59(idx_left - idx_left_sect59_start + 1) = L_pre_left(idx_left);
    l_post_left59(idx_left - idx_left_sect59_start + 1) = l_pre_left(idx_left);
end

%% Merge

L_post_left_merged = [ L_post_left01 L_post_left02 L_post_left03 ...
                       L_post_left04 L_post_left05 L_post_left06 ...
                       L_post_left07 L_post_left08 L_post_left09 ...
                       L_post_left10 L_post_left11 L_post_left12 ...
                       L_post_left13 L_post_left14 L_post_left15 ...
                       L_post_left16 L_post_left17 L_post_left18 ...
                       L_post_left19 L_post_left20 L_post_left21 ...
                       L_post_left22 L_post_left23 L_post_left24 ...
                       L_post_left25 L_post_left26 L_post_left27 ...
                       L_post_left28 L_post_left29 L_post_left30 ...
                       L_post_left31 L_post_left32 L_post_left33 ...
                       L_post_left34 L_post_left35 L_post_left36 ...
                       L_post_left37 L_post_left38 L_post_left39 ...
                       L_post_left40 L_post_left41 L_post_left42 ...
                       L_post_left43 L_post_left44 L_post_left45 ...
                       L_post_left46 L_post_left47 L_post_left48 ...
                       L_post_left49 L_post_left50 L_post_left51 ...
                       L_post_left52 L_post_left53 L_post_left54 ...
                       L_post_left55 L_post_left56 L_post_left57 ...
                       L_post_left58 L_post_left59 ]';

l_post_left_merged = [ l_post_left01 l_post_left02 l_post_left03 ...
                       l_post_left04 l_post_left05 l_post_left06 ...
                       l_post_left07 l_post_left08 l_post_left09 ...
                       l_post_left10 l_post_left11 l_post_left12 ...
                       l_post_left13 l_post_left14 l_post_left15 ...
                       l_post_left16 l_post_left17 l_post_left18 ...
                       l_post_left19 l_post_left20 l_post_left21 ...
                       l_post_left22 l_post_left23 l_post_left24 ...
                       l_post_left25 l_post_left26 l_post_left27 ...
                       l_post_left28 l_post_left29 l_post_left30 ...
                       l_post_left31 l_post_left32 l_post_left33 ...
                       l_post_left34 l_post_left35 l_post_left36 ...
                       l_post_left37 l_post_left38 l_post_left39 ...
                       l_post_left40 l_post_left41 l_post_left42 ...
                       l_post_left43 l_post_left44 l_post_left45 ...
                       l_post_left46 l_post_left47 l_post_left48 ...
                       l_post_left49 l_post_left50 l_post_left51 ...
                       l_post_left52 l_post_left53 l_post_left54 ...
                       l_post_left55 l_post_left56 l_post_left57 ...
                       l_post_left58 l_post_left59 ]';

%% Plot


N_idx_post_left_merged = length(L_post_left_merged);
for idx_post_left_merged = 1:N_idx_post_left_merged
    array_idx_post_left_merged(idx_post_left_merged) = idx_post_left_merged;
end

figure(4)
p4 = geoplot(L_post_left_merged, l_post_left_merged, 'g.');
index_row4 = dataTipTextRow('Index', array_idx_post_left_merged, '%d');
p4.DataTipTemplate.DataTipRows(end+1) = index_row4;
geobasemap('satellite');



% geoplot(L_post_left, l_post_left, 'g.');
% geobasemap('satellite');