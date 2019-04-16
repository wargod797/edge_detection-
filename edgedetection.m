a = imread('archa.jpg');% acessing the image
subplot(2,3,1), imshow(a);

b = rgb2gray(a); %converting to gray
subplot(2,3,2); 
imshow(b);

h = ones(6,6)/36; % to make image blurr and remove of elements
c = imfilter(b,h); 
subplot(2,3,3), imshow(c);

h = [1 0 -1; 2 0 -2; 1 0 -1];
d = imfilter(b,h);
subplot(2,3,4), imshow(d);

e = edge(b,'canny'); % u can use cranny sobel zerocross prewitt or roberts for edge dection method
f = edge(b,'sobel');
i = edge(b,'zerocross');
j= edge(b,'prewitt');
k = edge(b,'roberts');

figure
imshow(e)
title('cranny edge detection');
figure
imshow(f)
title('sobel edge detection');
figure
imshow(i)
title('zerocross edge detection');
figure
imshow(j)
title('prewitt edge detection');
figure
imshow(k)
title('roberts edge detection');