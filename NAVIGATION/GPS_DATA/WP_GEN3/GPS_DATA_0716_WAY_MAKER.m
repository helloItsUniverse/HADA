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

% % Semi Final Round
% input = [ 1 ; 134 ; 132 ; 133 ];

% Final Round
input = [  1 ;   2 ;   3 ;   4 ;  71 ;
         128 ; 129 ; 130 ; 131 ;  48 ;
          87 ;  86 ;  36 ;  30 ;  32 ;
          34 
         ];

Waypoints = WP_ARRAY_MAKER(input, WHOLE_ALL, IDX_WPs);