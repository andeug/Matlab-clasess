%intensity transformation:reproduce the basic intensity transformation
%create unassigned int images
L=256;
%read the image
%gray image
X= imread('C:\Users\Andrew\Documents\Matlab documents\tire.tif');
%coloured image
T=imread('C:\Users\Andrew\Documents\Matlab documents\teethwhitening_Woman_Smile_small.jpg');

%-ve transformation
Y = 255 - X;
%we obtain the complement
Y2=imcomplement(X);

%create subplot
subplot(1,3,1);

%plot figures
imshow(X);title('Original image','FontSize',14);

%activate subplot2
subplot(1,3,2)
imshow(Y);title('Negative image','FontSize',14);
%same as the negative image
subplot(1,3,3)
imshow(Y2);title('image complement','FontSize',14);

% for the colored image
S = 255 - T;
%complement
S2= imcomplement(T);
%visualize
figure;
% 3 rows 4 columns 1 is 
subplot(3,4,1);
imshow(T);title('Original','FontSize',14);
%sublpot 5 is active
subplot(3,4,5);
imshow(S);title('Negative','FontSize',14);
%subplot 9 is active
subplot(3,4,9);
imshow(S2);title('Image Complement','FontSize',14);

for i=1:3, subplot(3,4,1+i);
    imshow(T(:,:,i));
    subplot(3,4,5+i);
    imshow(S(:,:,i));
    subplot(3,4,9+i);
    imshow(S2(:,:,1));
end
    

