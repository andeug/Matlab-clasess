%filename='C:\Users\Andrew\Downloads\depth_map (1).mat';
imagename='depth_map.png';%this is the file where the image will be saved
%load(filename);
load('depth_map.mat')%the depth map is now stored in the matrix depth_ma.
%the depth map contains the pounts corresponding tothe matrix element.
%if an element of the depth map does not contsin a point such an element %will be assigned not a value.
%copmute the extremes of the rep values.
min1= min (min (depth_map));%can also be min (depth_map(:))
max1 = max (max (depth_map));%can also be min (depth_map(:))
%the depth map can be transformed in to an image where if nan the pixel is
%assign 0 and the min depth will be mapped to 1q; the max  depth is mapped to 255 and 
%the intermediate depth values will be mapped btn 1-255.therefore;
%S=T(r)={0 NaN
%{1+254*(r-min)(max-min)   min<=r<=max
%locate the matrix that willrep the image.
dm=zeros (size(depth_map));%take the depthmap and determin size then create matrix of that 
%find the element -Nan and map them to zero.
ind=find(isnan(depth_map));
dm(ind)=1+(depth_map(ind)-min1)/(max1-min1);
%scale the values between 0-1(dm is a matrix of double.alternaticely the
%matrix can be converted into unassigned int by saying 
dm=uint8(dm);
dm=dm/255;
%display the image
imshow(dm)
colorbar;
imwrite (dm,imagename);
%imwrite(dm, 'depth_map.png');