function [D, D2]  = learnedCodesfirstLayer(WarpedImages,labels,params,params2)
    annotations = labels;
    [M,N,K] = size(annotations);
    params.upsample = [M N];
    
    % Load volumes, annotations and pre-process
    disp('Loading and pre-processing data...')
    V = cell(1, 1);
    A = cell(1, 1);
    I = WarpedImages;
    A{1} = annotations;
    V{1} = pyramid(I, params);
    clear I;
         
    % Extract first module patches
    patches = extract_patches([V{1}], params);
    % Train first module dictionary
    D = dictionary(patches, params);
    
    
    % Compute first module feature maps on slices with annotations
    disp('Extracting first module feature maps...')
    L = cell(1, 1);
    Lp = cell(1, 1);
    Up = cell(1, 1);
   
    % Training Staze
    L{1} = extract_features(V{1}, D, params);
    Lp{1} = preproc2(L{1}, params2);
    Up{1} = extract_features(V{1}, D, params);
    Up{1} = preproc2(Up{1}, params2);
    
     % Extract second module patches
    patches = extract_patches([Lp{1};Up{1}], params2);
    clear Up

    % Train second module dictionary
    D2 = dictionary(patches, params2);
 end    
        
