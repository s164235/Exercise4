function Q = TwoDTensorSpline(m, knots)
    %The following function takes a grid of size [m n], number of knots and creates a set of
    %2D tensor B-spline function on the grid
    %Construct a linear space of knots and include 2 border points
    knots1 = linspace(1, m(1), knots);
    knots1 = augknt(knots1, 3);
    knots2 = linspace(1, m(2), knots);
    knots2 = augknt(knots2, 3);
    B1 = spmak(knots1, eye(3));
    B2 = spmak(knots2, eye(3));
    %Obtain 1D B-spline basis functions
    Q1 = fnval(B1, 1:m(1))';
    Q2 = fnval(B2, 1:m(2))';
    %Construct 2D tensor B-spline matrix
    Q = kron(speye(2), kron(Q2, Q1)); 
end