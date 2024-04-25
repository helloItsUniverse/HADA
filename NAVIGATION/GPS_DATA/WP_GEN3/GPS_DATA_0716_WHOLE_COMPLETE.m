clear all; close all; clc;

addpath(genpath('./data'));

load('data/GPS_DATA_0716_05_WHOLE_COMPLETE.mat')

colors = ["r."; "g."; "b."; "c."; "m."; "y."; "k."];

start = 1;

for i = start : size(WHOLE_ALL, 1)
    if i ~= start
        hold on;
    end
    geoplot_with_index_section(WHOLE_ALL{i, 1}, colors(mod(i-1, size(colors,1)) + 1), 'Whole Lines' )
end


% geoplot_with_index_section(WHOLE_ALL{67, 1}, colors(mod(67-1, size(colors,1)) + 1), 2, 'Whole Lines' )
% hold on;
% geoplot_with_index_section(WHOLE_ALL{68, 1}, colors(mod(68-1, size(colors,1)) + 1), 2, 'Whole Lines' )


IDX_WPs{1,1} = [ 1  705  1305  1914 ]';
IDX_WPs{2,1} = [ 1  237   515  1085  1469 ]';
IDX_WPs{3,1} = [ 1  264   644  1244  1611  1879 ]';
IDX_WPs{4,1} = [ 1  271  390  769 ]';
IDX_WPs{5,1} = [ 1  436 ]';
IDX_WPs{6,1} = [ 1  707  1191  1650 ]';
IDX_WPs{7,1} = [ 1  123  189  263  327  395 ]';
IDX_WPs{8,1} = [ 1  167 ]';
IDX_WPs{9,1} = [ 1  97  166  236  316  379 ]';
IDX_WPs{10,1} = [ 1  463  957 ]';
IDX_WPs{11,1} = [ 1  193  287  368 ]';
IDX_WPs{12,1} = [ 16  221  489  866 ]';
IDX_WPs{13,1} = [ 1  222 ]';
IDX_WPs{14,1} = [ 1  362  1189 ]';
IDX_WPs{15,1} = [ 1  26  47  69 ]';
IDX_WPs{16,1} = [ 1  102  181  258  327  405 ]';
IDX_WPs{17,1} = [ 1  150  1469 ]';
IDX_WPs{18,1} = [ 1  84 ]';
IDX_WPs{19,1} = [ 1  157  455 ]';
IDX_WPs{20,1} = [ 1  43 ]';



