%logarithimic transformation S=c log (1+v), C = (l-1/log l)
%note the casting since log doesn't work with uint8
%rep the equation
L = 256;
C = (L-1)/log(L);
X= imread('C:\Users\Andrew\Documents\Matlab documents\tire.tif');
Y = uint8(C*log(double(X)+1));
figure;
%display of original
subplot(1,2,1);
imshow(X);title('Original', 'FontSize',14);
%logarithimic transformation
subplot(1,2,2);
imshow(Y);title('Logarithmic','FontSize',14);