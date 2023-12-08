img=imread('color.jpg');
[n,m,~]=size(img);
for k=1:3
    for i=1:n
        for j=1:m
            img1(i,j,k)=255-img(i,j,k); 
        end
    end
end
subplot(1,2,1)
imshow(img)
title('Original')
subplot(1,2,2)
imshow(img1)
title('Negative Transformation')
