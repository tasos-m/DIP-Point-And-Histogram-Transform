function Y = pointtransform(X,x1,y1,x2,y2)
% Function of Point Transformation of an image X to an image Y

% Find the dimensions of X
[N,M] = size(X);

% Find the indexes of X that satisfy each case of the function 
index1 = find(X<x1);
index2 = find((X>=x1)&(X<x2));
index3 = find(X>=x2);

% Initialize the size of Y
Y = zeros(N,M);

% Assign values in Y, in the same positions as X, bearing in mind each case
% of the function defined by the points (x1,y1) and (x2,y2)
Y(index1) = (y1/x1)*X(index1);
Y(index2) = ((y2-y1)/(x2-x1))*(X(index2)-x1)+y1;
Y(index3) = ((1-y2)/(1-x2))*(X(index3)-x2)+y2;

end