IDX_WPs{21,1} = [ 1  145  237  321  385 ]';
IDX_WPs{22,1} = [ 1  486  853 ]';
IDX_WPs{23,1} = [ 1  750  1072 ]';
IDX_WPs{24,1} = [ 1  67  130  208  284  361  470 ]';
IDX_WPs{25,1} = [ 1  26  51  76  97 ]';
IDX_WPs{26,1} = [ 1  389 ]';
IDX_WPs{27,1} = [ 1  512 ]';
IDX_WPs{28,1} = [ 1  223  443  876 ]';
IDX_WPs{29,1} = [ 1  272  519  881  1234  1687  2170 ]';
IDX_WPs{30,1} = [ 1  535  877  1207  1619  1979 ]';
IDX_WPs{31,1} = [ 1  158 ]'; % STOP LINE
IDX_WPs{32,1} = [ 1  399  673 ]';
IDX_WPs{33,1} = [ 1  167 ]';
IDX_WPs{34,1} = [ 1  405  695  1483  1932  2128  2514  2991  3235 ]';
IDX_WPs{35,1} = [ 1  110 ]';
IDX_WPs{36,1} = [ 1  522  1033 ]';
IDX_WPs{37,1} = [ 1  642  901  1089  1289 ]';
IDX_WPs{38,1} = [ 1  86  149  210 ]';
IDX_WPs{39,1} = [ 1  25  47  65  84 ]';
IDX_WPs{40,1} = [ 1  29  53  77 ]';
IDX_WPs{41,1} = [ 1  93 ]'; % STOP LINE
IDX_WPs{42,1} = [ 1  196 ]'; % STOP LINE
IDX_WPs{43,1} = [ 1  71  147  233  299 ]';
IDX_WPs{44,1} = [ 1  134  480  659  1070  1155  1258 ]';
IDX_WPs{45,1} = [ 1  82 ]'; % STOP LINE
IDX_WPs{46,1} = [ 578 ]';
IDX_WPs{47,1} = [ 1  232 ]';
IDX_WPs{48,1} = [ 1  62 ]';
IDX_WPs{49,1} = [ 1  184  407 ]';
IDX_WPs{50,1} = [ 1  141 ]';
IDX_WPs{51,1} = [ 1  29  57  79 ]';
IDX_WPs{52,1} = [ 1  495  760 ]';
IDX_WPs{53,1} = [ 1  251  572 ]';
IDX_WPs{54,1} = [ 1  96  153  207  252 ]';
IDX_WPs{55,1} = [ 1  100 ]';
IDX_WPs{56,1} = [ 1  23  46  70 ]';
IDX_WPs{57,1} = [ 1  83  175 ]';
IDX_WPs{58,1} = [ 1  106  215 ]';
IDX_WPs{59,1} = [ 1  54  102  146  200  251 ]';
IDX_WPs{60,1} = [ 1  87 ]';
IDX_WPs{61,1} = [ 1  212  451 ]';
IDX_WPs{62,1} = [ 1  331  640 ]';
IDX_WPs{63,1} = [ 1  26  48  75 ]';
IDX_WPs{64,1} = [ 1  157  305 ]';
IDX_WPs{65,1} = [ 1  67  168  281  416  971  1083  1288 ]';
IDX_WPs{66,1} = [ 1  82 ]';
IDX_WPs{67,1} = [ 1  73 ]';
IDX_WPs{68,1} = [ 1  189  353  566 ]';
IDX_WPs{69,1} = [ 1  259  278  300  316  334 ]';
IDX_WPs{70,1} = [ 1  28  51  76 ]';
IDX_WPs{71,1} = [ 74  182  332  561 ]';
IDX_WPs{72,1} = [ 1  183 ]';
IDX_WPs{73,1} = [ 1  42 ]';
IDX_WPs{74,1} = [ 1  74 ]';
IDX_WPs{75,1} = [ 1  56 ]';
IDX_WPs{76,1} = [ 1  48 ]';
IDX_WPs{77,1} = [ 1  116  219 ]';
IDX_WPs{78,1} = [ 1  57  115  177  240  305  365  416 ]';
IDX_WPs{79,1} = [ 1  24  48  76 ]';
IDX_WPs{80,1} = [ 1  294 ]'; % STOP LINE
IDX_WPs{81,1} = [ 1  418  565  961  1306 ]';
IDX_WPs{82,1} = [ 1  404  545  1346  1956  2361  2751 ]'; % DELIVERY
IDX_WPs{83,1} = [ 1  239 ]';
IDX_WPs{84,1} = [ 1  90 ]';
IDX_WPs{85,1} = [ 1  163  334 ]';
IDX_WPs{86,1} = [ 1  80 ]';
IDX_WPs{87,1} = [ 1  52  ]';
IDX_WPs{88,1} = [ 1  110 ]';
IDX_WPs{89,1} = [ 1  360  931  1465  1597 ]';
IDX_WPs{90,1} = [ 1  28  53  77 ]';
IDX_WPs{91,1} = [ 1  26  50  76 ]';
IDX_WPs{92,1} = [ 1  100 ]';
IDX_WPs{93,1} = [ 1  227 ]'; % STOP LINE
IDX_WPs{94,1} = [ 1  262  495 ]';
IDX_WPs{95,1} = [ 1  102 ]';
IDX_WPs{96,1} = [ 1  319  538  774 ]';
IDX_WPs{97,1} = [ 1  147  422  526  732 ]';
IDX_WPs{98,1} = [ 1  276  568  895 ]';
IDX_WPs{99,1} = [ 1  110 ]';
IDX_WPs{100,1} = [ 1  253 ]';
IDX_WPs{101,1} = [ 1  63  119  183 ]';
IDX_WPs{102,1} = [ 1  29  54  80 ]';
IDX_WPs{103,1} = [ 1  26  52  82 ]';
IDX_WPs{104,1} = [ 1  23  49  78 ]';
IDX_WPs{105,1} = [ 1  66  135  203  290  363 ]';
IDX_WPs{106,1} = [ 1  122 ]';
IDX_WPs{107,1} = [ 1  83  166  261  346 ]';
IDX_WPs{108,1} = [ 1  170 ]';
IDX_WPs{109,1} = [ 1  330  584 ]';
IDX_WPs{110,1} = [ 1  111  202  286 ]';
IDX_WPs{111,1} = [ 1  129 ]';
IDX_WPs{112,1} = [ 1  550  681  730 ]';
IDX_WPs{113,1} = [ 1  38  72 ]';
IDX_WPs{114,1} = [ 1  142 ]'; % PARKING
IDX_WPs{115,1} = [ 1  173 ]'; % PARKING
IDX_WPs{116,1} = [ 1  110 ]'; % PARKING
IDX_WPs{117,1} = [ 1  138 ]'; % PARKING
IDX_WPs{118,1} = [ 1  94 ]'; % PARKING
IDX_WPs{119,1} = [ 1  107 ]'; % PARKING
IDX_WPs{120,1} = [ 1  105 ]'; % PARKING
IDX_WPs{121,1} = [ 1  128 ]'; % PARKING
IDX_WPs{122,1} = [ 1  73 ]'; % PARKING
IDX_WPs{123,1} = [ 1  81 ]'; % PARKING
IDX_WPs{124,1} = [ 1  98 ]'; % PARKING
IDX_WPs{125,1} = [ 1  83 ]'; % PARKING
IDX_WPs{126,1} = [ 1  81 ]'; % PARKING
IDX_WPs{127,1} = [ 1  112  211 ]'; 
IDX_WPs{128,1} = [ 1  160 ]';
IDX_WPs{129,1} = [ 1  11  18  24   ]';
IDX_WPs{130,1} = [ 2  5  7 ]';
IDX_WPs{131,1} = [ 1  3  5  7  ]';
IDX_WPs{132,1} = [ 1  3  5  ...
                   6  7  8  9 10  ...
                  11 12 13 14   ...
                  16 18 19]';
