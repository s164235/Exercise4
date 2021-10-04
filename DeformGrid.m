function [y1, y2] = DeformGrid(m, w, Q)
    %The following function takes dimensions m of a grid, weights w and a 2D
    %tensor B-spline matrix to deform the grid and returns the deformed grid
    %coordinates
    [x1, x2] = meshgrid(1:m(2), 1:m(1));
    y = [x1(:); x2(:)] + Q * w;
    y1 = reshape(y(1:end/2), size(x1, 1), size(x1, 2));
    y2 = reshape(y(end/2 + 1:end), size(x2, 1), size(x2, 2));
end