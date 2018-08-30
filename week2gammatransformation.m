%used for contrast correction
%gamma tpg 81
X= imread('C:\Users\Andrew\Documents\Matlab documents\tire.tif');
%pg 80

%Power
%Used for contrast correction(contrast enhancement)

gamma=0.3;
c=(L-1)/(L-1)^gamma; % It maps L-1 into L-1
Y=uint8(c*double(X).^gamma);

figure
subplot(1,2,1);
imshow(X);title('Original','FontSize',14)
subplot(1,2,2);
imshow(Y);title(['Gamma = ',num2str(gamma)],'FontSize',14);


gamma=30;
c=(L-1)/(L-1)^gamma % It maps L-1 into L-1
Y=uint8(c*double(X).^gamma);

figure
subplot(1,2,1);
imshow(X);title('Original','FontSize',14)
subplot(1,2,2);
imshow(Y);title(['Gamma = ',num2str(gamma)],'FontSize',14);


gamma=0.001;
c=(L-1)/(L-1)^gamma % It maps L-1 into L-1
Y=uint8(c*double(X).^gamma);

figure
subplot(1,2,1);
imshow(X);title('Original','FontSize',14)
subplot(1,2,2);
imshow(Y);title(['Gamma = ',num2str(gamma)],'FontSize',14);

;