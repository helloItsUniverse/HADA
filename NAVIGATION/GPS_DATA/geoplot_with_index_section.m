%------------------------------------------------------------------%
% HADA 2022
%------------------------------------------------------------------%
% About      : Stop Lines from GPS Data
% Created    : 2022.07.19
% Modified   : 2022.07.19
% Editted by : Wooju So
%------------------------------------------------------------------%

function geoplot_with_index_section( points, color_and_style, plot_title )
%------------------------------------------------------------------%
% points should be the format of 2xN or Nx2 array.
%
% color_and_style should be displayed as the format of dots. 
% (example : 'g.') (green dots)
%
% Example in script :
% geoplot_with_index( Points, 'g.', 10, 'Stop Lines Plot' )
%------------------------------------------------------------------%
[row, col] = size(points);

if row == 3 && col ~= 3
    lat = [ points{1,:} ]';
    LON = [ points{2,:} ]';
    sect_cell = [ points{3,:} ]';

elseif col == 3 && row ~= 3
    lat = [ points{:,1} ]';
    LON = [ points{:,2} ]';
    sect_cell = [ points{:,3} ]';

elseif row == 3 && col == 3
    if points{2, 1} < 40
        lat = [ points{1,:} ]';
        LON = [ points{2,:} ]';
        sect_cell = [ points{3,:} ]';
    else
        lat = [ points{:,1} ]';
        LON = [ points{:,2} ]';
        sect_cell = [ points{:,3} ]';
    end
    
else
    disp('ERROR : Invalid input array!')
    disp('Input array should be 3xN or Nx3.')
end


N_idx = length(lat);
array_idx = zeros(1, N_idx);
for idx = 1:N_idx
    array_idx(idx) = idx;
end

% figure(figure_number)
GEOPLOT_VARIABLE = geoplot(lat, LON, color_and_style);
INDEX_ROW1 = dataTipTextRow('Index', array_idx, '%d');
INDEX_ROW2 = dataTipTextRow('Section', sect_cell);

% Increase displaying precision(소수점 자릿수) of 
% latitude and longitude on datatip 
GEOPLOT_VARIABLE.DataTipTemplate.DataTipRows(1).Format = '%.15g';
GEOPLOT_VARIABLE.DataTipTemplate.DataTipRows(2).Format = '%.15g';

% Add row which displays index number, section
GEOPLOT_VARIABLE.DataTipTemplate.DataTipRows(end+1) = INDEX_ROW1;
GEOPLOT_VARIABLE.DataTipTemplate.DataTipRows(end+2) = INDEX_ROW2;

geobasemap('satellite');
title(plot_title)

end