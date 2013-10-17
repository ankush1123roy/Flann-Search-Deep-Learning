function [InitialWarp] = normalizeTemplate(Img, x_min, x_max, y_min, y_max )

% Get the initial Template 

gxR = [1 1 15 15];
gyR = [1 12 12 1]; 

% First Image Co - Ordinates

FirstXR = [x_min x_max x_max x_min];
FirstYR = [y_max y_max y_min y_min];

% Initial Homography 

X1 = [gxR;gyR;ones(1,4)];
X2 = [FirstXR;FirstYR;ones(1,4)];
InitialWarp = homography2d(X2,X2);
% ih= transformImageQ1(Img, H, 0, 0, 'Homography Transformed Image', 0);
end
