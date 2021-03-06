grayImage = rgb2gray( imread('grid_image.jpg'));
[rows columns ] = size(grayImage);

subplot(2, 2, 1);
imshow(grayImage);
title('Gray Scale Image');

[pixelCount, grayLevels] = imhist(grayImage);
subplot(2, 2, 2); 

bar(grayLevels, pixelCount);
title('Histogram ofimage');
xlim([0 grayLevels(end)]); 

medianFilteredImage = medfilt2(grayImage, [23 23]);


noiseImage = grayImage > 125;
x = imread('Image_4.bmp')
subplot(2, 2, 3);
imshow(x);
axis on;

noiseFreeImage = grayImage; 
noiseFreeImage(noiseImage) = medianFilteredImage(noiseImage); % Replace.

subplot(2, 2, 4);
imshow(noiseFreeImage);

title('Restored Image');