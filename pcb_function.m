clear
clc;
img1 = imread('Design 10.png');
img2 = imread('Actual 10.png');

% Processing Actual Image
img2_gray = rgb2gray(img2);
img2_resize = imresize(img2_gray, [size(img1,1) size(img1,2)]);
img2_sharp = imsharpen(img2_resize);
img2_bin = imbinarize(img2_sharp);

img3 = double(bitxor(logical(img2_bin), logical(img1)));

figure, imshow(img2), title('Actual');
figure, subplot(2, 3, 1), imshow(img1), title('Original');
subplot(2, 3, 2), imshow(img2_gray), title('Grayscaled Actual');
subplot(2, 3, 3), imshow(img2_resize), title('Resized Actual');
subplot(2, 3, 4), imshow(img2_sharp), title('Sharpened Actual');
subplot(2, 3, 5), imshow(img2_bin), title('Final Processed Actual');

figure, subplot(2, 2, 1), imshow(img1), title('Original');
subplot(2, 2, 2), imshow(img2_bin), title('Binarized Actual Image');
subplot(2, 2, 3:4), imshow(double(img3)), title('Differences');
