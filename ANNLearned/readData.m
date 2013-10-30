function [ImageMatrix] = readData(filename)
Val = strcat('/home/ankush/GNNTracker/gnn_tracker/gnn_tracker/GNNTracker/src/NNTracker/',filename);
display('Reading file ... ')
[s] = textread(Val,'%f');
ImageMatrix = [];
I = 1;
while I <= size(s,1)
    ImageMatrix = [ImageMatrix;s(I:I+399)'];
    I = I + 400;
end
    