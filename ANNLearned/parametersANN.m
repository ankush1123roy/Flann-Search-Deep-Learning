% Parameter Setting for Particle Filter
function [PARAANN] = parametersANN()
PARAANN.algo = 'kdtree'
PARAANN.trees = 8
PARAANN.checks = 64
PARAANNKNeighbours = 5
end
