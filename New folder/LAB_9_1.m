mat=[1,1,1,0,1,0,1,1,1,0;1,1,0,1,1,0,0,0,1,1;1,1,0,1,1,0,1,0,0,1;1,0,1,0,1,0,0,1,0,0;1,1,0,0,1,0,1,0,0,0;1,1,0,1,1,0,0,1,1,0;1,1,0,0,1,0,1,0,1,0;0,1,1,0,0,1,1,1,1,0;1,1,1,0,1,0,0,0,0,1;1,1,0,0,1,0,1,1,0,1];
mat_str=[0,1,0;1,1,1;0,1,0];
subplot
dilate=imdilate(mat,mat_str);
erose=imerode(mat,mat_str);
in_bndry=mat-erose;
ex_bndry=dilate-mat;
close=imerode(dilate,mat_str);
open=imdilate(erose,mat_str);
subplot(2,4,1);
imshow(mat);
title('Original');
subplot(2,4,2);
imshow(dilate);
title('After Dilation');
subplot(2,4,3);
imshow(erose);
title('After Erosion')
subplot(2,4,4);
imshow(in_bndry);
title('Internal Boundary');
subplot(2,4,5);
imshow(ex_bndry);
title('External Boundary');
subplot(2,4,6);
imshow(close);
title('Erosion after Dilation: Closing');
subplot(2,4,7);
imshow(open);
title('Dilation after Erosion: Opening');