IDX_WPs{133,1} = [ 1  3  5  6  7  8  9  10]';
IDX_WPs{134,1} = [ 1  2 ]';






% size(IDX_WPs{1,1},1)

% writematrix(cell2mat(WHOLE_ALL{2,1}(:,1:2)), 'data/section-02.csv')



%% FUNCTION TEST


clear all; close all; clc;

% set(0,'DefaultTextFontSize', 14) ;
% set(groot,'defaultLineLineWidth',2.5) ;
% set(0,'DefaultaxesLineWidth', 1.5) 
% set(0,'DefaultaxesFontSize', 14) 
% set(0,'DefaultaxesFontWeight', 'bold') ;
% set(0,'defaultAxesXGrid','on') ;
% set(0,'defaultAxesYGrid','on') ;
% set(0,'defaultAxesBox','on') ;
% set(0,'defaultlegendbox','off') ;

open('data/ALL_DONE.fig')

load('data/GPS_DATA_0716_06_WAYPOINTS_MAKER.mat')

% input = [  1 ; 105 ; 106 ; 107 ; 108 ;
%          109 ; 110 ; 111 ; 112 ;  37 ;
%           38 ;  20 ;  21 ;  22 ; 103 ;
%           92 ;  94 ;  64 ;  65 ;  60 ;
%           59 ;  58 ; 101 ;  26 ;  27 ;
%           28 ;  36 ;  70 ;  76 ;  77 ;
%           43 ;  44 ;  46 ;  48 ;  87 ;
%           86 ;  36 ;  30 ;  32 ;  34
%          ];

% input = [  1 ;   2 ;   3 ;   4 ;   5 ;
%            6 ;   7 ;   8 ;   9 ;  10 ;
%           11 ;  13 ;  14 ;  15 ;  52 ;
%           78 ;  73 ;  74 ;  75 ;  76 ;
%           77 ;  43 ;  44 ;  46 ;  48 ;
%           87 ;  86 ;  36 ;  30 ;  32 ;
%           34
%          ];

% Semi Final Round
input = [ 1 ; 134 ; 132 ; 133
    ];

% % Final Round
% input = [  1 ;   2 ;   3 ;   4 ;  71 ;
%          128 ; 129 ; 130 ; 131 ;  48 ;
%           87 ;  86 ;  36 ;  30 ;  32 ;
%           34 
%          ];

Waypoints = WP_ARRAY_MAKER(input, WHOLE_ALL, IDX_WPs);




%%

clear all; close all; clc;

open('data/ALL_DONE.fig')

load('data/GPS_DATA_0716_06_WAYPOINTS_MAKER.mat')

input = [  1 ;
         105 ;
         106 ;
         107 ;
         108 ;
         109 ;
         110 ;
         111 ;
         112 ;
          37 ;
          38 ;
          20 ;
          21 ;
          22 ;
         103 ;
          92 ;
          94 ;
          64 ;
          65 ;
          60 ;
          59 ;
          58 ;
         101 ;
          26 ;
          27 ;
          28 ;
          36 ;
          70 ;
          76 ;
          77 ;
          43 ;
          44 ;
          46 ;
          48 ;
          87 ;
          86 ;
          36 ;
          30 ;
          32 ;
          34
         ];


%%%%%%%%%%%%%%%% Sequencial Waypoints Array
WP = zeros(1,2);
for i = 1 : size(input,1)
    for j = 1 : size(IDX_WPs{input(i),1},1)
        WP = [WP; cell2mat(WHOLE_ALL{input(i),1}(IDX_WPs{input(i),1}(j), 1:2))];
    end
end
WP(1, :) = [];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%% Heading Angles Array
for i = 1 : size(WP,1)-1
    heading_angle(i) = azimuth('rh', WP(i,1), WP(i,2), WP(i+1,1), WP(i+1,2));
    if heading_angle(i) > 180.0
        heading_angle(i) = heading_angle(i) - 360;
    end
end
heading_angle(size(WP,1)) = 0.0;
heading_angle = heading_angle';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

geoplot_with_index(WP, 'g*-', 2, 'Waypoints 2022' )

WP = [WP heading_angle];

%% WRITE CSV FILE

dt = datestr(now,'mm-dd,HHMM');
filename = strcat('data/WP_', dt, '.csv');
writematrix(WP, filename)
