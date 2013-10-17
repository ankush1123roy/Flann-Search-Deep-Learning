% Parameter Setting for Particle Filter
function [PARAPF] = parametersPF()


PARAPF.lambda   = [0.2,0.001,2]; % lambda 1, lambda 2 for a_T and a_I respectively, lambda 3 for the L2 norm PARAPFmeter
% set PARAPF.lambda = [a,a,0]; then this the old model
PARAPF.angle_threshold = 40;
PARAPF.Lip	    = 8;
PARAPF.Maxit	= 5;
PARAPF.nT		= 10; % Number of templates for the sparse representation
PARAPF.rel_std_afnv = [0.003,0.003,0.003,0.003,1,1]; % diviation of the 
                                                     % sampling of particle filter
PARAPF.n_sample	= 600;		% Number of particles
PARAPF.sz_T		= [12 15];  % Resize target Object for Comparision
PARAPF.init_pos	= init_pos; % Initial Window to track
