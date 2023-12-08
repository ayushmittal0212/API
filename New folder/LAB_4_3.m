img=imread('cameraman.tif');
[n,m]=size(img);
for i=1:256
    t(i,1)=i-1;
    t(i,2)=0;
end
for i=1:n
    for j=1:m
        pix=img(i,j)+1;
        t(pix,2)=t(pix,2)+1;
    end
end
for i=1:256
    t(i,3)=t(i,2)/(256*256);
end
t(1,4)=t(1,3)
for i=2:256
    t(i,4)=t(i-1,4)+t(i,3);
end
for i=1:256
    t(i,5)=t(i,4)*255;
end
for i=1:256
    t(i,6)=round(t(i,5));
end

for i=1:256
    s(i,1)=i-1;
    s(i,2)=0;
end
for i=1:256
    pix=t(i,6)+1;
    s(pix,2)=s(pix,2)+t(i,2);
end


    
img_2=img;
for i=1:n
    for j=1:m
        img_2(i,j)=t(img(i,j)+1,6);
    end
end


img_3=histeq(img);


for i=1:256
    p(i,1)=i-1;
    p(i,2)=0;
end
for i=1:n
    for j=1:m
        pix=img_3(i,j)+1;
        p(pix,2)=p(pix,2)+1;
    end
end

subplot(3,3,1)
imshow(img);
title('Original')
subplot(3,3,2)
imshow(img_2);
title('Manual Transform')






subplot(3,3,3)
imshow(img_3)
title('Using histeq func')
subplot(3,3,4)
bar(t(:,1),t(:,2));
title('Histogram');
subplot(3,3,5)
bar(s(:,1),s(:,2));
title('Histogram');
subplot(3,3,6)
bar(p(:,1),p(:,2));
title('Histogram');
subplot(3,3,7)
imhist(img);
title('With imhist func')
subplot(3,3,8)
imhist(img_2);
title('with imhist func')
subplot(3,3,9);
imhist(img_3);
title('With imhist func')
