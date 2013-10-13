
% Whitening is kept on for natural images
% Script for setting the parameters
%--------------------------------------------------------------------------

% 1st layer params
params.layer = 1;
params.numscales = 4;
params.upsample = [128 128];

% Extracting patches
params.rfSize = [5 5 1]; 
params.npatches = 10000;

% Whitening and dictionary learning
params.nfeats = 40;
params.gamma = 0.1;
params.compress = 0; 

% Feature extraction
params.regSize = [params.upsample(1) + params.rfSize(1) - 1 params.upsample(2) + params.rfSize(2) - 1 1];
%params.lidimsize = [512 512];
params.alpha = 0;

%--------------------------------------------------------------------------

% 2nd layer parameters
params2.layer = 2;
params2.numscales = params.numscales;

% 2nd layer patches
params2.rfSize = [3 3 params.nfeats];
params2.npatches = 10000;

% 2nd layer whitening and dictionary learning
params2.nfeats = 4;
params2.gamma = 1e-6;
params2.compress = 0;

% 2nd layer feature extraction
params2.regSize = [params.upsample(1) + params2.rfSize(1) - 1 params.upsample(2) + params2.rfSize(2) - 1 params.nfeats];
params2.lidimsize = [];
params2.alpha = 0;

