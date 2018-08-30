%download the image
%load and convert them into gray level representation
%display the images and observe the appearance
%combine them into a single gray level image using a method of your own
%invention
%save image on a file
filenames={'C:\Users\Andrew\Documents\Matlab documents\1280pxStLouisArchMultExpEV4.72.JPG','C:\Users\Andrew\Documents\Matlab documents\1280pxStLouisArchMultExpEV4.09.JPG','C:\Users\Andrew\Documents\Matlab documents\1280pxStLouisArchMultExpEV1.82.JPG','C:\Users\Andrew\Documents\Matlab documents\1280pxStLouisArchMultExpEV1.51.JPG'};
imagename = ('hrd_image.png');
Y=[];
for i=1:length(filenames)
    %load 1 of the images
    X=imread(filenames{i});
    %convert to gray level
    X2=rgb2gray(X);
    %store in multidimensional matrix(in double)
    Y(:,:,1) = X2;
end;
%visualize the image
for i=1:size (Y,3)
    figure;
    imshow(uint8(Y(:,:,1)));
end
%composition of average
Z=mean(Y,3);

figure;
imshow(uint8(Z));
%save the image on a file
imwrite(uint8(Z),imagename);
