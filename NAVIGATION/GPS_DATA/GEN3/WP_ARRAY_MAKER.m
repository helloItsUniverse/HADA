function waypoints = WP_ARRAY_MAKER(input_array, WP_CELL, WP_IDX_CELL)

%%%%%%%%%%%%%%%% Sequencial Waypoints Array
WP = zeros(1,2);
for i = 1 : size(input_array,1)
    for j = 1 : size(WP_IDX_CELL{input_array(i),1},1)
        WP = [WP; cell2mat(WP_CELL{input_array(i),1}(WP_IDX_CELL{input_array(i),1}(j), 1:2))];
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

geoplot_with_index(WP, 'g*-', 'Waypoints 2022' )

waypoints = [WP heading_angle];

dt = datestr(now,'mm-dd,HHMM');
filename = strcat('data/WP_', dt, '.csv');
writematrix(waypoints, filename)

dispstr = strcat('Waypoints array saved as [', ' ', filename, ']');
disp(dispstr)

end