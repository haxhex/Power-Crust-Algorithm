% Load the teapot point cloud
ptCloud = pcread('teapot.ply');

% Downsample the point cloud
ptCloud = pcdownsample(ptCloud, 'gridAverage', 0.25);

% Extract the point coordinates
points = ptCloud.Location;

% Plot the original point cloud
figure;
pcshow(ptCloud);
title('Original input');

% Run Power Crust algorithm
PowerCrust(points);
