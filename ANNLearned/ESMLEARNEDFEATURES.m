function [L,L2] = ESMLEARNEDFEATURES(I, D, D2,params, params2)
% Get the size of the initial Image
[M,N,K] = size(I);

% Set the upscale value to be same 
params.upsample = [M N];

% Spatial Pyramid
V{1} = pyramid(I, params);
L = cell(1, 1);
Lp = cell(1, 1);
Up = cell(1, 1);

% Extrac first layer of features
L{1} = extract_features(V{1}, D, params);
Lp{1} = preproc2(L{1}, params2);
Up{1} = extract_features(V{1}, D, params);
Up{1} = preproc2(Up{1}, params2);
L2 = cell(1, 1);

% Extract Second layer features
L2{1} = extract_features(Lp{1}, D2, params2);    

% Scale to initial Image size both First and Second Layer
L{1} = upsample(L{1}, params.numscales, params.upsample);
L2{1} = upsample(L2{1}, params.numscales, params.upsample);
end