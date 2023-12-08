img=imread('cameraman.tif');
[m,n]=size(img);
for i=1:m
    for j=1:n
        img1(i,j)=img(i,n-j+1);
    end
end
for i=1:m
    for j=1:n
        img2(i,j)=img(m-i+1,j);
    end
end
img3=flip(img,1)
img4=flip(img,2)
subplot(2,3,1)
imshow(img)
title('Original')
subplot(2,3,2)
imshow(img1)
title('Horizontal Flip')
subplot(2,3,3)
imshow(img2)
title('Vertical Flip')
subplot(2,3,4)
imshow(img3)
title('Vertical Flip using Func')
subplot(2,3,5)
imshow(img4)
title('Horizontal Flip using Func')