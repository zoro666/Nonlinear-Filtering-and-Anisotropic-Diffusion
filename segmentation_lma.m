%%%%%%%%%%%%% segmentation_lma.m file %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Purpose:  
%       To perform segmentation based on thresholding 
% 
% Input Variables:
%      I       Input 2D image
%  threshold   Specify threshold for segmentation
%
% Returned Results:
%      Is     Segmented Image
%
% Processing Flow:
%      1.  For each pixel check whether the value is less than threshold
%      2.  If present then input the pixel in the segmented image else make 
%           the pixel bright(255) in segmented image.  
%
%  Restrictions/Notes:
%     Input image needs to be uint8 type (i.e. gray levels from 0-255)
%
%  The following functions are called:
%      None
%      
%  Author:      Mandar Parab, Amogh Adishesha and Lyuzhou Zhuang
%  Date:        03/26/2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ Is ] = segmentation_lma( I,threshold )
[r,c]=size(I);
Is=I;
for i=1:r
    for j=1:c
        if I(i,j)<=threshold
            Is(i,j)=I(i,j);
        else
            Is(i,j)=255;
        end
    end
end

end

