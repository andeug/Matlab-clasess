%matlab code for euclideian distance, city block , chessboard and
bw=zeros(200,200);%creating a matrix with 200 elements
%assignning elemnt in position 50,50 = 1
bw(150,100)=1;
bw(50,50)=1;
D1=bwdist(bw,'euclidean');
D2=bwdist(bw,'cityblock');
D3=bwdist(bw,'chessboard');
D4=bwdist(bw,'quasi-euclidean');
figure
subplot(2,2,1),subimage(mat2gray(D1)),title('Euclidean');
hold on
imcontour(D1)
subplot(2,2,2),subimage(mat2gray(D2)),title('city block');
hold on %do not delete the image you have created
imcontour(D2)
subplot(2,2,3),subimage(mat2gray(D3)),title('chess board');
hold on
imcontour(D3)
subplot(2,2,4),subimage(mat2gray(D4)),title('Quasi-euclidean');
hold on 
imcontour(D4)
