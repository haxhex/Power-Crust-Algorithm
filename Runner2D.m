% Load the teapot point cloud
ptCloud = pcread('teapot.ply');
points = double(ptCloud.Location);

% Flatten the point cloud into 2D
ptCloudA = points(:, 1:2:3);
ptCloudB = points(:, 2:3);
ptCloudC = points(:, 1:2);

% Choose one of the flattenings as the point cloud
points = ptCloudA;

% Remove interior points using the boundary function
k = boundary(points(:, 1), points(:, 2), 1);
points = points(k, :);

% Plot the original point cloud
figure;
plot(points(:, 1), points(:, 2), 'Marker', '.', 'MarkerEdgeColor', 'r', 'MarkerSize', 10, 'LineStyle', 'none');
title('Original input');

% Run Power Crust algorithm
PowerCrust(points);
