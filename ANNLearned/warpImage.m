function [Ip,Mask] = warpImage(tx,ty,y_min,y_max,x_min,x_max,Image)


% Template Size User Provided
y_min = y_min;
x_min = x_min;
width = ceil(x_max-x_min);
height = ceil(y_max - y_min);

% New Template Size  resized by 20 pixels on each side
 y_min = ceil(y_min - ty);
 x_min = ceil(x_min-tx);
 y_max = ceil(y_max + ty);
 x_max = ceil(x_max + tx);
 
% Templt = Image(y_min:y_max, x_min:x_max);
ImgSet = [];
Mask = [];

% Negative Mask



for i = 1:tx
    for j=1:ty
        trasImg1 = im2double(Image(y_min+j:y_max+j, x_min+i:x_max+i));
        Mask1 = imcomplement(im2bw(trasImg1,0.35));
%         Mask1 = ones(size(trasImg1,1),size(trasImg1,2));
        Mask = cat(3,Mask,Mask1);
        ImgSet = cat(3, ImgSet,trasImg1);
        trasImg2 = im2double(Image(y_min-j:y_max-j, x_min-i:x_max-i));
        ImgSet = cat(3, ImgSet,trasImg2);
        Mask2 = imcomplement(im2bw(trasImg2,0.35));
%         Mask2 = ones(size(trasImg2,1),size(trasImg2,2));
        Mask = cat(3,Mask,Mask2);
    end
end
Ip = ImgSet;
Negative = [];
% for i = 1:20
%     X = ceil(rand* size(Image,2));     Y = ceil(rand* size(Image,1));
%     if ((X+width+2*tx) < size(Image,2)) && ((Y+height+2*ty) < size(Image,1))
%         NegativeImage = im2double(Image(Y:Y+height+2*ty, X:X+width+2*tx));
%         Negative = cat(3,Negative,NegativeImage);
%         Mask = cat(3, Mask, zeros(height + 2*ty +1 ,width  + 2*tx +1));
%     end
% end
Ip = cat(3,Ip,Negative);
end

