%=========================================================================%
% Handong Global University
% Course    : Automatic Vehicle Control 2021W
% About     : Draw Plot
% Created   : 2022.01.03
% Modified  : 2022.01.04
%=========================================================================%

% PlotNum                   : Plot Holding Number 
% X                         : x = start:interv:end
% Y                         : [y1 ; y2 ; ...]
% Title, Xlabel, Ylabel     : "string"

function drawPlot(PlotNum, X, Y, Title, Xlabel, Ylabel)
    hold on;
    for idx = 1 : PlotNum
        plot(X, Y(idx, :));     
    end
    
    % Option about Plot
    grid on;
    xlabel(Xlabel);
    ylabel(Ylabel);
    title(Title);
    
    hold off;
end
