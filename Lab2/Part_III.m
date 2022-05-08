img1 = imread('image2c.jpg');
figure(1);imshow(img1);

img9 = img1(120:240,210:300,1:3);figure(4);imshow(img9);

h1 = [3 3 3; 3 -24 3; 3 3 3];
%h1 = 0.1*[ones(1,5)];
img2 = convn(img1, h1);
figure(2);imshow(uint8(img2));


h2 = [0.05 0.1 0.2 0.3 0.2 0.1 0.05];
h2 = (h2+h2.')/2;
img3 = convn(img1, h2);
figure(3);imshow(uint8(img3))