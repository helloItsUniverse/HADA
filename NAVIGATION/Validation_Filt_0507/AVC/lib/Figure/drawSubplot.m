%=========================================================================%
% Handong Global University
% Course    : Automatic Vehicle Control 2021W
% About     : Draw Sub-plot
% Created   : 2022.01.04
% Modified  : 2022.01.04
%=========================================================================%

% SubPlotNum                : The Number of Sub-Plot [m n]
% X                         : The range of X-axes (X = [x1;x2;...]) at x1 = start:interval:end ... 
% Y                         : The range of Y-axes (Y = [y1;y2;...]) at y1 = start:interval:end ...
% Title, Xlabel             : "string"
% Ylabel                    : ["string1";"string2";...] number is mxn

function drawSubplot(SubPlotNum, X, Y, Title, Xlabel, Ylabel)
    m = SubPlotNum(1);
    n = SubPlotNum(2);
    total_num = m * n;
    
    fig = figure;

    hold on;
    for idx = 1 : total_num
        subplot(m, n, idx);
        drawPlot(1, X(idx,:), Y(idx, :), '', '', Ylabel(idx,:));
    end
    
    ax=axes(fig,'visible','off');
    ax.Title.Visible='on';
    ax.XLabel.Visible='on';
    xlabel(ax,Xlabel,'FontSize',14);
    title(ax,Title,'FontSize',18);

    hold off;

end

