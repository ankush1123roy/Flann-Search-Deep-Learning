% Homography based warping function that has +- 1% change in the initial
% estimate. All the 8 parameters are varied within the specified limits to
% generate the set of images
% Author: ankush2@ualberta.ca

function [SampleImages,H] = generateDictSamples(Template)
H = [-0.3846 -0.7641 14 ;0.156 -0.5908 -6;-0.0002 -0.0001 -0.3929];
SampleImages = [];
H = [];
I = -10;
while I < 10
    
    H1 = [H(1,1) H(1,2) H(1,3) + I;H(2,1) H(2,2) H(2,3);H(3,1) H(3,2) H(3,3)];
    H2 = [H(1,1) H(1,2) H(1,3);H(2,1) H(2,2) H(2,3) + I;H(3,1) H(3,2) H(3,3)];
    H3 = [H(1,1) H(1,2) H(1,3);H(2,1) + I/10 H(2,2) H(2,3);H(3,1) H(3,2) H(3,3)];
    H4 = [H(1,1) H(1,2) H(1,3);H(2,1) H(2,2) H(2,3);H(3,1) + I/1000 H(3,2) H(3,3)];
    H5 = [H(1,1) H(1,2) H(1,3);H(2,1) H(2,2) H(2,3);H(3,1) + I/1000 H(3,2) H(3,3)];
    
    new_img1 = warpImage(Template,H1);
    H = cat(3,H,H1);
    SampleImages = cat(3, SampleImages, new_img1);
    new_img2 = warpImage(Template,H2);
    H = cat(3,H,H2);
    SampleImages = cat(3, SampleImages, new_img2);
    new_img3 = warpImage(Template,H3);
    H = cat(3,H,H3);
    SampleImages = cat(3, SampleImages, new_img3);
    new_img4 = warpImage(Template,H4);
    H = cat(3,H,H4);    
    SampleImages = cat(3, SampleImages, new_img4);
    new_img5 = warpImage(Template,H5);
    H = cat(3,H,H5);    
    SampleImages = cat(3,SampleImages,new_img5);
    I = I + 1;
end
end

function new_img = warpImage(img, H)

    % Set up the vectors for meshgrid
	[rows cols] = size(img);
	x = (1:cols)';
	y = (1:rows)';
	
	% MESHGRID provides [XI,YI] for use in 3-D plots
	[XI,YI] = meshgrid(x,y);
	XI_size = length(XI(:));
	
	% Transform the coordinates
	x_prime = H * [XI(:) YI(:) ones(XI_size,1)]';
	
	% Divide out the z' or \lambda variable. Change to P^2 plane by
	% changing from 3-D Homogenous Co - Ordinates to 2D Perspective
	X = x_prime(1,:) ./ x_prime(3,:);
	Y = x_prime(2,:) ./ x_prime(3,:);
    XII = XI;
    YII = YI;
	
	% Get the new image from griddata
	new_img_vector = griddata(X,Y,double(img(:)),XII(:),YII(:));
	
	% Unstacks the new vector into a matrix
	new_img = reshape(new_img_vector, rows, cols);
	new_img(isnan(new_img)) = 0 ;
end