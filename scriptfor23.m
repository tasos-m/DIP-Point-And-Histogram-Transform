%Mouratidis Anastasios 9040
clear 
close all
% Load image , and convert it to gray -scale
x = imread('lena.bmp');
x = rgb2gray(x);
x = double(x) / 255;

%% 2.3.1 Uniform Distribution [0,1]
L1=50;
d1 = 0:1/L1:1;
v1 = ones(1,(length(d1)-1));

for i = 1:(length(d1)-1)
    v1(i) = (d1(i+1) + d1(i)) / 2;
end

f1 = @(v)unifpdf(v, 0, 1);
h1 = pdf2hist(d1,f1);

%Call the histtransform function
Y1 = histtransform(x, h1 , v1);

%Show the transformed image
figure
imshow(Y1)

figure 
bar(v1 , h1)
hold on
title("Histogram of  Uniform Distribution [0,1]");

[hn1 , hx1] = hist(Y1(:), 0:1/(L1-1):1);
hn1=hn1./sum(hn1);

figure 
bar(hx1 , hn1)
hold on
title("Histogram of Y1");
%% 2.3.2 Uniform Distribution [0,2]
L2=50;
d2 = 0:1/L2:1;
v2 = ones(1,(length(d2)-1));

for i = 1:(length(d2)-1)
    v2(i) = (d2(i+1) + d2(i)) / 2;
end

f2 = @(v)unifpdf(v, 0, 1);
h2 = pdf2hist(d2,f2);

%Call the histtransform function
Y2 = histtransform(x, h2 , v2);

%Show the transformed image
figure
imshow(Y2)

figure 
bar(v2 , h2)
hold on
title("Histogram of Uniform Distribution [0,2]");

[hn2 , hx2] = hist(Y2(:), 0:1/(L2-1):1);
hn2=hn2./sum(hn2);

figure 
bar(hx2 , hn2)
hold on
title("Histogram of Y2");
%% 2.3.1 Normal Distribution  N(0.5,0.1)
L3=50;
d3 = 0:1/L3:1;
v3 = ones(1,(length(d3)-1));

for i = 1:(length(d3)-1)
    v3(i) = (d3(i+1) + d3(i)) / 2;
end

f3 = @(v)normpdf(v, 0.5, 0.1);
h3 = pdf2hist(d3,f3);

%Call the histtransform function
Y3 = histtransform(x, h3 , v3);

%Show the transformed image
figure
imshow(Y3)

figure 
bar(v3 , h3)
hold on
title("Histogram of Normal Distribution ~ N(0.5,0.1)");

[hn3 , hx3] = hist(Y3(:), 0:1/(L3-1):1);
hn3=hn3./sum(hn3);

figure 
bar(hx3 , hn3)
hold on
title("Histogram of Y3");