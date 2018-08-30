%Contrast Stretching Transformation

%The general shape is that we have three piece-wise Linear Transformation
%define by the arrays r and s. r is the input Intensities and S is the
%corressponding output Intensities.
X= imread('C:\Users\Andrew\Documents\Matlab documents\1280pxStLouisArchMultExpEV1.51.JPG');
r=[0 50 200 L-1];

s=[0 100 150 L-1];

%We then cast the values

R=uint8(0:L-1);

S=R; %We will map without casting 

S2=R; %will be mapped without casting but with more parenthesis

S3=R; %will be mapped with casting

%We take intensities in {r(1)...r(2)]
ind=find(R>r(1)&R<r(2));

S(ind)=(R(ind)-r(1))*(s(2)-s(1))/(r(2)-r(1))+s(1);

S2(ind)=(R(ind)-r(1))*((s(2)-s(1))/(r(2)-r(1)))+s(1);

S3(ind)=uint8((double(R(ind))-r(1)*(s(2)-s(1))/(r(2)-r(1))+s(1)));

%intensities in [r(2)...r(3)]

ind=find(R>=r(2)&R<r(3));

S(ind)=(R(ind)-r(2))*(s(3)-s(2))/(r(3)-r(2))+s(2);

S2(ind)=(R(ind)-r(2))*((s(3)-s(2))/(r(3)-r(2)))+s(2);

S3(ind)=uint8((double(R(ind))-r(2)*(s(3)-s(2))/(r(3)-r(2))+s(2)));

%Intensities in [r(3)...r(4)]
ind=find(R>=r(3)&R<r(4));

S(ind)=(R(ind)-r(3))*(s(4)-s(3))/(r(4)-r(3))+s(3);

S2(ind)=(R(ind)-r(3))*((s(4)-s(3))/(r(4)-r(3)))+s(3);

S3(ind)=uint8((double(R(ind))-r(3)*(s(4)-s(3))/(r(4)-r(3))+s(3)));

figure
subplot(2,2,1)
plot(r,s,'LineWidth',2);title('Transformation','FontSize',14)
axis equal; axis([0 L-1 0 L-1])

subplot(2,2,2);
plot(R,S,'LineWidth',2);title('No Casting 1','FontSize',14);
axis equal; axis([0 L-1 0 L-1]);

subplot(2,2,3)
plot(R,S2,'LineWidth',2);title('No Casting 2','FontSize',14);
axis equal; axis([0 L-1 0 L-1]);

subplot(2,2,4)
plot(R,S3,'LineWidth',2);title('Casting','FontSize',14);
axis equal; axis([0 L-1 0 L-1]);

%Contrast Stretching with casting

Y=X;
%intensities in [r(1) -- r(2)]
ind=find(X>=r(1)& X<=r(2));
if ~isempty(ind),
    Y(ind)=uint8((double(X(ind))-r(1))*(s(2)-s(1)+s(1)));
end
figure
subplot(1,3,1);
plot(r,s,'LineWidth',2);title('Transformation','FontSize',14);
axis equal; axis([0 L-1 0 L-1]);

subplot(1,3,2);
imshow(X);title('Original Image','FontSize',14);

subplot(1,3,3);
imshow(Y);title('Transformed Image','FontSize',14);

%A linear Transformation can be used to change the intensity resolution i.e
%the number of bit required for each pixel

r=[0 L-1];
k=3;
s=[0 2^k-1]; %The transformed image will use k bits per pixel
Y=uint8((double(X)-r(1))*(s(2)-s(1))/(r(2)-r(1))+s(1));
figure
subplot(1,3,1);
plot(r,s,'LineWidth',2);title('Transformation','FontSize',14);
axis equal; axis([0 L-1 0 L-1]);

subplot(1,3,2)
imshow(X);title('Original','FontSize',14);

subplot(1,3,3)
imshow(Y);title('Transformed','FontSize',14);








