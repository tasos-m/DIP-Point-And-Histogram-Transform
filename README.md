# Digital Image Processing - Point and Histogram Transform of images
This is the first assignment of the course Digital Image Processing (AUTh - 8th semester). The goal is to build MATLAB functions that implement point transform and histogram transform to the input images. 

## Point Transform 
Given two points (x1, x2) and (y1, y2) we implement the below transform function:

![Webp net-resizeimage (1)](https://user-images.githubusercontent.com/66207231/111847892-7cbb5300-8912-11eb-8d32-481f5a7d7804.png)

Every pixel of the input image gets the new value according to the function. The Point Transform can be found in the pointtransform.m and the script that demonstrates the functionality of it is the scriptforPointtransform.m

You can find the input image [here](https://github.com/tasos-m/DIP-Point-And-Histogram-Transform/blob/main/lena.bmp). 

In this application, at first, we convert the image to grayscale and convert the pixels' values in a range [0,1]

* For [x1,y1, x2, y2] = [0.1961, 0.0392, 0.8039, 0.9608]

![1](https://user-images.githubusercontent.com/66207231/111849295-e6892c00-8915-11eb-952b-a13892127c65.png)


* For [x1,y1,x2,y2]=[0.5 , 0 ,  0.5 , 1] (Clipping to 0.5)

![2](https://user-images.githubusercontent.com/66207231/111849319-f7d23880-8915-11eb-9c66-350d44316838.png)
