%------------------------------------------------------------------%
% HADA 2022
%------------------------------------------------------------------%
% About      : Plot with datatip which index row is added
% Created    : 2022.10.19
% Modified   : 2022.10.19
% Editted by : Wooju So
%------------------------------------------------------------------%
function plot_with_index( x, y, color_and_style, line_width, marker_size )
% function plot_with_index( x, y, color_and_style, lineSpec1, lineSpecValue1, lineSpec2, lineSpecValue2 )
%------------------------------------------------------------------%
%%%%%%%%%%%%%% MUST READ %%%%%%%%%%%%%%

% Example

%    plot_with_index( x, y, color_and_style, line_width, marker_size )

%    color_and_style : (Example) 'r*-' or 'b--o' or else
%    line_width      : 1 is recommended
%    marker_size     : 7 or larger is recommended

%------------------------------------------------------------------%


xL = length(x);
yL = length(y);

if xL == yL

    N_idx = xL;
    array_idx = zeros(1, N_idx);
    
    % Making index number array
    for idx = 1:N_idx
        array_idx(idx) = idx;
    end

    % Creating variable form of plot
    PLOT_VARIABLE = plot(x, y, color_and_style, ...
                         'LineWidth', line_width, ...
                         'MarkerSize', marker_size);

    % Making index number row of datatip box
    INDEX_ROW     = dataTipTextRow('Index', array_idx, '%d');

    % Add row which displays index number. at the bottom of datatip box.
    PLOT_VARIABLE.DataTipTemplate.DataTipRows(end+1) = INDEX_ROW;

    % Thicker grid lines. default value of GridAlpha = 0.15
    ax = gca;
    ax.GridAlpha = 0.4;
    grid on;

else
    % Exception Handling
    disp('ERROR : different length of x and y data')
end

end