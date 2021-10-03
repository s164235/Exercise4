%Dimensions of the image
m = [180 256];
%Number of knots
p1 = 5; p2 = 5;
%Knot sequence 1
k1 = linspace(1,m(1),p1); k1 = augknt(k1,3);
%Knot sequance 2
k2 = linspace(1,m(2),p2); k2 = augknt(k2,3);
%plot(k1,k2)
%Form B-spline matrix Q which contains basic functions
B1 = spmak(k1,eye(p1)); Q1 = fnval(B1,1:m(1))';
%
B2 = spmak(k2,eye(p2)); Q2 = fnval(B2,1:m(2))';
%
Q = kron(speye(2),kron(Q2,Q1));

for i = 1:x
[x1 x2] = meshgrid(1:m(2),1:m(1));
y=[x1(:); x2(:)] + Q*w;
y1 = reshape(y(1:end/2),size(x1,1),[]);
y2 = reshape(y(end/2+1:end),size(x1,1),[]);

plotgrid(y1,y2);

plotmatrix(Q2)

