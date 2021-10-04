function plotgrid( x, y, color )
%
if nargin < 3
  color = 'b';
end


[ m n ] = size( x );

for i = 1 : m
  plot( x( i, : ), y( i, : ), 'color', color, 'linewidth', 1 )
  hold on
end

for j = 1 : n
  plot( x( :, j ), y( :, j ), 'color', color, 'linewidth', 1 )
end

hold off
axis image
axis off
