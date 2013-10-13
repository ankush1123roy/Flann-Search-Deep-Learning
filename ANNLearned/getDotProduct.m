function [DotImage]  = getDotProduct(Templt, L1,L2)

% Create the full feature map for the two Layers
L1 = L1{1};
L1 = L1{1};
L2 = L2{1};
L2 = L2{1};
L = cat(3, L1, L2);
DotImage = zeros(size(L,3),1);

% Get the dot product
for i = 1:size(L,3)
    DotImage(i,1) = sum(sum(im2double(Templt) .* L(:,:,i)));
end
