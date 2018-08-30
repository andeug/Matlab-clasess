Y= imread('C:\Users\Andrew\Documents\Matlab documents\depth_im1.png');
figure
mesh(double(Y))
axis equal
figure
surf(double(Y))
axis equal
figure
surfl(double(Y))
axis equal
colormap pink
shading interp