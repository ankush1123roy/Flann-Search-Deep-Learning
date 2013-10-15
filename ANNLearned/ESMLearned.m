
% Learned Features based on OMP 
% Use Flann library as a search technique
% Usage: Build the KDTree datastructure
% [index, params, speedup] = flann_build_index(Database, PARA);
% Search Using: [indices, dists] = flann_search(index, testset, 3, PARA)
% Author: ankush2@ualberta.ca

% Name of the video to be tested in fname = ''


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


% [SampleImages,mask] = warpImage(5,5,y_min,y_max,x_min,x_max,firstImg); 
% for only X and Y translation based warping
% [SampleImages] = generateDictSamples(Template); for full homography
% based synthetic images

[SampleImages,H] = generateDictSamples(Templt);
% Get the learned Filters 
[D, D2]  = learnedCodesfirstLayer(SampleImages,params,params2);

% Building the reference set
Ref  = [];
for i = 2:size(SampleImages,3)
[L1,L2] = ESMLEARNEDFEATURES(SampleImages(:,:,i), D, D2,params, params2);    
[DotImage]  = getDotProduct(SampleImages(:,:,1), L1,L2);
Ref = [Ref; DotImage'];
end
Database = Ref';

% Set the parameters for building KDTree
PARA.algo = 'kdtree'
PARA.trees = 8
PARA.checks = 64

% Build the index 
[index, params, speedup] = flann_build_index(Database, PARA);

% TEST
