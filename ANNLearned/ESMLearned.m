fname = 'sylv'
[img_seq,frame_num] = load_seq(fname);

% Get initial image
imshow(img_seq(:,:,1));
rect = getrect;
x_min = rect(1);
y_min = rect(2);
width = rect(3);
height = rect(4);
x_max = x_min + width-1;
y_max = y_min + height-1;
firstImg = img_seq(:,:,1);
close all 
Templt = firstImg(y_min:y_max, x_min:x_max);
% Generate a set of Images to get the learned filters
[WarpedImages,mask] = warpImage(5,5,y_min,y_max,x_min,x_max,firstImg);

% Get the learned Filters 
[D, D2]  = learnedCodesfirstLayer(WarpedImages,mask,params,params2);

% Building the reference set
Ref  = [];

for i = 2:size(WarpedImages,3)
[L1,L2] = ESMLEARNEDFEATURES(WarpedImages(:,:,i), D, D2,params, params2);    
[DotImage]  = getDotProduct(WarpedImages(:,:,1), L1,L2);
Ref = [Ref; DotImage'];
end

% TEST
