%------------------------------------------------------------------%
% HADA 2022
%------------------------------------------------------------------%
% About      : Geoplot with datatip which index row is added
% Created    : 2022.07.19
% Modified   : 2022.07.19
% Editted by : Wooju So
%------------------------------------------------------------------%

% function geoplot_with_index( points, color_and_style, figure_number, plot_title )
function geoplot_with_index( points, color_and_style, plot_title )
%------------------------------------------------------------------%
% points should be the format of 2xN or Nx2 array.
%
% color_and_style
% (example : 'g.') (green dots)
%
% Example in script :
% geoplot_with_index( Points, 'g.', 10, 'Stop Lines Plot' )
%------------------------------------------------------------------%
[row, col] = size(points);

% Exception handling process
if row == 2 && col ~= 2 % 2열횡대일때
    lat = points(1,:);
    LON = points(2,:);
elseif col == 2 && row ~= 2 % 2열종대일때
    lat = points(:,1);
    LON = points(:,2);
elseif row == 2 && col == 2 % 2x2일때
%     if points(2, 1) < 40
%         lat = points(1,:);
%         LON = points(2,:);
%     else
%         lat = points(:,1);
%         LON = points(:,2);
%     end
    if points(2, 1) < 40
        lat = points(:,1);
        LON = points(:,2);
    else
        lat = points(1,:);
        LON = points(2,:);
    end
else
    disp('ERROR : Invalid input array!')
    
end

N_idx = length(lat);
array_idx = zeros(1, N_idx);
for idx = 1:N_idx
    array_idx(idx) = idx;
end

% figure(figure_number)
GEOPLOT_VARIABLE = geoplot(lat, LON, color_and_style);
INDEX_ROW = dataTipTextRow('Index', array_idx, '%d');

% Increase displaying precision(소수점 자릿수) of 
% latitude and longitude on datatip 
GEOPLOT_VARIABLE.DataTipTemplate.DataTipRows(1).Format = '%.17g';
GEOPLOT_VARIABLE.DataTipTemplate.DataTipRows(2).Format = '%.17g';

% Add row which displays index number
GEOPLOT_VARIABLE.DataTipTemplate.DataTipRows(end+1) = INDEX_ROW;

% Change map style as satellite view
geobasemap('satellite');
title(plot_title)

end