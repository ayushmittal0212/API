img=imread('pout.tif');
subplot(4,2,1)
imshow(img)
title('Image')
subplot(4,2,2)
imhist(img)
title('Histogram')
img_2=imadjust(img);
subplot(4,2,3)
imshow(img_2)
title('Contrast Stretching')
subplot(4,2,4)
imhist(img_2)
title('Histogram after Contrast Stretching')
img_3=histeq(img);
subplot(4,2,5)
imshow(img_3)
title('Equalisation')
subplot(4,2,6)
imhist(img_3)
title('Histogram after Equalisation')
[n,m]=size(img);
imgd=double(img);
img_4=img;
for i=1:n
    for j=1:m
        img_4(i,j)=((imgd(i,j)-74)*250)/150;
    end
end
img_4=uint8(img_4);
subplot(4,2,7)
imshow(img_4)
title('Manual Contrast Streatching')
subplot(4,2,8)
imhist(img_4)
title('Histogram for left image')





