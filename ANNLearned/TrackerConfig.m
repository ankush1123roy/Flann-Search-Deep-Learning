% Set Options
% Search Method
% Option: 1) Homography Based (LK) 2) Approximate Nearest Neighbor (ANN) 3) Graphical
%         Nearest Neighbor (GNN) 4) Particle Filter (PF)

Tracker.search = ANN;
if strcmp(Tracker.search,'ANN') == 1
    display('Approximate Nearest Neighbour')
    [PARAANN] = parametersANN();
elseif strcmp(Tracker.search,'PF') == 1
    display('Approximate Nearest Neighbour')
    Tracker.warp = 'H'; % Choose between Homography (H) and Translational (T)
    [PARAPF] = parametersPF();
else
    display('Homography Based')
end

% Appearance Model
% Option: 1) Pixels (P) 2) SIFT Features (SF)  3) Learned Filter Banks (FB)

Tracker.appearance = LF;
if strcmp(Tracker.appearance,'LF') == 1
    display('Learned Filters used as Appearance Model')
    set_params
elseif strcmp(Tracker.appearance, SF) == 1
    display('SIFT Features used as Appearance Model')
else
    display('Raw Pixel Values used in Appearance Model')
end


% Appearance Model
% Option: 1)Tranlational (T) 2)Affine (A)  3)Full Homography (H)

Tracker.motion = LF;
if strcmp(Tracker.motion,'T') == 1
    display('Translational Motion Model')
elseif strcmp(Tracker.appearance, SF) == 1
    display('Affine Motion Model')
else
    display('Full Homography Motion Model')
end
