%Mouratidis Anastasios 9040
clear 
close all
% Load image , and convert it to gray -scale
x = imread('lena.bmp');
x = rgb2gray(x);
x = double(x) / 255;
% Show the histogram of intensity values
[hn , hx] = hist(x(:), 0:1/255:1);
figure 
bar(hx , hn)
%% Case 1
L = 10;
v = linspace (0, 1, L);
h = ones([1, L]) / L;

%Call the histtransform function
Y1=histtransform(x,h,v);

%Show the transformed image
figure
imshow(Y1);

[hn , hx] = hist(x(:), 0:1/(L-1):1);
hn=hn./sum(hn);
figure 
bar(hx , hn)
title("Histogram of X");

[hn1 , hx1] = hist(Y1(:), 0:1/(L-1):1);
hn1=hn1./sum(hn1);
figure 
bar(hx1 , hn1)
title("Histogram of Y1");
%% Case 2
L = 20;
v = linspace (0, 1, L);
h = ones([1, L]) / L;

%Call the histtransform function
Y2=histtransform(x,h,v);

%Show the transformed image
figure
imshow(Y2);

[hn , hx] = hist(x(:), 0:1/(L-1):1);
hn=hn./sum(hn);
figure 
bar(hx , hn)
title("Histogram of X");

[hn2 , hx2] = hist(Y2(:), 0:1/(L-1):1);
hn2=hn2./sum(hn2);
figure 
bar(hx2 , hn2)
title("Histogram of Y2");
%% Case 3
L = 10;
v = linspace (0, 1, L);
h = normpdf(v, 0.5) / sum(normpdf(v, 0.5));

%Call the histtransform function
Y3=histtransform(x,h,v);

%Show the transformed image
figure
imshow(Y3);

[hn , hx] = hist(x(:), 0:1/(L-1):1);
hn=hn./sum(hn);
figure 
bar(hx , hn)
title("Histogram of X");

[hn3 , hx3] = hist(Y3(:), 0:1/(L-1):1);
hn3=hn3./sum(hn3);
figure 
bar(hx3 , hn3)
title("Histogram of Y3");