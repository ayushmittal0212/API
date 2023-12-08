img=imread('cameraman.tif');
[n,m]=size(img);
img=double(img);
s=3;
f=[0,1,0;1,-4,1;0,1,0];
f1=[1,1,1;1,-8,1;1,1,1];
img_2=img;
img_3=img;
c=(s+1)/2;



for i=c:n-c+1
    for j=c:m-c+1
        sum=0;
        sum1=0;
        for k=1:s
            for l=1:s
                sum = sum+img(i-c+k,j-c+l)*f(k,l);
                sum1 = sum1+img(i-c+k,j-c+l)*f1(k,l);
            end
        end
        img_2(i,j) = sum;
        img_3(i,j) = sum1;
    end
end

subplot(1,3,1)
imshow(uint8(img));
title('Original')
subplot(1,3,2)
imshow(uint8(img_2));
title('After L-4 filtering')
subplot(1,3,3)
imshow(uint8(img_3));
title('After L-8 filtering')