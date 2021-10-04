%Dimensions of the image
m = [14 14];

%Number of knots
p1 = 3; p2 = 3;

%Knot sequence 1
k1 = linspace(1,m(1),p1); k1 = augknt(k1,3);

%Knot sequance 2
k2 = linspace(1,m(2),p2); k2 = augknt(k2,3);

%Form basic functions from the defined knots
B1 = spmak(k1,eye(p1)); Q1 = fnval(B1,1:m(1))';
B2 = spmak(k2,eye(p2)); Q2 = fnval(B2,1:m(2))';

%Plot the knots and basic functions
plot(Q1)
xlim([0 15]);
ylim([0 0.8]);
