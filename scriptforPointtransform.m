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


%% (a) [x1,y1, x2, y2] = [0.1961, 0.0392, 0.8039, 0.9608]

x1=0.1961;
y1=0.0392;
x2=0.8039;
y2=0.9608;

%Call the pointtransform function
Y1=pointtransform(x,x1,y1,x2,y2);

%Show the transformed image
figure 
imshow(Y1);

%% (b) Clipping to 0.5 

x1=0.5;
y1=0;
x2=0.5;
y2=1;

%Call the pointtransform function
Y2=pointtransform(x,x1,y1,x2,y2);

%Show the transformed image
figure 
imshow(Y2);
