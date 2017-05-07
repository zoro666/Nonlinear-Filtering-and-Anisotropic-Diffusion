%%%%%%%%%%%%% CountNumInMat.m file %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Purpose:  
%       To count particular gray levels in image for histogram 
% 
% Input Variables:
%      I       Input 2D image
%
% Returned Results:
%      numarray     array consisting of number of pixels as per gray levels
%
% Processing Flow:
%      1.  Define iteration as 0-255(gray levels).
%      2.  Find number of pixels of intended gray levels in an iteration.  
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

function [ numarray ] = CountNumInMat( I )
numarray=[];
for k=0:255
    
   c=find(I==k);
   numarray(k+1)=length(c);
   
end

end

