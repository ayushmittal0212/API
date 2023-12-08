img=imread('cameraman.tif');
[n,m]=size(img);
img_2=img;
img_3=img;
s=3;
f=ones(s,s);
img_2=img;
c=(s+1)/2;

f1=[1,4,1;4,8,4;1,4,1]

for i=c:n-c+1
    for j=c:m-c+1
        sum=0;
        sum1=0;
        for k=1:s
            for l=1:s
                sum=sum+double(img(i-c+k,j-c+l)*f(k,l));
                sum1=sum1+double(img(i-c+k,j-c+l)*f1(k,l));
            end
        end
        img_2(i,j) = sum/25;
        img_3(i,j)=sum/16;
    end
end

subplot(1,3,1)
imshow(img);
title('Original')
subplot(1,3,2)
imshow(img_2);
title('After average filtering')
subplot(1,3,3)
imshow(img_3);
title('Weighted Average filtering')