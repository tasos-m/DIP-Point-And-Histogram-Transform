# Digital Image Processing - Point and Histogram Transform of images
This is the first assignment of the course Digital Image Processing (AUTh - 8th semester). The goal is to build MATLAB functions that implement point transform and histogram transform to the input images. 

## Point Transform 
Given two points (x1, x2) and (y1, y2) we implement the below transform function:

![Webp net-resizeimage (1)](https://user-images.githubusercontent.com/66207231/111847892-7cbb5300-8912-11eb-8d32-481f5a7d7804.png)

Every pixel of the input image gets the new value according to the function. The Point Transform can be found in the _pointtransform.m_ and the script that demonstrates the functionality of it is the _scriptforPointtransform.m_

You can find the input image [here](https://github.com/tasos-m/DIP-Point-And-Histogram-Transform/blob/main/lena.bmp). 

In this application, at first, we convert the image to grayscale and convert the pixels' values in a range [0,1]

* For [x1,y1, x2, y2] = [0.1961, 0.0392, 0.8039, 0.9608]

![1](https://user-images.githubusercontent.com/66207231/111849372-1df7d880-8916-11eb-8865-8087ceda382b.png)

* For [x1,y1,x2,y2]=[0.5 , 0 ,  0.5 , 1] (Clipping to 0.5)

![2](https://user-images.githubusercontent.com/66207231/111849319-f7d23880-8915-11eb-9c66-350d44316838.png)


## Histogram Transform 

In this part we  tranform an image, so that the histogram of the transformed image approaches a histogram of a given distribution. The assignment requires to build two functions for this transformation; _histtransform.m_ and _pdf2hist.m_. The first implements a greedy algorithm to transform the image according to the given histogram, while the second transforms the given Probability Density Function (PDF) to a histogram. The script _scriptfor23.m_ demonstrates the histogram transformation for two known distributions.

* Uniform Distribution [0,1]

![1](https://user-images.githubusercontent.com/66207231/111851247-2e5e8200-891b-11eb-8561-87aa9882ea7a.png)

![111](https://user-images.githubusercontent.com/66207231/111851253-35859000-891b-11eb-90f4-171d22e4e12d.png)

* Normal Distribution  N(0.5,0.1)

![2](https://user-images.githubusercontent.com/66207231/111851284-4e8e4100-891b-11eb-973e-07ba4f7088af.png)

![222](https://user-images.githubusercontent.com/66207231/111851293-55b54f00-891b-11eb-8a62-e51274a3d162.png)


 
