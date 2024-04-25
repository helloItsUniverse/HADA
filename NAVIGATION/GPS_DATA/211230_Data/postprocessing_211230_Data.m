clear all; close all; clc;

points = readmatrix('211230_Data_copy.csv');
j = 1;
for i = 1:size(points,1)
    if points(i,1) ~= 0 || points(i,2) ~= 0
        points_pp(j,:) = points(i,:);
        j = j + 1;
    end
end

geoplot(points_pp(:,1), points_pp(:,2))
geobasemap('satellite')

dt = datestr(now,'mm-dd,HHMM');
filename = strcat('211230_Data_copy_', dt, '.csv');
writematrix(points_pp, filename)

%%
clear all; close all; clc;

points = readmatrix('211230_Data_copy_08-25,1014.csv');

geoplot_with_index(points, 'g.', 1, 'Sample Data')

figure(2)
geoplot(points(:,1), points(:,2), 'g.')
geobasemap('satellite');
title('Sample Data')


