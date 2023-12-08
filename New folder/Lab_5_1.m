mat_0=zeros(500,500);
mat_1=ones(500,500);
mat_half=mat_1*0.5;
b1=cat(3,mat_0,mat_0,mat_0);
b2=cat(3,mat_1,mat_1,mat_1);
b3=cat(3,mat_1,mat_0,mat_0);
b4=cat(3,mat_0,mat_1,mat_0);
b5=cat(3,mat_0,mat_0,mat_1);
b6=cat(3,mat_1,mat_half,mat_0);
b7=cat(3,mat_1,mat_0,mat_1);
b8=cat(3,mat_0,mat_1,mat_1);



subplot(4,2,1)
imshow(b1);
title('0 0 0')
subplot(4,2,2)
imshow(b2);
title('1 1 1')
subplot(4,2,3)
imshow(b3);
title('1 0 0')
subplot(4,2,4)
imshow(b4);
title('0 1 0')
subplot(4,2,5)
imshow(b5);
title('0 0 1')
subplot(4,2,6)
imshow(b6);
title('1 .5 0')
subplot(4,2,7)
imshow(b7);
title('1 0 1')
subplot(4,2,8)
imshow(b8);
title('0 1 1')





