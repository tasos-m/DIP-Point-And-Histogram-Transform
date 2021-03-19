function Y = histtransform(X,h,v)
% Function of Histogram Transformation of an image X to an image Y

% Find the dimensions of X
[N,M] = size(X);

% Length of the vector v, that equals with the number of bins
L = length(v);

% Number of the pixels of the image X
numberOfPixels = N*M;
pixel_counter = 0;

% Counters of pixels assigned in each value of  brightness of the v vector
sum_v = zeros(L,1);

% Initialize the size of Y
Y = NaN(N,M);

% Unique function returns a vector of all levels (of brightness) of X in an
% ascending order
A = unique(X(:));
% Initialize the index of the levels of brightness
level = 1; 

%Greedy Algorithm
for i=1:L   % L levels of brightness
            % Check if(number of pixels transformed in the v(i) level)/(numberOfPixels)
            % is smaller than the given percentage h(i) and if all the pixels are
            % transformed 
    while((sum_v(i)/numberOfPixels<h(i)) &&(pixel_counter<numberOfPixels))
        % Pick the level of brightness
        temp = A(level); 
        % Find the positions of pixels with the "temp" value
        index = find(X==temp);  
        % Transform the brightness of these pixels into the v(i) level of brightness
        Y(index) = v(i); 
        % Update the number of pixels transformed in the v(i) level
        sum_v(i) = sum_v(i) + length(index);
        % Update the number of pixels transformed in general
        pixel_counter = pixel_counter + length(index); 
        % Go to the next level of brightness
        level = level+1; 
    end    
end 
end

