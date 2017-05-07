%%%%%%%%%%%%% meanandsd.m file %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Purpose:  
%       To extract mean and stand deviation of a region in an image
%
% Input Variables:
%      B     Disk Image
%     
%                                              
% Returned Results:
%       u       mean of the selected region
%       sd      standard deviation of selected region
%                                        
%
% Processing Flow:
%      1.  Load 7x7 matrix asd which is a patch of the input image
%      2.  Find mean and SD using the functions
%
%  Restrictions/Notes:
%      None
%
%
%  The following functions are called:
%      mean2        finds mean of the entire matrix
%      std2         finds the standard deviation of the entire matrix
%
%
%  Author:      Mandar Parab, Amogh Adishesha and Lyuzhou Zhuang
%  Date:        03/26/2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ u,sd ] = meanandsd( B )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
bz= B(50:180,32:152);
sd = std2(bz);
u = mean2(bz);

end

