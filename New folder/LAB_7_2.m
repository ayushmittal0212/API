img=imread('cameraman.tif');
[n,m]=size(img);
img_2=img;
img_3=img;
img_4=img;
c=2;
for i=c:n-c+1
    for j=c:m-c+1
        img_2(i,j)=min(min(img(i-1:i+1,j-1:j+1)));
        img_3(i,j)=max(max(img(i-1:i+1,j-1:j+1)));
        img_4(i,j)=median(median(img(i-1:i+1,j-1:j+1)));
    end
end

subplot(2,2,1)
imshow(img);
title('Original')
subplot(2,2,2)
imshow(img_2);
title('After min filtering')
subplot(2,2,3)
imshow(img_3);
title('After max filtering')
subplot(2,2,4)
imshow(img_4);
title('After median filtering')